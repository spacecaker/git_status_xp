/*
 * Copyright (C) 2012 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.settings.users;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.UserInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.preference.CheckBoxPreference;
import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.PreferenceGroup;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;

import com.android.settings.DialogCreatable;
import com.android.settings.R;
import com.android.settings.SettingsPreferenceFragment;

import java.util.HashMap;
import java.util.List;

public class UserDetailsSettings extends SettingsPreferenceFragment
        implements Preference.OnPreferenceChangeListener, DialogCreatable {

    private static final String TAG = "UserDetailsSettings";

    private static final int MENU_REMOVE_USER = Menu.FIRST;
    private static final int DIALOG_CONFIRM_REMOVE = 1;

    private static final String KEY_USER_NAME = "user_name";
    private static final String KEY_INSTALLED_APPS = "market_apps_category";
    private static final String KEY_SYSTEM_APPS = "system_apps_category";
    public static final String EXTRA_USER_ID = "user_id";

    private static final String[] SYSTEM_APPS = {
            "com.google.android.browser",
            "com.google.android.gm",
            "com.google.android.youtube"
    };

    static class AppState {
        boolean dirty;
        boolean enabled;

        AppState(boolean enabled) {
            this.enabled = enabled;
        }
    }

    private HashMap<String, AppState> mAppStates = new HashMap<String, AppState>();
    private PreferenceGroup mSystemAppGroup;
    private PreferenceGroup mInstalledAppGroup;
    private EditTextPreference mNamePref;

    private IPackageManager mIPm;
    private PackageManager mPm;
    private int mUserId;
    private boolean mNewUser;

    @Override
    public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        addPreferencesFromResource(R.xml.user_details);
        Bundle args = getArguments();
        mNewUser = args == null || args.getInt(EXTRA_USER_ID, -1) == -1;
        mUserId = mNewUser ? -1 : args.getInt(EXTRA_USER_ID, -1);
        mIPm = IPackageManager.Stub.asInterface(ServiceManager.getService("package"));

        if (mUserId == -1) {
            try {
                mUserId = mIPm.createUser(getString(R.string.user_new_user_name), 0).id;
            } catch (RemoteException re) {
            }
        }
        mSystemAppGroup = (PreferenceGroup) findPreference(KEY_SYSTEM_APPS);
        mInstalledAppGroup = (PreferenceGroup) findPreference(KEY_INSTALLED_APPS);
        mNamePref = (EditTextPreference) findPreference(KEY_USER_NAME);
        mNamePref.setOnPreferenceChangeListener(this);

        setHasOptionsMenu(true);
    }

    @Override
    public void onResume() {
        super.onResume();
        mPm = getActivity().getPackageManager();
        if (mUserId > 0) {
            initExistingUser();
        } else {
            initNewUser();
        }
        refreshApps();
    }

    @Override
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        MenuItem addAccountItem = menu.add(0, MENU_REMOVE_USER, 0,
                mNewUser ? R.string.user_discard_user_menu : R.string.user_remove_user_menu);
        addAccountItem.setShowAsAction(MenuItem.SHOW_AS_ACTION_IF_ROOM
                | MenuItem.SHOW_AS_ACTION_WITH_TEXT);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        final int itemId = item.getItemId();
        if (itemId == MENU_REMOVE_USER) {
            onRemoveUserClicked();
            return true;
        } else {
            return super.onOptionsItemSelected(item);
        }
    }

    private void initExistingUser() {
        List<UserInfo> users = mPm.getUsers();
        UserInfo foundUser = null;
        for (UserInfo user : users) {
            if (user.id == mUserId) {
                foundUser = user;
                break;
            }
        }
        if (foundUser != null) {
            mNamePref.setSummary(foundUser.name);
            mNamePref.setText(foundUser.name);
        }
    }

    private void initNewUser() {
        // TODO: Check if there's already a "New user" and localize
        mNamePref.setText(getString(R.string.user_new_user_name));
        mNamePref.setSummary(getString(R.string.user_new_user_name));
    }

    private void onRemoveUserClicked() {
        if (mNewUser) {
            removeUserNow();
        } else {
            showDialog(DIALOG_CONFIRM_REMOVE);
        }
    }

    private void removeUserNow() {
        try {
            mIPm.removeUser(mUserId);
        } catch (RemoteException re) {
            // Couldn't remove user. Shouldn't happen
            Log.e(TAG, "Couldn't remove user " + mUserId + "\n" + re);
        }
        finish();
    }

    private void insertAppInfo(PreferenceGroup group, HashMap<String, AppState> appStateMap,
            PackageInfo info, boolean defaultState) {
        if (info != null) {
            String pkgName = info.packageName;
            String name = info.applicationInfo.loadLabel(mPm).toString();
            Drawable icon = info.applicationInfo.loadIcon(mPm);
            AppState appState = appStateMap.get(info.packageName);
            boolean enabled = appState == null ? defaultState : appState.enabled;
            CheckBoxPreference appPref = new CheckBoxPreference(getActivity());
            appPref.setTitle(name != null ? name : pkgName);
            appPref.setIcon(icon);
            appPref.setChecked(enabled);
            appPref.setKey(pkgName);
            appPref.setPersistent(false);
            appPref.setOnPreferenceChangeListener(this);
            group.addPreference(appPref);
        }
    }

    private void refreshApps() {
        mSystemAppGroup.removeAll();
        mInstalledAppGroup.removeAll();

        boolean firstTime = mAppStates.isEmpty();

        final Intent mainIntent = new Intent(Intent.ACTION_MAIN, null);
        mainIntent.addCategory(Intent.CATEGORY_LAUNCHER);
        List<ResolveInfo> apps = mPm.queryIntentActivities(mainIntent, 0);

        for (ResolveInfo resolveInfo : apps) {
            PackageInfo info;
            try {
                info = mIPm.getPackageInfo(resolveInfo.activityInfo.packageName,
                        0 /* flags */,
                    mUserId < 0 ? 0 : mUserId);
            } catch (RemoteException re) {
                continue;
            }
            if (firstTime) {
                mAppStates.put(resolveInfo.activityInfo.packageName,
                        new AppState(info.applicationInfo.enabled));
            }
            if ((info.applicationInfo.flags & ApplicationInfo.FLAG_SYSTEM) != 0) {
                if (mSystemAppGroup.findPreference(info.packageName) != null) {
                    continue;
                }
                insertAppInfo(mSystemAppGroup, mAppStates, info, false);
            } else {
                if (mInstalledAppGroup.findPreference(info.packageName) != null) {
                    continue;
                }
                insertAppInfo(mInstalledAppGroup, mAppStates, info, false);
            }
        }
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference instanceof CheckBoxPreference) {
            String packageName = preference.getKey();
            int newState = ((Boolean) newValue) ? PackageManager.COMPONENT_ENABLED_STATE_ENABLED
                    : PackageManager.COMPONENT_ENABLED_STATE_DISABLED_USER;
            try {
                mIPm.setApplicationEnabledSetting(packageName, newState, 0, mUserId);
            } catch (RemoteException re) {
                Log.e(TAG, "Unable to change enabled state of package " + packageName
                        + " for user " + mUserId);
            }
        } else if (preference == mNamePref) {
            String name = (String) newValue;
            if (TextUtils.isEmpty(name)) {
                return false;
            }
            try {
                mIPm.updateUserName(mUserId, (String) newValue);
                mNamePref.setSummary((String) newValue);
            } catch (RemoteException re) {
                return false;
            }
        }
        return true;
    }

    @Override
    public Dialog onCreateDialog(int dialogId) {
        switch (dialogId) {
            case DIALOG_CONFIRM_REMOVE:
                return new AlertDialog.Builder(getActivity())
                    .setTitle(R.string.user_confirm_remove_title)
                    .setMessage(R.string.user_confirm_remove_message)
                    .setPositiveButton(android.R.string.ok,
                        new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialog, int which) {
                                removeUserNow();
                            }
                    })
                    .setNegativeButton(android.R.string.cancel, null)
                    .create();
            default:
                return null;
        }
    }
}
