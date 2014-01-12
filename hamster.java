package com.android.systemui.statusbar.powerwidget;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.provider.ContactsContract;
import android.provider.ContactsContract.Contacts;
import android.provider.ContactsContract.Profile;
import android.provider.Settings;
import android.provider.Settings.System;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ScrollView;
import android.widget.TableLayout;
import android.widget.TableLayout.LayoutParams;
import android.widget.TableRow;
import android.widget.TableRow.LayoutParams;
import com.android.systemui.statusbar.powerwidget.PowerButton;
import java.io.IOException;
import java.lang.Exception;
import java.lang.Object;
import java.lang.String;
import java.lang.Throwable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class PowerWidget
extends FrameLayout {
    private static final String BUTTONS_DEFAULT = "toggleSystemSettings|toggleRecentApps|toggleBatteryInfo|toggleWifi|toggleWifiAp|toggleBluetooth|toggleGPS|toggleSound|toggleFlashlight|toggleBrightness|toggleScreenTimeout|toggleStayAwakePlugged|toggleSync|toggleLockScreen|toggleAutoRotate|toggleAirplane|toggleMobileData|toggleNetworkMode|toggleUSBConnectionMode|toggleUSBDebugging|toggleReboot|toggleShutdown";
    public static final String BUTTON_DELIMITER = "|";
    private static final String TAG = "PowerWidget";
    private static final FrameLayout.LayoutParams WIDGET_LAYOUT_PARAMS = new FrameLayout.LayoutParams(-1, -2);
    private WidgetBroadcastReceiver mBroadcastReceiver;
    private int mButtonsPerRow;
    private boolean mButtonsWithLabel;
    private Context mContext;
    private ScrollView mGridScrollView;
    private Handler mHandler;
    private LayoutInflater mInflater;
    private MeProfileContactObserver mMeProfileContactObserver;
    private List<WidgetSettingsObserver> mObservers;
    private TableLayout mTableLayout;
    private TableRow mTableRow1;
    private TableRow mTableRow10;
    private TableRow mTableRow11;
    private TableRow mTableRow12;
    private TableRow mTableRow13;
    private TableRow mTableRow14;
    private TableRow mTableRow15;
    private TableRow mTableRow2;
    private TableRow mTableRow3;
    private TableRow mTableRow4;
    private TableRow mTableRow5;
    private TableRow mTableRow6;
    private TableRow mTableRow7;
    private TableRow mTableRow8;
    private TableRow mTableRow9;

    public PowerWidget(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMeProfileContactObserver = new MeProfileContactObserver();
        this.mBroadcastReceiver = null;
        this.mHandler = new Handler();
        this.mButtonsWithLabel = true;
        this.mButtonsPerRow = 3;
        this.mObservers = new LinkedList();
        this.mContext = context;
        this.mInflater = (LayoutInflater)(context.getSystemService("layout_inflater"));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void addViewToTableRow(View view, int n) {
        TableRow.LayoutParams layoutParams = new TableRow.LayoutParams(this.mContext.getResources().getDimensionPixelSize(R.dimen.quickpanel_button_width), this.mContext.getResources().getDimensionPixelSize(R.dimen.quickpanel_button_height));
        switch (this.mButtonsPerRow) {
            default: {
                return;
            }
            case 2: {
                if ((n >= 1) && (n <= 2)) {
                    this.mTableRow1.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 3) && (n <= 4)) {
                    this.mTableRow2.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 5) && (n <= 6)) {
                    this.mTableRow3.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 7) && (n <= 8)) {
                    this.mTableRow4.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 9) && (n <= 10)) {
                    this.mTableRow5.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 11) && (n <= 12)) {
                    this.mTableRow6.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 13) && (n <= 14)) {
                    this.mTableRow7.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 15) && (n <= 16)) {
                    this.mTableRow8.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 17) && (n <= 18)) {
                    this.mTableRow9.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 19) && (n <= 20)) {
                    this.mTableRow10.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 21) && (n <= 22)) {
                    this.mTableRow11.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 23) && (n <= 24)) {
                    this.mTableRow12.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 25) && (n <= 26)) {
                    this.mTableRow13.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 27) && (n <= 28)) {
                    this.mTableRow14.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if (n < 29) return;
                if (n > 30) return;
                this.mTableRow15.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                return;
            }
            case 3: {
                if ((n >= 1) && (n <= 3)) {
                    this.mTableRow1.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 4) && (n <= 6)) {
                    this.mTableRow2.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 7) && (n <= 9)) {
                    this.mTableRow3.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 10) && (n <= 12)) {
                    this.mTableRow4.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 13) && (n <= 15)) {
                    this.mTableRow5.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 16) && (n <= 18)) {
                    this.mTableRow6.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 19) && (n <= 21)) {
                    this.mTableRow7.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 22) && (n <= 24)) {
                    this.mTableRow8.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 25) && (n <= 27)) {
                    this.mTableRow9.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if (n < 28) return;
                if (n > 30) return;
                this.mTableRow10.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                return;
            }
            case 4: {
                if ((n >= 1) && (n <= 4)) {
                    this.mTableRow1.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 5) && (n <= 8)) {
                    this.mTableRow2.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 9) && (n <= 12)) {
                    this.mTableRow3.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 13) && (n <= 16)) {
                    this.mTableRow4.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 17) && (n <= 20)) {
                    this.mTableRow5.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 21) && (n <= 24)) {
                    this.mTableRow6.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if ((n >= 25) && (n <= 28)) {
                    this.mTableRow7.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                    return;
                }
                if (n < 29) return;
                if (n > 32) return;
                this.mTableRow8.addView(view, (ViewGroup.LayoutParams)(layoutParams));
                return;
            }
            case 5: 
        }
        if ((n >= 1) && (n <= 5)) {
            this.mTableRow1.addView(view, (ViewGroup.LayoutParams)(layoutParams));
            return;
        }
        if ((n >= 6) && (n <= 10)) {
            this.mTableRow2.addView(view, (ViewGroup.LayoutParams)(layoutParams));
            return;
        }
        if ((n >= 11) && (n <= 15)) {
            this.mTableRow3.addView(view, (ViewGroup.LayoutParams)(layoutParams));
            return;
        }
        if ((n >= 16) && (n <= 20)) {
            this.mTableRow4.addView(view, (ViewGroup.LayoutParams)(layoutParams));
            return;
        }
        if ((n >= 21) && (n <= 25)) {
            this.mTableRow5.addView(view, (ViewGroup.LayoutParams)(layoutParams));
            return;
        }
        if (n < 26) return;
        if (n > 30) return;
        this.mTableRow6.addView(view, (ViewGroup.LayoutParams)(layoutParams));
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private Uri findMeProfileContactUri() throws IOException {
        try {
            var2_1 = this.mContext.getContentResolver().query(ContactsContract.Profile.CONTENT_URI, new String[]{"_id"}, (String)(null), (String[])(null), (String)(null));
            if (var2_1 == null) return null;
        }
        catch (Exception var1_6) {
            throw new IOException(var1_6.toString());
        }
        var4_2 = var2_1.moveToFirst();
        var5_3 = null;
        ** if (!(var4_2)) goto lbl10
lbl8: // 1 sources:
        var5_3 = (var6_4 = Uri.withAppendedPath((Uri)(ContactsContract.Contacts.CONTENT_URI), (String)(var2_1.getString(var2_1.getColumnIndex("_id")))));
lbl10: // 3 sources:
        var2_1.close();
        return var5_3;
        catch (Throwable var3_5) {
            var2_1.close();
            throw var3_5;
        }
    }

    private View inflateButtonView(String string) {
        if (string.equals((Object)("toggleMeProfile"))) {
            return this.mInflater.inflate(R.layout.quickpanel_me_profile_button, (ViewGroup)(null), false);
        }
        if (!(this.mButtonsWithLabel)) return this.mInflater.inflate(R.layout.quickpanel_button_no_label, (ViewGroup)(null), false);
        return this.mInflater.inflate(R.layout.quickpanel_button, (ViewGroup)(null), false);
    }

    private void observeAllObserver() {
        Iterator iterator = this.mObservers.iterator();
        while (iterator.hasNext()) {
            (WidgetSettingsObserver)(iterator.next()).observe();
        }
        return;
    }

    private void setupBroadcastReceiver() {
        if (this.mBroadcastReceiver != null) return;
        this.mBroadcastReceiver = new WidgetBroadcastReceiver(null);
    }

    private void setupMeProfileContactObserver() {
        Uri uri;
        this.mContext.getContentResolver().unregisterContentObserver((ContentObserver)(this.mMeProfileContactObserver));
        try {
            uri = this.findMeProfileContactUri();
            if (uri == null) return;
        }
        catch (IOException var1_2) {
            var1_2.printStackTrace();
            return;
        }
        this.mContext.getContentResolver().registerContentObserver(uri, false, (ContentObserver)(this.mMeProfileContactObserver));
        return;
    }

    private void setupSettingsObserver() {
        if (!(this.mObservers.isEmpty())) {
            this.unobserveAllObserver();
            this.mObservers.clear();
        }
        this.mObservers.add((Object)(new WidgetSettingsObserver(this.mHandler, Settings.System.getUriFor((String)("expanded_haptic_feedback")))));
        this.mObservers.add((Object)(new WidgetSettingsObserver(this.mHandler, Settings.System.getUriFor((String)("expanded_widget_buttons")))));
        Iterator iterator = PowerButton.getAllObservedUris().iterator();
        while (iterator.hasNext()) {
            Uri uri = (Uri)(iterator.next());
            this.mObservers.add((Object)(new WidgetSettingsObserver(this.mHandler, uri)));
        }
        return;
    }

    private void setupTableLayout() {
        if (this.mTableLayout == null) {
            TableLayout.LayoutParams layoutParams = new TableLayout.LayoutParams(-1, -2);
            this.mTableLayout = new TableLayout(this.mContext);
            this.mTableLayout.setLayoutParams((ViewGroup.LayoutParams)(layoutParams));
            this.mTableLayout.setStretchAllColumns(true);
            TableRow.LayoutParams layoutParams2 = new TableRow.LayoutParams(-1, -2);
            this.mTableRow1 = new TableRow(this.mContext);
            this.mTableRow1.setLayoutParams((ViewGroup.LayoutParams)(layoutParams2));
            this.mTableRow2 = new TableRow(this.mContext);
            this.mTableRow2.setLayoutParams((ViewGroup.LayoutParams)(layoutParams2));
            this.mTableRow3 = new TableRow(this.mContext);
            this.mTableRow3.setLayoutParams((ViewGroup.LayoutParams)(layoutParams2));
            this.mTableRow4 = new TableRow(this.mContext);
            this.mTableRow4.setLayoutParams((ViewGroup.LayoutParams)(layoutParams2));
            this.mTableRow5 = new TableRow(this.mContext);
            this.mTableRow5.setLayoutParams((ViewGroup.LayoutParams)(layoutParams2));
            this.mTableRow6 = new TableRow(this.mContext);
            this.mTableRow6.setLayoutParams((ViewGroup.LayoutParams)(layoutParams2));
            this.mTableRow7 = new TableRow(this.mContext);
            this.mTableRow7.setLayoutParams((ViewGroup.LayoutParams)(layoutParams2));
            this.mTableRow8 = new TableRow(this.mContext);
            this.mTableRow8.setLayoutParams((ViewGroup.LayoutParams)(layoutParams2));
            this.mTableRow9 = new TableRow(this.mContext);
            this.mTableRow9.setLayoutParams((ViewGroup.LayoutParams)(layoutParams2));
            this.mTableRow10 = new TableRow(this.mContext);
            this.mTableRow10.setLayoutParams((ViewGroup.LayoutParams)(layoutParams2));
            this.mTableRow11 = new TableRow(this.mContext);
            this.mTableRow11.setLayoutParams((ViewGroup.LayoutParams)(layoutParams2));
            this.mTableRow12 = new TableRow(this.mContext);
            this.mTableRow12.setLayoutParams((ViewGroup.LayoutParams)(layoutParams2));
            this.mTableRow13 = new TableRow(this.mContext);
            this.mTableRow13.setLayoutParams((ViewGroup.LayoutParams)(layoutParams2));
            this.mTableRow14 = new TableRow(this.mContext);
            this.mTableRow14.setLayoutParams((ViewGroup.LayoutParams)(layoutParams2));
            this.mTableRow15 = new TableRow(this.mContext);
            this.mTableRow15.setLayoutParams((ViewGroup.LayoutParams)(layoutParams2));
            this.mTableLayout.addView((View)(this.mTableRow1));
            this.mTableLayout.addView((View)(this.mTableRow2));
            this.mTableLayout.addView((View)(this.mTableRow3));
            this.mTableLayout.addView((View)(this.mTableRow4));
            this.mTableLayout.addView((View)(this.mTableRow5));
            this.mTableLayout.addView((View)(this.mTableRow6));
            this.mTableLayout.addView((View)(this.mTableRow7));
            this.mTableLayout.addView((View)(this.mTableRow8));
            this.mTableLayout.addView((View)(this.mTableRow9));
            this.mTableLayout.addView((View)(this.mTableRow10));
            this.mTableLayout.addView((View)(this.mTableRow11));
            this.mTableLayout.addView((View)(this.mTableRow12));
            this.mTableLayout.addView((View)(this.mTableRow13));
            this.mTableLayout.addView((View)(this.mTableRow14));
            this.mTableLayout.addView((View)(this.mTableRow15));
            this.mGridScrollView = (ScrollView)(this.mInflater.inflate(R.layout.quickpanel_grid_scrollview, (ViewGroup)(null), false));
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
            this.mGridScrollView.addView((View)(this.mTableLayout), (ViewGroup.LayoutParams)(layoutParams3));
        }
        this.mTableRow1.removeAllViews();
        this.mTableRow2.removeAllViews();
        this.mTableRow3.removeAllViews();
        this.mTableRow4.removeAllViews();
        this.mTableRow5.removeAllViews();
        this.mTableRow6.removeAllViews();
        this.mTableRow7.removeAllViews();
        this.mTableRow8.removeAllViews();
        this.mTableRow9.removeAllViews();
        this.mTableRow10.removeAllViews();
        this.mTableRow11.removeAllViews();
        this.mTableRow12.removeAllViews();
        this.mTableRow13.removeAllViews();
        this.mTableRow14.removeAllViews();
        this.mTableRow15.removeAllViews();
    }

    private void unobserveAllObserver() {
        Iterator iterator = this.mObservers.iterator();
        while (iterator.hasNext()) {
            (WidgetSettingsObserver)(iterator.next()).unobserve();
        }
        return;
    }

    public void fullScroll() {
        this.mGridScrollView.fullScroll(33);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.setGlobalButtonOnClickListener((View.OnClickListener)(new View.OnClickListener(){

            public void onClick(View view) {
                Settings.System.getInt((ContentResolver)(PowerWidget.this.mContext.getContentResolver()), (String)("expanded_hide_onchange"), (int)(0));
            }
        }));
        this.setGlobalButtonOnLongClickListener((View.OnLongClickListener)(new View.OnLongClickListener(){

            public boolean onLongClick(View view) {
                return true;
            }
        }));
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mBroadcastReceiver != null) {
            this.mContext.unregisterReceiver((BroadcastReceiver)(this.mBroadcastReceiver));
        }
        this.unobserveAllObserver();
        this.mObservers.clear();
    }

    public void setGlobalButtonOnClickListener(View.OnClickListener onClickListener) {
        PowerButton.setGlobalOnClickListener(onClickListener);
    }

    public void setGlobalButtonOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        PowerButton.setGlobalOnLongClickListener(onLongClickListener);
    }

    public void setupButtonsWithLabel(boolean bl) {
        this.mButtonsWithLabel = bl;
    }

    public void setupGridLayout(int n) {
        if ((n < 2) || (n > 5)) return;
        this.mButtonsPerRow = n;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setupWidget() {
        this.setupTableLayout();
        this.removeAllViews();
        if (this.mBroadcastReceiver != null) {
            this.mContext.unregisterReceiver((BroadcastReceiver)(this.mBroadcastReceiver));
        }
        this.unobserveAllObserver();
        PowerButton.unloadAllButtons();
        int n = 0;
        for (String string : "toggleMeProfile|toggleSystemSettings|toggleRecentApps|toggleBatteryInfo|toggleWifi|toggleWifiAp|toggleBluetooth|toggleGPS|toggleSound|toggleFlashlight|toggleBrightness|toggleScreenTimeout|toggleStayAwakePlugged|toggleSync|toggleLockScreen|toggleAutoRotate|toggleAirplane|toggleMobileData|toggleNetworkMode|toggleUSBConnectionMode|toggleUSBDebugging|toggleReboot|toggleShutdown".split("\\|")) {
            View view = this.inflateButtonView(string);
            if (PowerButton.loadButton(string, view)) {
                this.addViewToTableRow(view, (n + 1));
                ++n;
                continue;
            }
            Log.e((String)("SerajrPowerWidget"), (String)(("Error setting up button: " + string)));
        }
        this.addView((View)(this.mGridScrollView), (ViewGroup.LayoutParams)(PowerWidget.WIDGET_LAYOUT_PARAMS));
        this.setupBroadcastReceiver();
        IntentFilter intentFilter = PowerButton.getAllBroadcastIntentFilters();
        intentFilter.addAction("android.settings.SETTINGS_CHANGED_ACTION");
        intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        this.mContext.registerReceiver((BroadcastReceiver)(this.mBroadcastReceiver), intentFilter);
        this.setupSettingsObserver();
        this.observeAllObserver();
        this.setupMeProfileContactObserver();
    }

    public void updateWidget() {
        PowerButton.updateAllButtons();
    }

    class MeProfileContactObserver
    extends ContentObserver {
        public MeProfileContactObserver() {
            super((Handler)(null));
        }

        public void onChange(boolean bl) {
            super.onChange(bl);
            PowerWidget.this.updateWidget();
        }
    }

    class WidgetBroadcastReceiver
    extends BroadcastReceiver {
        private WidgetBroadcastReceiver() {
        }

        /* synthetic */ WidgetBroadcastReceiver(PowerWidget powerToggles, WidgetBroadcastReceiver widgetBroadcastReceiver) {
            this(powerToggles);
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals((Object)("android.intent.action.CONFIGURATION_CHANGED"))) {
                this$0.setupWidget();
            } else {
                PowerButton.handleOnReceive(context, intent);
            }
            this$0.updateWidget();
        }
    }

    class WidgetSettingsObserver
    extends ContentObserver {
        private Uri mUri;

        public WidgetSettingsObserver(Handler handler, Uri uri) {
            super(handler);
            this.mUri = uri;
        }

        public void observe() {
            PowerWidget.this.mContext.getContentResolver().registerContentObserver(this.mUri, false, (ContentObserver)(this));
        }

        public void onChange(boolean bl) {
            if (this.mUri.equals((Object)(Settings.System.getUriFor((String)("expanded_widget_buttons"))))) {
                PowerWidget.this.setupWidget();
            }
            PowerButton.handleOnChangeUri(this.mUri);
            PowerWidget.this.updateWidget();
        }

        public void unobserve() {
            PowerWidget.this.mContext.getContentResolver().unregisterContentObserver((ContentObserver)(this));
        }
    }

}

