package com.android.settings.cyanogenmod;

import java.net.URISyntaxException;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;
import android.preference.Preference.OnPreferenceChangeListener;
import android.provider.Settings;
import android.util.Log;
import android.view.Gravity;
import android.widget.Toast;

import com.android.settings.R;
import com.android.settings.cyanogenmod.SettingsFragment;
import com.android.settings.cyanogenmod.LockscreenInterface;
import com.android.settings.cyanogenmod.GalleryPickerPreference;

public class LockscreenStyle extends SettingsFragment implements
        OnPreferenceChangeListener {
    //, ShortcutPickHelper.OnPickListener
    private static final String TAG = "LockscreenStyle";

    private static final String LOCKSCREEN_STYLE_PREF = "pref_lockscreen_picker";

    private static final int LOCK_STYLE_JB = 0;
    private static final int LOCK_STYLE_ICS = 1;
    private static final int LOCK_STYLE_HC = 2;
    private static final int LOCK_STYLE_GB   = 3;
    private static final int LOCK_STYLE_ECLAIR = 4;

    private static final int LOCK_STYLE_DEFAULT = LOCK_STYLE_JB;

    private GalleryPickerPreference mLockscreenStyle;
    private ContentResolver mCr;
    private PreferenceScreen mPrefSet;
    
    private int mCurrLockscreen;
    
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        addPreferencesFromResource(R.xml.lockscreen_style);
        mPrefSet = getPreferenceScreen();
        mCr = getContentResolver();

        mCurrLockscreen = Settings.System.getInt(mCr,
                Settings.System.LOCKSCREEN_STYLE , LOCK_STYLE_DEFAULT);

        String position = Settings.System.getString(mCr,
                Settings.System.LOCKSCREEN_STYLE);
        mLockscreenStyle = (GalleryPickerPreference) mPrefSet.findPreference(LOCKSCREEN_STYLE_PREF);
        mLockscreenStyle.setCurrPos(position == null ? 0 : Integer.valueOf(position));
        mLockscreenStyle.setSharedPrefs(mPrefSet.getSharedPreferences());
        mLockscreenStyle.setOnPreferenceChangeListener(this);
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference == mLockscreenStyle) {
            int value = Integer.parseInt((String) newValue);
            switch (value) {
                case LOCK_STYLE_ECLAIR:
                    if (!getResources().getBoolean(R.bool.config_allow_eclair_lock)) {
                        return true;
                    }
                case LOCK_STYLE_HC:
                case LOCK_STYLE_GB:
                default:
            }
            Settings.System.putInt(mCr, Settings.System.LOCKSCREEN_STYLE, value);
            mCurrLockscreen = value;
            return true;
        }
        return false;
    }
}
