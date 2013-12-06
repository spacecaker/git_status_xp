package com.android.systemui.statusbar.powerwidget;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.net.Uri;
import android.net.wimax.WimaxHelper;
import android.os.Handler;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;

import com.android.systemui.R;
import com.android.systemui.statusbar.policy.BrightnessSlider;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class StatusBarToggles extends LinearLayout {
    private static final String TAG = "StatusBarToggles";

    public static final String BUTTON_DELIMITER = "|";

    private static final String BUTTONS_DEFAULT = PowerButton.BUTTON_WIFI
                            + BUTTON_DELIMITER + PowerButton.BUTTON_BLUETOOTH
                            + BUTTON_DELIMITER + PowerButton.BUTTON_GPS
                            + BUTTON_DELIMITER + PowerButton.BUTTON_SOUND
                            + BUTTON_DELIMITER + PowerButton.BUTTON_SYNC
                            + BUTTON_DELIMITER + PowerButton.BUTTON_MOBILEDATA
                            + BUTTON_DELIMITER + PowerButton.BUTTON_AIRPLANE
                            + BUTTON_DELIMITER + PowerButton.BUTTON_AUTOROTATE
                            + BUTTON_DELIMITER + PowerButton.BUTTON_FLASHLIGHT
                            + BUTTON_DELIMITER + PowerButton.BUTTON_LOCKSCREEN
                            + BUTTON_DELIMITER + PowerButton.BUTTON_BRIGHTNESS
                            + BUTTON_DELIMITER + PowerButton.BUTTON_NETWORKMODE
                            + BUTTON_DELIMITER + PowerButton.BUTTON_SCREENTIMEOUT
                            + BUTTON_DELIMITER + PowerButton.BUTTON_SLEEP
                            + BUTTON_DELIMITER + PowerButton.BUTTON_WIFIAP
                            + BUTTON_DELIMITER + PowerButton.BUTTON_MEDIA_PLAY_PAUSE
                            + BUTTON_DELIMITER + PowerButton.BUTTON_MEDIA_PREVIOUS
                            + BUTTON_DELIMITER + PowerButton.BUTTON_MEDIA_NEXT
                            + BUTTON_DELIMITER + PowerButton.BUTTON_LTE;

    private static final LinearLayout.LayoutParams WIDGET_LAYOUT_PARAMS = new LinearLayout.LayoutParams(
                                        ViewGroup.LayoutParams.MATCH_PARENT, // width = match_parent
                                        ViewGroup.LayoutParams.WRAP_CONTENT, // height = wrap_content
                                        1.0f                                 // weight = 1
                                        );

    private static final LinearLayout.LayoutParams BUTTON_LAYOUT_PARAMS = new LinearLayout.LayoutParams(
                                        ViewGroup.LayoutParams.WRAP_CONTENT, // width = wrap_content
                                        ViewGroup.LayoutParams.MATCH_PARENT, // height = match_parent
                                        1.0f                                 // weight = 1
                                        );

    private static final int LAYOUT_SCROLL_BUTTON_THRESHOLD = 6;

    // this is a list of all possible buttons and their corresponding classes
    private static final HashMap<String, Pair<String, Class<? extends PowerButton>>> sPossibleButtons =
            new HashMap<String, Pair<String, Class<? extends PowerButton>>>();

    static {
        sPossibleButtons.put(PowerButton.BUTTON_WIFI,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_WIFI, WifiButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_GPS,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_GPS, GPSButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_BLUETOOTH,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_BLUETOOTH, BluetoothButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_BRIGHTNESS,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_BRIGHTNESS, BrightnessButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_SOUND,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_SOUND, SoundButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_SYNC,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_SYNC, SyncButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_WIFIAP,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_WIFIAP, WifiApButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_SCREENTIMEOUT,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_SCREENTIMEOUT, ScreenTimeoutButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_MOBILEDATA,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_MOBILEDATA, MobileDataButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_LOCKSCREEN,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_LOCKSCREEN, LockScreenButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_NETWORKMODE,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_NETWORKMODE, NetworkModeButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_AUTOROTATE,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_AUTOROTATE, AutoRotateButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_AIRPLANE,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_AIRPLANE, AirplaneButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_FLASHLIGHT,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_FLASHLIGHT, FlashlightButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_SLEEP,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_SLEEP, SleepButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_MEDIA_PLAY_PAUSE,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_MEDIA_PLAY_PAUSE, MediaPlayPauseButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_MEDIA_PREVIOUS,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_MEDIA_PREVIOUS, MediaPreviousButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_MEDIA_NEXT,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_MEDIA_NEXT, MediaNextButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_WIMAX,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_WIMAX, WimaxButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_LTE,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_LTE, LTEButton.class));
        sPossibleButtons.put(PowerButton.BUTTON_MEDIA_SCAN,
            new Pair<String, Class<? extends PowerButton>>(PowerButton.NAME_BUTTON_MEDIA_SCAN, MediaScanButton.class));
    }

    // this is a list of our currently loaded buttons
    private final HashMap<String, PowerButton> mButtons = new HashMap<String, PowerButton>();
    private final ArrayList<String> mButtonNames = new ArrayList<String>();

    private View.OnClickListener mAllButtonClickListener;
    private View.OnLongClickListener mAllButtonLongClickListener;

    private BrightnessSlider mBrightness;

    private Context mContext;
    private Handler mHandler;
    private LayoutInflater mInflater;
    private WidgetBroadcastReceiver mBroadcastReceiver = null;
    private WidgetSettingsObserver mObserver = null;

    private boolean mCompactLayout = true;

    private long[] mShortPressVibePattern;
    private long[] mLongPressVibePattern;

    private LinearLayout mTogglesLayout;
    private SnappingScrollView mScrollView;

    public StatusBarToggles(Context context, AttributeSet attrs) {
        super(context, attrs);

        mContext = context;
        mHandler = new Handler();
        mInflater = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);

        mShortPressVibePattern = getLongIntArray(mContext.getResources(),
                com.android.internal.R.array.config_virtualKeyVibePattern);
        mLongPressVibePattern = getLongIntArray(mContext.getResources(),
                com.android.internal.R.array.config_longPressVibePattern);

        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.StatusBarToggles,
                0, 0);
        mCompactLayout = a.getBoolean(R.styleable.StatusBarToggles_compactLayout, true);
    }

    @Override
    protected void onFinishInflate() {
        setupWidget();
        if (mCompactLayout == false)
            mBrightness = new BrightnessSlider(mContext, (SeekBar)findViewById(R.id.manual_brightness));
    }

    @Override
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        updateVisibility();
    }

    static long[] getLongIntArray(Resources r, int resid) {
        int[] ar = r.getIntArray(resid);
        if (ar == null) {
            return null;
        }
        long[] out = new long[ar.length];
        for (int i=0; i < ar.length; i++) {
            out[i] = ar[i];
        }
        return out;
    }

    public void destroyWidget() {
        Log.i(TAG, "Clearing any old widget stuffs");
        // remove all views from the layout
        if (mTogglesLayout != null)
            mTogglesLayout.removeAllViews();

        // unregister our content receiver
        if (mBroadcastReceiver != null) {
            mContext.unregisterReceiver(mBroadcastReceiver);
        }
        // unobserve our content
        if (mObserver != null) {
            mObserver.unobserve();
        }

        // clear the button instances
        unloadAllButtons();
    }

    public void setupWidget() {
        destroyWidget();

        Log.i(TAG, "Setting up widget");

        String buttons = Settings.System.getString(mContext.getContentResolver(), Settings.System.WIDGET_BUTTONS);
        if (buttons == null) {
            Log.i(TAG, "Default buttons being loaded");
            buttons = BUTTONS_DEFAULT;
            // Add the WiMAX button if it's supported
            if (WimaxHelper.isWimaxSupported(mContext)) {
                buttons += BUTTON_DELIMITER + PowerButton.BUTTON_WIMAX;
            }
        }
        Log.i(TAG, "Button list: " + buttons);

        for (String button : buttons.split("\\|")) {
            if (loadButton(button)) {
                mButtonNames.add(button);
            } else {
                Log.e(TAG, "Error setting up button: " + button);
            }
        }
        recreateButtonLayout();
        updateHapticFeedbackSetting();

        // set up a broadcast receiver for our intents, based off of what our power buttons have been loaded
        setupBroadcastReceiver();
        IntentFilter filter = getMergedBroadcastIntentFilter();
        // we add this so we can update views and such if the settings for our widget change
        //filter.addAction(Settings.SETTINGS_CHANGED);
        // we need to detect orientation changes and update the static button width value appropriately
        filter.addAction(Intent.ACTION_CONFIGURATION_CHANGED);
        // register the receiver
        mContext.registerReceiver(mBroadcastReceiver, filter);
        // register our observer
        mObserver = new WidgetSettingsObserver(mHandler);
        mObserver.observe();
        
        // paged toggles should be inside a scrollview, so get the scrollview parent
        // and pass it on to the volume panel so that the scrollview can be scrolled
        // to the bottom when the volume panel is expanded.
        ViewParent v = getParent();
        if (v != null && v instanceof ScrollView) {
            VolumePanel vp = (VolumePanel)findViewById(R.id.volume_panel);
            if (vp != null)
                vp.setScrollView((ScrollView)v);
        }
    }

    private boolean loadButton(String key) {
        // first make sure we have a valid button
        if (!sPossibleButtons.containsKey(key)) {
            return false;
        }

        if (mButtons.containsKey(key)) {
            return true;
        }

        try {
            // we need to instantiate a new button and add it
            Pair<String, Class< ? extends PowerButton>> p = sPossibleButtons.get(key);
            PowerButton pb = p.second.newInstance();
            pb.setExternalClickListener(mAllButtonClickListener);
            pb.setExternalLongClickListener(mAllButtonLongClickListener);
            // save it
            mButtons.put(key, pb);
        } catch (Exception e) {
            Log.e(TAG, "Error loading button: " + key, e);
            return false;
        }

        return true;
    }

    private void unloadButton(String key) {
        // first make sure we have a valid button
        if (mButtons.containsKey(key)) {
            // wipe out the button view
            mButtons.get(key).setupButton(null);
            // remove the button from our list of loaded ones
            mButtons.remove(key);
        }
    }

    private void unloadAllButtons() {
        // cycle through setting the buttons to null
        for (PowerButton pb : mButtons.values()) {
            pb.setupButton(null);
        }

        // clear our list
        mButtons.clear();
        mButtonNames.clear();
    }

    static class SnappingScrollView extends HorizontalScrollView {

        private boolean mSnapTrigger = false;

        public SnappingScrollView(Context context) {
            super(context);
        }

        Runnable mSnapRunnable = new Runnable(){
            @Override
            public void run() {
                int mSelectedItem = ((getScrollX() + (BUTTON_LAYOUT_PARAMS.width / 2)) / BUTTON_LAYOUT_PARAMS.width);
                int scrollTo = mSelectedItem * BUTTON_LAYOUT_PARAMS.width;
                smoothScrollTo(scrollTo, 0);
                mSnapTrigger = false;
            }
        };

        @Override
        protected void onScrollChanged(int l, int t, int oldl, int oldt) {
            super.onScrollChanged(l, t, oldl, oldt);
            if (Math.abs(oldl - l) <= 1 && mSnapTrigger) {
                removeCallbacks(mSnapRunnable);
                postDelayed(mSnapRunnable, 100);
            }
        }

        @Override
        public boolean onTouchEvent(MotionEvent ev) {
            int action = ev.getAction();
            if (action == MotionEvent.ACTION_CANCEL || action == MotionEvent.ACTION_UP) {
                mSnapTrigger = true;
            }
            return super.onTouchEvent(ev);
        }

    }

    private void recreateButtonLayout() {
        if (mCompactLayout) {
            updateButtonLayoutWidth();
            recreateCompactLayout();
        } else
            recreatePageLayout();
    }

    private void recreateCompactLayout() {
        removeAllViews();

        // create a linearlayout to hold our buttons
        mTogglesLayout = new LinearLayout(mContext);
        mTogglesLayout.setOrientation(LinearLayout.HORIZONTAL);
        mTogglesLayout.setGravity(Gravity.CENTER_HORIZONTAL);

        int buttonCount = 0;

        for (String button : mButtonNames) {
            PowerButton pb = mButtons.get(button);
            if (pb != null) {
                View buttonView = mInflater.inflate(R.layout.toggle_button, null, false);
                pb.setupButton(buttonView);
                mTogglesLayout.addView(buttonView, BUTTON_LAYOUT_PARAMS);
                
                // limit it to the first 12 toggles to stay consistent with StatusBarToggles
                if (++buttonCount >= 12)
                    break;
            }
        }

        // we determine if we're using a horizontal scroll view based on a threshold of button counts
        if (mTogglesLayout.getChildCount() > LAYOUT_SCROLL_BUTTON_THRESHOLD) {
            // we need our horizontal scroll view to wrap the linear layout
            mScrollView = new SnappingScrollView(mContext);
            // make the fading edge the size of a button (makes it more noticible that we can scroll
            mScrollView.setFadingEdgeLength(mContext.getResources().getDisplayMetrics().widthPixels / LAYOUT_SCROLL_BUTTON_THRESHOLD);
            mScrollView.setScrollBarStyle(View.SCROLLBARS_INSIDE_INSET);
            mScrollView.setOverScrollMode(View.OVER_SCROLL_NEVER);
            mScrollView.addView(mTogglesLayout, WIDGET_LAYOUT_PARAMS);
            updateScrollbar();
            addView(mScrollView, WIDGET_LAYOUT_PARAMS);
        } else {
            // not needed, just add the linear layout
            addView(mTogglesLayout, WIDGET_LAYOUT_PARAMS);
        }
    }

    private void recreatePageLayout() {
        if (mTogglesLayout != null)
            mTogglesLayout.removeAllViews();

        int toggleCount = 0;

        // create a linearlayout to hold our buttons
        LinearLayout rowLayout = (LinearLayout)mInflater.inflate(R.layout.status_bar_toggles_row, null, false);
        rowLayout.setOrientation(LinearLayout.HORIZONTAL);

        mTogglesLayout = (LinearLayout)findViewById(R.id.toggles_layout);

        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                                        ViewGroup.LayoutParams.MATCH_PARENT, // width = match_parent
                                        mContext.getResources().getDimensionPixelSize(R.dimen.status_bar_toggles_row_height), // height = wrap_content
                                        0.0f                                 // weight = 1
                                        );

        for (String button : mButtonNames) {
            PowerButton pb = mButtons.get(button);
            if (pb != null) {
                View buttonView = mInflater.inflate(R.layout.toggle_button, null, false);
                pb.setupButton(buttonView);
                pb.setLabel(sPossibleButtons.get(button).first);
                rowLayout.addView(buttonView, BUTTON_LAYOUT_PARAMS);
                toggleCount++;
                if ((toggleCount % 4) == 0) {
                    mTogglesLayout.addView(rowLayout, params);

                    // limit it to the first 12 toggles in the list
                    if (toggleCount >= 12)
                        break;
                    rowLayout = (LinearLayout)mInflater.inflate(R.layout.status_bar_toggles_row, null, false);
                    rowLayout.setOrientation(LinearLayout.HORIZONTAL);
                }
            }
        }
    }

    public void updateAllButtons() {
        // cycle through our buttons and update them
        for (PowerButton pb : mButtons.values()) {
            pb.update(mContext);
        }
    }

    private IntentFilter getMergedBroadcastIntentFilter() {
        IntentFilter filter = new IntentFilter();

        for (PowerButton button : mButtons.values()) {
            IntentFilter tmp = button.getBroadcastIntentFilter();

            // cycle through these actions, and see if we need them
            int num = tmp.countActions();
            for (int i = 0; i < num; i++) {
                String action = tmp.getAction(i);
                if(!filter.hasAction(action)) {
                    filter.addAction(action);
                }
            }

            // cycle through these data schemes, and see if we need them
            num = tmp.countDataSchemes();
            for (int i = 0; i < num; i++) {
                String scheme = tmp.getDataScheme(i);
                if(!filter.hasDataScheme(scheme)) {
                    filter.addDataScheme(scheme);
                }
            }
        }

        // return our merged filter
        return filter;
    }

    private List<Uri> getAllObservedUris() {
        List<Uri> uris = new ArrayList<Uri>();

        for (PowerButton button : mButtons.values()) {
            List<Uri> tmp = button.getObservedUris();

            for (Uri uri : tmp) {
                if (!uris.contains(uri)) {
                    uris.add(uri);
                }
            }
        }

        return uris;
    }

    public void setGlobalButtonOnClickListener(View.OnClickListener listener) {
        mAllButtonClickListener = listener;
        for (PowerButton pb : mButtons.values()) {
            pb.setExternalClickListener(listener);
        }
    }

    public void setGlobalButtonOnLongClickListener(View.OnLongClickListener listener) {
        mAllButtonLongClickListener = listener;
        for (PowerButton pb : mButtons.values()) {
            pb.setExternalLongClickListener(listener);
        }
    }

    private void setupBroadcastReceiver() {
        if (mBroadcastReceiver == null) {
            mBroadcastReceiver = new WidgetBroadcastReceiver();
        }
    }

    private void updateButtonLayoutWidth() {
        // use our context to set a valid button width
        BUTTON_LAYOUT_PARAMS.width = this.getWidth() / LAYOUT_SCROLL_BUTTON_THRESHOLD;
    }

    public void updateVisibility() {
        // now check if we need to display the widget still
        boolean displayPowerWidget = Settings.System.getInt(mContext.getContentResolver(),
                   Settings.System.TOGGLES_TYPE, 0) != 0;
        if(!displayPowerWidget) {
            setVisibility(View.GONE);
        } else {
            setVisibility(View.VISIBLE);
        }
    }

    private void updateScrollbar() {
        if (mScrollView == null) return;
        boolean hideScrollBar = Settings.System.getInt(mContext.getContentResolver(),
                    Settings.System.EXPANDED_HIDE_SCROLLBAR, 0) == 1;
        mScrollView.setHorizontalScrollBarEnabled(!hideScrollBar);
    }

    private void updateHapticFeedbackSetting() {
        ContentResolver cr = mContext.getContentResolver();
        int expandedHapticFeedback = Settings.System.getInt(cr,
                Settings.System.EXPANDED_HAPTIC_FEEDBACK, 2);
        long[] clickPattern = null, longClickPattern = null;
        boolean hapticFeedback;

        if (expandedHapticFeedback == 2) {
             hapticFeedback = Settings.System.getInt(cr,
                     Settings.System.HAPTIC_FEEDBACK_ENABLED, 1) == 1;
        } else {
            hapticFeedback = (expandedHapticFeedback == 1);
        }

        if (hapticFeedback) {
            clickPattern = mShortPressVibePattern;
            longClickPattern = mLongPressVibePattern;
        }

        for (PowerButton button : mButtons.values()) {
            button.setHapticFeedback(hapticFeedback, clickPattern, longClickPattern);
        }
    }

    // our own broadcast receiver :D
    private class WidgetBroadcastReceiver extends BroadcastReceiver {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();

            if (action.equals(Intent.ACTION_CONFIGURATION_CHANGED)) {
                recreateButtonLayout();
            } else {
                // handle the intent through our power buttons
                Log.i(TAG, action);
                for (PowerButton button : mButtons.values()) {
                    // call "onReceive" on those that matter
                    if (button.getBroadcastIntentFilter().hasAction(action)) {
                        button.onReceive(context, intent);
                    }
                }
            }

            // update our widget
            updateAllButtons();
        }
    };

    // our own settings observer :D
    private class WidgetSettingsObserver extends ContentObserver {
        public WidgetSettingsObserver(Handler handler) {
            super(handler);
        }

        public void observe() {
            ContentResolver resolver = mContext.getContentResolver();

            // watch for display widget
            resolver.registerContentObserver(
                    Settings.System.getUriFor(Settings.System.EXPANDED_VIEW_WIDGET),
                            false, this);

            // watch for scrollbar hiding
            resolver.registerContentObserver(
                    Settings.System.getUriFor(Settings.System.EXPANDED_HIDE_SCROLLBAR),
                            false, this);

            // watch for haptic feedback
            resolver.registerContentObserver(
                    Settings.System.getUriFor(Settings.System.EXPANDED_HAPTIC_FEEDBACK),
                            false, this);
            resolver.registerContentObserver(
                    Settings.System.getUriFor(Settings.System.HAPTIC_FEEDBACK_ENABLED),
                            false, this);

            // watch for changes in buttons
            resolver.registerContentObserver(
                    Settings.System.getUriFor(Settings.System.WIDGET_BUTTONS),
                            false, this);

            // watch for power-button specific stuff that has been loaded
            for(Uri uri : getAllObservedUris()) {
                resolver.registerContentObserver(uri, false, this);
            }
        }

        public void unobserve() {
            ContentResolver resolver = mContext.getContentResolver();

            resolver.unregisterContentObserver(this);
        }

        @Override
        public void onChange(boolean selfChange, Uri uri) {
            ContentResolver resolver = mContext.getContentResolver();
            Resources res = mContext.getResources();

            // first check if our widget buttons have changed
            if(uri.equals(Settings.System.getUriFor(Settings.System.WIDGET_BUTTONS))) {
                setupWidget();
            // now check if we change visibility
            } else if(uri.equals(Settings.System.getUriFor(Settings.System.EXPANDED_VIEW_WIDGET))) {
                updateVisibility();
            // now check for scrollbar hiding
            } else if(uri.equals(Settings.System.getUriFor(Settings.System.EXPANDED_HIDE_SCROLLBAR))) {
                updateScrollbar();
            }

            if (uri.equals(Settings.System.getUriFor(Settings.System.HAPTIC_FEEDBACK_ENABLED))
                    || uri.equals(Settings.System.getUriFor(Settings.System.EXPANDED_HAPTIC_FEEDBACK))) {
                updateHapticFeedbackSetting();
            }

            // do whatever the individual buttons must
            for (PowerButton button : mButtons.values()) {
                if (button.getObservedUris().contains(uri)) {
                    button.onChangeUri(resolver, uri);
                }
            }

            // something happened so update the widget
            updateAllButtons();
        }
    }
}
