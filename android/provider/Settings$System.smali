.class public final Landroid/provider/Settings$System;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final ACCELEROMETER_ROTATION:Ljava/lang/String; = "accelerometer_rotation"

.field public static final ACCELEROMETER_ROTATION_MODE:Ljava/lang/String; = "accelerometer_rotation_mode"

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIRPLANE_MODE_ON:Ljava/lang/String; = "airplane_mode_on"

.field public static final AIRPLANE_MODE_RADIOS:Ljava/lang/String; = "airplane_mode_radios"

.field public static final AIRPLANE_MODE_TOGGLEABLE_RADIOS:Ljava/lang/String; = "airplane_mode_toggleable_radios"

.field public static final ALARM_ALERT:Ljava/lang/String; = "alarm_alert"

.field public static final ALWAYS_FINISH_ACTIVITIES:Ljava/lang/String; = "always_finish_activities"

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final APPEND_FOR_LAST_AUDIBLE:Ljava/lang/String; = "_last_audible"

.field public static final AUTO_TIME:Ljava/lang/String; = "auto_time"

.field public static final BLUETOOTH_DISCOVERABILITY:Ljava/lang/String; = "bluetooth_discoverability"

.field public static final BLUETOOTH_DISCOVERABILITY_TIMEOUT:Ljava/lang/String; = "bluetooth_discoverability_timeout"

.field public static final BLUETOOTH_FAST_CONNECT:Ljava/lang/String; = "bluetooth_fast_connect"

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CALL_AUTO_RETRY:Ljava/lang/String; = "call_auto_retry"

.field public static final CAMBTN_MUSIC_CONTROLS:Ljava/lang/String; = "cambtn_music_controls"

.field public static final CARRIER_LABEL_CUSTOM_STRING:Ljava/lang/String; = "carrier_label_custom_string"

.field public static final CARRIER_LABEL_TYPE:Ljava/lang/String; = "carrier_label_type"

.field public static final CAR_DOCK_SOUND:Ljava/lang/String; = "car_dock_sound"

.field public static final CAR_UNDOCK_SOUND:Ljava/lang/String; = "car_undock_sound"

.field public static final CLOCK_FONT:Ljava/lang/String; = "lockscreen_clock_font"

.field public static final COMPATIBILITY_MODE:Ljava/lang/String; = "compatibility_mode"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE_FORMAT:Ljava/lang/String; = "date_format"

.field public static final DEBUG_APP:Ljava/lang/String; = "debug_app"

.field public static final DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_NOTIFICATION_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_RINGTONE_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_VOLUME_CONTROL_MEDIA:Ljava/lang/String; = "default_volume_control_media"

.field public static final DESK_DOCK_SOUND:Ljava/lang/String; = "desk_dock_sound"

.field public static final DESK_UNDOCK_SOUND:Ljava/lang/String; = "desk_undock_sound"

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DIM_SCREEN:Ljava/lang/String; = "dim_screen"

.field public static final DOCK_SOUNDS_ENABLED:Ljava/lang/String; = "dock_sounds_enabled"

.field public static final DTMF_TONE_TYPE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone_type"

.field public static final DTMF_TONE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone"

.field public static final ELECTRON_BEAM_ANIMATION_OFF:Ljava/lang/String; = "electron_beam_animation_off"

.field public static final ELECTRON_BEAM_ANIMATION_ON:Ljava/lang/String; = "electron_beam_animation_on"

.field public static final EMERGENCY_TONE:Ljava/lang/String; = "emergency_tone"

.field public static final END_BUTTON_BEHAVIOR:Ljava/lang/String; = "end_button_behavior"

.field public static final END_BUTTON_BEHAVIOR_DEFAULT:I = 0x2

.field public static final END_BUTTON_BEHAVIOR_HOME:I = 0x1

.field public static final END_BUTTON_BEHAVIOR_SLEEP:I = 0x2

.field public static final EXPANDED_BRIGHTNESS_MODE:Ljava/lang/String; = "expanded_brightness_mode"

.field public static final EXPANDED_FLASH_MODE:Ljava/lang/String; = "expanded_flash_mode"

.field public static final EXPANDED_HAPTIC_FEEDBACK:Ljava/lang/String; = "expanded_haptic_feedback"

.field public static final EXPANDED_HIDE_INDICATOR:Ljava/lang/String; = "expanded_hide_indicator"

.field public static final EXPANDED_HIDE_ONCHANGE:Ljava/lang/String; = "expanded_hide_onchange"

.field public static final EXPANDED_HIDE_SCROLLBAR:Ljava/lang/String; = "expanded_hide_scrollbar"

.field public static final EXPANDED_MOBILEDATANETWORK_MODE:Ljava/lang/String; = "expanded_mobiledatanetwork_mode"

.field public static final EXPANDED_NETWORK_MODE:Ljava/lang/String; = "expanded_network_mode"

.field public static final EXPANDED_RING_MODE:Ljava/lang/String; = "expanded_ring_mode"

.field public static final EXPANDED_SCREENTIMEOUT_MODE:Ljava/lang/String; = "expanded_screentimeout_mode"

.field public static final EXPANDED_VIEW_WIDGET:Ljava/lang/String; = "expanded_view_widget"

.field public static final EXPANDED_VIEW_WIDGET_COLOR:Ljava/lang/String; = "expanded_widget_color"

.field public static final EXTEND_PM:Ljava/lang/String; = "extend_pm"

.field public static final EXTEND_PM_SHOW_BACK:Ljava/lang/String; = "extend_pm_show_back"

.field public static final EXTEND_PM_SHOW_HOME:Ljava/lang/String; = "extend_pm_show_home"

.field public static final EXTEND_PM_SHOW_MENU:Ljava/lang/String; = "extend_pm_show_menu"

.field public static final FANCY_IME_ANIMATIONS:Ljava/lang/String; = "fancy_ime_animations"

.field public static final FONT_SCALE:Ljava/lang/String; = "font_scale"

.field public static final FULLSCREEN_DISABLED:Ljava/lang/String; = "fullscreen_disabled"

.field public static final HAPTIC_DOWN_ARRAY:Ljava/lang/String; = "haptic_down_array"

.field public static final HAPTIC_DOWN_ARRAY_DEFAULT:Ljava/lang/String; = "haptic_down_array_default"

.field public static final HAPTIC_FEEDBACK_ALL_ENABLED:Ljava/lang/String; = "haptic_feedback_all_enabled"

.field public static final HAPTIC_FEEDBACK_ENABLED:Ljava/lang/String; = "haptic_feedback_enabled"

.field public static final HAPTIC_FEEDBACK_UP_ENABLED:Ljava/lang/String; = "haptic_feedback_up_enabled"

.field public static final HAPTIC_LONG_ARRAY:Ljava/lang/String; = "haptic_long_array"

.field public static final HAPTIC_LONG_ARRAY_DEFAULT:Ljava/lang/String; = "haptic_long_array_default"

.field public static final HAPTIC_TAP_ARRAY:Ljava/lang/String; = "haptic_tap_array"

.field public static final HAPTIC_TAP_ARRAY_DEFAULT:Ljava/lang/String; = "haptic_tap_array_default"

.field public static final HAPTIC_UP_ARRAY:Ljava/lang/String; = "haptic_up_array"

.field public static final HAPTIC_UP_ARRAY_DEFAULT:Ljava/lang/String; = "haptic_up_array_default"

.field public static final HEARING_AID:Ljava/lang/String; = "hearing_aid"

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IN_CALL_STYLE_PREF:Ljava/lang/String; = "in_call_style_pref"

.field public static final LIGHTS_CHANGED:Ljava/lang/String; = "lights_changed"

.field public static final LIGHT_DECREASE:Ljava/lang/String; = "light_decrease"

.field public static final LIGHT_FILTER:Ljava/lang/String; = "light_filter"

.field public static final LIGHT_FILTER_INTERVAL:Ljava/lang/String; = "light_filter_interval"

.field public static final LIGHT_FILTER_RESET:Ljava/lang/String; = "light_filter_reset"

.field public static final LIGHT_FILTER_WINDOW:Ljava/lang/String; = "light_filter_window"

.field public static final LIGHT_HYSTERESIS:Ljava/lang/String; = "light_hysteresis"

.field public static final LIGHT_SCREEN_DIM:Ljava/lang/String; = "light_screen_dim"

.field public static final LIGHT_SENSOR_BUTTON_VALUES:Ljava/lang/String; = "light_sensor_button_values"

.field public static final LIGHT_SENSOR_CUSTOM:Ljava/lang/String; = "light_sensor_custom"

.field public static final LIGHT_SENSOR_KEYBOARD_VALUES:Ljava/lang/String; = "light_sensor_keyboard_values"

.field public static final LIGHT_SENSOR_LCD_VALUES:Ljava/lang/String; = "light_sensor_lcd_values"

.field public static final LIGHT_SENSOR_LEVELS:Ljava/lang/String; = "light_sensor_levels"

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKSCREEN_ALBUM_ART:Ljava/lang/String; = "lockscreen_album_art"

.field public static final LOCKSCREEN_ALWAYS_BATTERY:Ljava/lang/String; = "lockscreen_always_battery"

.field public static final LOCKSCREEN_ALWAYS_MUSIC_CONTROLS:Ljava/lang/String; = "lockscreen_always_music_controls"

.field public static final LOCKSCREEN_BACKGROUND:Ljava/lang/String; = "lockscreen_background"

.field public static final LOCKSCREEN_CALENDARS:Ljava/lang/String; = "lockscreen_calendars"

.field public static final LOCKSCREEN_CALENDAR_ALARM:Ljava/lang/String; = "lockscreen_calendar_alarm"

.field public static final LOCKSCREEN_CALENDAR_LOOKAHEAD:Ljava/lang/String; = "lockscreen_calendar_lookahead"

.field public static final LOCKSCREEN_CALENDAR_REMINDERS_ONLY:Ljava/lang/String; = "lockscreen_calendar_reminders_only"

.field public static final LOCKSCREEN_CALENDAR_SHOW_DESCRIPTION:Ljava/lang/String; = "lockscreen_calendar_show_description"

.field public static final LOCKSCREEN_CALENDAR_SHOW_LOCATION:Ljava/lang/String; = "lockscreen_calendar_show_location"

.field public static final LOCKSCREEN_CUSTOM_APP_ACTIVITY:Ljava/lang/String; = "lockscreen_custom_app_activity"

.field public static final LOCKSCREEN_CUSTOM_APP_TOGGLE:Ljava/lang/String; = "lockscreen_custom_app_toggle"

.field public static final LOCKSCREEN_CUSTOM_ICON_STYLE:Ljava/lang/String; = "lockscreen_custom_icon_style"

.field public static final LOCKSCREEN_CUSTOM_RING_APP_ACTIVITIES:[Ljava/lang/String; = null

.field public static final LOCKSCREEN_DISABLED:Ljava/lang/String; = "lockscreen_disabled"

.field public static final LOCKSCREEN_DISABLE_ON_SECURITY:Ljava/lang/String; = "lockscreen_disable_on_security"

.field public static final LOCKSCREEN_FUZZY_CLOCK:Ljava/lang/String; = "lockscreen_fuzzy_clock"

.field public static final LOCKSCREEN_GESTURES_COLOR:Ljava/lang/String; = "lockscreen_gestures_color"

.field public static final LOCKSCREEN_GESTURES_DISABLE_UNLOCK:Ljava/lang/String; = "lockscreen_gestures_disable_unlock"

.field public static final LOCKSCREEN_GESTURES_ENABLED:Ljava/lang/String; = "lockscreen_gestures_enabled"

.field public static final LOCKSCREEN_GESTURES_SENSITIVITY:Ljava/lang/String; = "lockscreen_gestures_sensitivity"

.field public static final LOCKSCREEN_GESTURES_TRAIL:Ljava/lang/String; = "lockscreen_gestures_trail"

.field public static final LOCKSCREEN_MUSIC_CONTROLS:Ljava/lang/String; = "lockscreen_music_controls"

.field public static final LOCKSCREEN_MUSIC_CONTROLS_HEADSET:Ljava/lang/String; = "lockscreen_music_controls_headset"

.field public static final LOCKSCREEN_NOW_PLAYING:Ljava/lang/String; = "lockscreen_now_playing"

.field public static final LOCKSCREEN_QUICK_UNLOCK_CONTROL:Ljava/lang/String; = "lockscreen_quick_unlock_control"

.field public static final LOCKSCREEN_RING_MINIMAL:Ljava/lang/String; = "lockscreen_ring_minimal"

.field public static final LOCKSCREEN_RING_UNLOCK_MIDDLE:Ljava/lang/String; = "lockscreen_ring_unlock_middle"

.field public static final LOCKSCREEN_ROTARY_HIDE_ARROWS:Ljava/lang/String; = "lockscreen_rotary_hide_arrows"

.field public static final LOCKSCREEN_ROTARY_UNLOCK_DOWN:Ljava/lang/String; = "lockscreen_rotary_unlock_down"

.field public static final LOCKSCREEN_SOUNDS_ENABLED:Ljava/lang/String; = "lockscreen_sounds_enabled"

.field public static final LOCKSCREEN_STYLE_PREF:Ljava/lang/String; = "lockscreen_style_pref"

.field public static final LOCKSCREEN_WIDGETS_LAYOUT:Ljava/lang/String; = "lockscreen_widgets_layout"

.field public static final LOCK_HOME_IN_MEMORY:Ljava/lang/String; = "lock_home_in_memory"

.field public static final LOCK_MMS_IN_MEMORY:Ljava/lang/String; = "lock_mms_in_memory"

.field public static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SOUND:Ljava/lang/String; = "lock_sound"

.field public static final LOCK_VOLUME_KEYS:Ljava/lang/String; = "lock_volume_keys"

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LONG_VOLM_ACTION:Ljava/lang/String; = "long_volm_action"

.field public static final LONG_VOLP_ACTION:Ljava/lang/String; = "long_volp_action"

.field public static final LONG_VOL_BOTH_ACTION:Ljava/lang/String; = "long_vol_both_action"

.field public static final LOW_BATTERY_SOUND:Ljava/lang/String; = "low_battery_sound"

.field public static final MENU_UNLOCK_SCREEN:Ljava/lang/String; = "menu_unlock_screen"

.field public static final MODE_RINGER:Ljava/lang/String; = "mode_ringer"

.field public static final MODE_RINGER_STREAMS_AFFECTED:Ljava/lang/String; = "mode_ringer_streams_affected"

.field private static final MOVED_TO_SECURE:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MUTE_STREAMS_AFFECTED:Ljava/lang/String; = "mute_streams_affected"

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NEXT_ALARM_FORMATTED:Ljava/lang/String; = "next_alarm_formatted"

.field public static final NOTIFICATIONS_AUDIO_FOCUS:Ljava/lang/String; = "notifications_audio_focus"

.field public static final NOTIFICATIONS_USE_RING_VOLUME:Ljava/lang/String; = "notifications_use_ring_volume"

.field public static final NOTIFICATION_BACKGROUND_COLOR:Ljava/lang/String; = "notification_background_color"

.field public static final NOTIFICATION_LIGHT_ALWAYS_ON:Ljava/lang/String; = "notification_light_always_on"

.field public static final NOTIFICATION_LIGHT_BLINK:Ljava/lang/String; = "notification_light_blink"

.field public static final NOTIFICATION_LIGHT_CHARGING:Ljava/lang/String; = "notification_light_charging"

.field public static final NOTIFICATION_LIGHT_PULSE:Ljava/lang/String; = "notification_light_pulse"

.field public static final NOTIFICATION_PACKAGE_COLORS:Ljava/lang/String; = "notification_custom_led_colors"

.field public static final NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"

.field public static final OVERSCROLL_EFFECT:Ljava/lang/String; = "overscroll_effect"

.field public static final OVERSCROLL_WEIGHT:Ljava/lang/String; = "overscroll_weight"

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHONE_GOGGLES_APP_ENABLED:Ljava/lang/String; = "phone_goggles_app_enabled"

.field public static final PHONE_GOGGLES_CONFIRMATION_MODE:Ljava/lang/String; = "phone_goggles_confirmation_mode"

.field public static final PHONE_GOGGLES_ENABLED:Ljava/lang/String; = "phone_goggles_enabled"

.field public static final PHONE_GOGGLES_END:Ljava/lang/String; = "phone_goggles_end"

.field public static final PHONE_GOGGLES_MATHS_LEVEL:Ljava/lang/String; = "phone_goggles_maths_level"

.field public static final PHONE_GOGGLES_MOBILE_FILTERED:Ljava/lang/String; = "phone_goggles_mobile_filtered"

.field public static final PHONE_GOGGLES_OTHER_FILTERED:Ljava/lang/String; = "phone_goggles_other_filtered"

.field public static final PHONE_GOGGLES_START:Ljava/lang/String; = "phone_goggles_start"

.field public static final PHONE_GOGGLES_USE_CUSTOM:Ljava/lang/String; = "phone_goggles_use_custom"

.field public static final PHONE_GOGGLES_WORK_FILTERED:Ljava/lang/String; = "phone_goggles_work_filtered"

.field public static final POINTER_LOCATION:Ljava/lang/String; = "pointer_location"

.field public static final POWER_DIALOG_PROMPT:Ljava/lang/String; = "power_dialog_prompt"

.field public static final POWER_SOUNDS_ENABLED:Ljava/lang/String; = "power_sounds_enabled"

.field public static final QUIET_HOURS_DIM:Ljava/lang/String; = "quiet_hours_dim"

.field public static final QUIET_HOURS_ENABLED:Ljava/lang/String; = "quiet_hours_enabled"

.field public static final QUIET_HOURS_END:Ljava/lang/String; = "quiet_hours_end"

.field public static final QUIET_HOURS_HAPTIC:Ljava/lang/String; = "quiet_hours_haptic"

.field public static final QUIET_HOURS_MUTE:Ljava/lang/String; = "quiet_hours_mute"

.field public static final QUIET_HOURS_START:Ljava/lang/String; = "quiet_hours_start"

.field public static final QUIET_HOURS_STILL:Ljava/lang/String; = "quiet_hours_still"

.field public static final RADIO_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final RADIO_CELL:Ljava/lang/String; = "cell"

.field public static final RADIO_WIFI:Ljava/lang/String; = "wifi"

.field public static final RADIO_WIMAX:Ljava/lang/String; = "wimax"

.field public static final RECENT_APPS_NUMBER:Ljava/lang/String; = "recent_apps_number"

.field public static final RECENT_APPS_SHOW_TITLE:Ljava/lang/String; = "recent_apps_show_title"

.field public static final REVERSE_VOLUME_BEHAVIOR:Ljava/lang/String; = "reverse_volume_behavior"

.field public static final RINGLOCK_STYLE_PREF:Ljava/lang/String; = "ringlock_style_pref"

.field public static final RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final ROTARY_STYLE_PREF:Ljava/lang/String; = "rotary_style_pref"

.field public static final SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"

.field public static final SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode"

.field public static final SCREEN_BRIGHTNESS_MODE_AUTOMATIC:I = 0x1

.field public static final SCREEN_BRIGHTNESS_MODE_MANUAL:I = 0x0

.field public static final SCREEN_LOCK_SECURITY_SCREENOFF_DELAY:Ljava/lang/String; = "screen_lock_security_screenoff_delay"

.field public static final SCREEN_LOCK_SECURITY_TIMEOUT_DELAY:Ljava/lang/String; = "screen_lock_security_timeout_delay"

.field public static final SCREEN_LOCK_SLIDE_DELAY_TOGGLE:Ljava/lang/String; = "screen_lock_slide_delay_toggle"

.field public static final SCREEN_LOCK_SLIDE_SCREENOFF_DELAY:Ljava/lang/String; = "screen_lock_slide_screenoff_delay"

.field public static final SCREEN_LOCK_SLIDE_TIMEOUT_DELAY:Ljava/lang/String; = "screen_lock_slide_timeout_delay"

.field public static final SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "screen_off_timeout"

.field public static final SELECTED_CUSTOM_APP:Ljava/lang/String; = "selected_custom_app"

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String; = null

.field public static final SETUP_WIZARD_HAS_RUN:Ljava/lang/String; = "setup_wizard_has_run"

.field public static final SHARE_SCREENSHOT:Ljava/lang/String; = "share_screenshot"

.field public static final SHOW_GTALK_SERVICE_STATUS:Ljava/lang/String; = "SHOW_GTALK_SERVICE_STATUS"

.field public static final SHOW_PROCESSES:Ljava/lang/String; = "show_processes"

.field public static final SHOW_WEB_SUGGESTIONS:Ljava/lang/String; = "show_web_suggestions"

.field public static final SIP_ADDRESS_ONLY:Ljava/lang/String; = "SIP_ADDRESS_ONLY"

.field public static final SIP_ALWAYS:Ljava/lang/String; = "SIP_ALWAYS"

.field public static final SIP_ASK_ME_EACH_TIME:Ljava/lang/String; = "SIP_ASK_ME_EACH_TIME"

.field public static final SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options"

.field public static final SIP_RECEIVE_CALLS:Ljava/lang/String; = "sip_receive_calls"

.field public static final SLIDER_UNLOCK_SCREEN:Ljava/lang/String; = "slider_unlock_screen"

.field public static final SOFT_BUTTONS_LEFT:Ljava/lang/String; = "soft_buttons_left"

.field public static final SOFT_BUTTON_SHOW_BACK:Ljava/lang/String; = "soft_button_show_back"

.field public static final SOFT_BUTTON_SHOW_HOME:Ljava/lang/String; = "soft_button_show_home"

.field public static final SOFT_BUTTON_SHOW_MENU:Ljava/lang/String; = "soft_button_show_menu"

.field public static final SOFT_BUTTON_SHOW_QUICK_NA:Ljava/lang/String; = "soft_button_show_quick_na"

.field public static final SOFT_BUTTON_SHOW_SEARCH:Ljava/lang/String; = "soft_button_show_search"

.field public static final SOUND_EFFECTS_ENABLED:Ljava/lang/String; = "sound_effects_enabled"

.field public static final STATUS_BAR_AM_PM:Ljava/lang/String; = "status_bar_am_pm"

.field public static final STATUS_BAR_BATTERY:Ljava/lang/String; = "status_bar_battery"

.field public static final STATUS_BAR_BOTTOM:Ljava/lang/String; = "status_bar_bottom"

.field public static final STATUS_BAR_BRIGHTNESS_TOGGLE:Ljava/lang/String; = "status_bar_brightness_toggle"

.field public static final STATUS_BAR_CENTERCLOCK:Ljava/lang/String; = "status_bar_centerclock"

.field public static final STATUS_BAR_CLOCK:Ljava/lang/String; = "status_bar_clock"

.field public static final STATUS_BAR_CLOCKCOLOR:Ljava/lang/String; = "status_bar_clockcolor"

.field public static final STATUS_BAR_CM_SIGNAL_TEXT:Ljava/lang/String; = "status_bar_cm_signal"

.field public static final STATUS_BAR_COLOR:Ljava/lang/String; = "status_bar_color"

.field public static final STATUS_BAR_COMPACT_CARRIER:Ljava/lang/String; = "status_bar_compact_carrier"

.field public static final STATUS_BAR_DEAD_ZONE:Ljava/lang/String; = "status_bar_dead_zone"

.field public static final STATUS_BAR_HEADSET:Ljava/lang/String; = "status_bar_headset"

.field public static final STATUS_BAR_LOCKSCREENCOLOR:Ljava/lang/String; = "status_bar_lockscreencolor"

.field public static final STAY_ON_WHILE_PLUGGED_IN:Ljava/lang/String; = "stay_on_while_plugged_in"

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_system_version"

.field public static final TEXT_AUTO_CAPS:Ljava/lang/String; = "auto_caps"

.field public static final TEXT_AUTO_PUNCTUATE:Ljava/lang/String; = "auto_punctuate"

.field public static final TEXT_AUTO_REPLACE:Ljava/lang/String; = "auto_replace"

.field public static final TEXT_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field public static final TIME_12_24:Ljava/lang/String; = "time_12_24"

.field public static final TORCH_STATE:Ljava/lang/String; = "torch_state"

.field public static final TRACKBALL_NOTIFICATION_BLEND_COLOR:Ljava/lang/String; = "trackball_blend_color"

.field public static final TRACKBALL_NOTIFICATION_PULSE_ORDER:Ljava/lang/String; = "trackball_pulse_in_order"

.field public static final TRACKBALL_NOTIFICATION_RANDOM:Ljava/lang/String; = "trackball_random_colors"

.field public static final TRACKBALL_NOTIFICATION_SUCCESSION:Ljava/lang/String; = "trackball_sucession"

.field public static final TRACKBALL_SCREEN_ON:Ljava/lang/String; = "trackball_screen_on"

.field public static final TRACKBALL_UNLOCK_SCREEN:Ljava/lang/String; = "trackball_unlock_screen"

.field public static final TRACKBALL_WAKE_SCREEN:Ljava/lang/String; = "trackball_wake_screen"

.field public static final TRANSITION_ANIMATION_SCALE:Ljava/lang/String; = "transition_animation_scale"

.field public static final TRANSPARENT_NOTIFICATION_BACKGROUND:Ljava/lang/String; = "transparent_notification_background"

.field public static final TRANSPARENT_STATUS_BAR:Ljava/lang/String; = "transparent_status_bar"

.field public static final TTY_MODE:Ljava/lang/String; = "tty_mode"

.field public static final UNHIDE_BUTTON:Ljava/lang/String; = "unhide_button"

.field public static final UNLOCK_SOUND:Ljava/lang/String; = "unlock_sound"

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_DEFINED_KEY1_APP:Ljava/lang/String; = "user_defined_key1_app"

.field public static final USER_DEFINED_KEY2_APP:Ljava/lang/String; = "user_defined_key2_app"

.field public static final USER_DEFINED_KEY3_APP:Ljava/lang/String; = "user_defined_key3_app"

.field public static final USER_DEFINED_KEY_ENVELOPE:Ljava/lang/String; = "user_defined_key_envelope"

.field public static final USER_DEFINED_KEY_EXPLORER:Ljava/lang/String; = "user_defined_key_explorer"

.field public static final USE_CUSTOM_APP:Ljava/lang/String; = "use_custom_app"

.field public static final USE_CUSTOM_LONG_MENU:Ljava/lang/String; = "use_custom_long_press_menu"

.field public static final USE_CUSTOM_LONG_MENU_APP_ACTIVITY:Ljava/lang/String; = "use_custom_long_menu_app_activity"

.field public static final USE_CUSTOM_LONG_SEARCH_APP_ACTIVITY:Ljava/lang/String; = "use_custom_long_search_app_activity"

.field public static final USE_CUSTOM_LONG_SEARCH_APP_TOGGLE:Ljava/lang/String; = "use_custom_long_search_app_toggle"

.field public static final USE_CUSTOM_SEARCH_APP_ACTIVITY:Ljava/lang/String; = "use_custom_search_app_activity"

.field public static final USE_CUSTOM_SEARCH_APP_TOGGLE:Ljava/lang/String; = "use_custom_search_app_toggle"

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIBRATE_IN_CALL:Ljava/lang/String; = "vibrate-in-call"

.field public static final VIBRATE_IN_SILENT:Ljava/lang/String; = "vibrate_in_silent"

.field public static final VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field public static final VOLBTN_MUSIC_CONTROLS:Ljava/lang/String; = "volbtn_music_controls"

.field public static final VOLUME_ALARM:Ljava/lang/String; = "volume_alarm"

.field public static final VOLUME_BLUETOOTH_SCO:Ljava/lang/String; = "volume_bluetooth_sco"

.field public static final VOLUME_CONTROL_SILENT:Ljava/lang/String; = "volume_contol_silent"

.field public static final VOLUME_MUSIC:Ljava/lang/String; = "volume_music"

.field public static final VOLUME_NOTIFICATION:Ljava/lang/String; = "volume_notification"

.field public static final VOLUME_RING:Ljava/lang/String; = "volume_ring"

.field public static final VOLUME_SETTINGS:[Ljava/lang/String; = null

.field public static final VOLUME_SYSTEM:Ljava/lang/String; = "volume_system"

.field public static final VOLUME_VOICE:Ljava/lang/String; = "volume_voice"

.field public static final VOLUME_WAKE_SCREEN:Ljava/lang/String; = "volume_wake_screen"

.field public static final VOL_BOTH_ACTION:Ljava/lang/String; = "vol_both_action"

.field public static final WAIT_FOR_DEBUGGER:Ljava/lang/String; = "wait_for_debugger"

.field public static final WALLPAPER_ACTIVITY:Ljava/lang/String; = "wallpaper_activity"

.field public static final WEB_VIEW_PINCH_REFLOW:Ljava/lang/String; = "web_view_pinch_reflow"

.field public static final WIDGET_BUTTONS:Ljava/lang/String; = "expanded_widget_buttons"

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NUM_ALLOWED_CHANNELS:Ljava/lang/String; = "wifi_num_allowed_channels"

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY:Ljava/lang/String; = "wifi_sleep_policy"

.field public static final WIFI_SLEEP_POLICY_DEFAULT:I = 0x0

.field public static final WIFI_SLEEP_POLICY_NEVER:I = 0x2

.field public static final WIFI_SLEEP_POLICY_NEVER_WHILE_PLUGGED:I = 0x1

.field public static final WIFI_STATIC_DNS1:Ljava/lang/String; = "wifi_static_dns1"

.field public static final WIFI_STATIC_DNS2:Ljava/lang/String; = "wifi_static_dns2"

.field public static final WIFI_STATIC_GATEWAY:Ljava/lang/String; = "wifi_static_gateway"

.field public static final WIFI_STATIC_IP:Ljava/lang/String; = "wifi_static_ip"

.field public static final WIFI_STATIC_NETMASK:Ljava/lang/String; = "wifi_static_netmask"

.field public static final WIFI_USE_STATIC_IP:Ljava/lang/String; = "wifi_use_static_ip"

.field public static final WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_ANIMATION_SCALE:Ljava/lang/String; = "window_animation_scale"

.field private static sNameValueCache:Landroid/provider/Settings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 708
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 712
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    .line 713
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "adb_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 714
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 715
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "bluetooth_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 716
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "data_roaming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 717
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "device_provisioned"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 718
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 719
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "install_non_market_apps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 720
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "location_providers_allowed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 721
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_autolock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 722
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_visible_pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 723
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_tactile_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 724
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "logging_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 725
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "parental_control_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 726
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "parental_control_last_update"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 727
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "parental_control_redirect_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 728
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "settings_classname"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 729
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "usb_mass_storage_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 730
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "use_google_mail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 731
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 732
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 733
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_num_open_networks_kept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 734
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 735
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_acceptable_packet_loss_percentage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 736
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_ap_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 737
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_background_check_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 738
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_background_check_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 739
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_background_check_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 740
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_initial_ignored_ping_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 741
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_max_ap_checks"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 742
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 743
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_ping_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 744
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_ping_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 745
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_ping_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1118
    const-string v0, "content://settings/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1117
    sput-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 1719
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 1720
    const-string/jumbo v1, "volume_voice"

    aput-object v1, v0, v3

    const-string/jumbo v1, "volume_system"

    aput-object v1, v0, v4

    const-string/jumbo v1, "volume_ring"

    aput-object v1, v0, v5

    const-string/jumbo v1, "volume_music"

    aput-object v1, v0, v6

    .line 1721
    const-string/jumbo v1, "volume_alarm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "volume_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "volume_bluetooth_sco"

    aput-object v2, v0, v1

    .line 1719
    sput-object v0, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    .line 1750
    const-string/jumbo v0, "ringtone"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 1766
    const-string v0, "notification_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 1782
    const-string v0, "alarm_alert"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 2620
    new-array v0, v7, [Ljava/lang/String;

    .line 2621
    const-string v1, "lockscreen_custom_app_activity_1"

    aput-object v1, v0, v3

    .line 2622
    const-string v1, "lockscreen_custom_app_activity_2"

    aput-object v1, v0, v4

    .line 2623
    const-string v1, "lockscreen_custom_app_activity_3"

    aput-object v1, v0, v5

    .line 2624
    const-string v1, "lockscreen_custom_app_activity_4"

    aput-object v1, v0, v6

    .line 2620
    sput-object v0, Landroid/provider/Settings$System;->LOCKSCREEN_CUSTOM_RING_APP_ACTIVITIES:[Ljava/lang/String;

    .line 3072
    const/16 v0, 0x50

    new-array v0, v0, [Ljava/lang/String;

    .line 3073
    const-string/jumbo v1, "stay_on_while_plugged_in"

    aput-object v1, v0, v3

    .line 3074
    const-string/jumbo v1, "wifi_sleep_policy"

    aput-object v1, v0, v4

    .line 3075
    const-string/jumbo v1, "wifi_use_static_ip"

    aput-object v1, v0, v5

    .line 3076
    const-string/jumbo v1, "wifi_static_ip"

    aput-object v1, v0, v6

    .line 3077
    const-string/jumbo v1, "wifi_static_gateway"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 3078
    const-string/jumbo v2, "wifi_static_netmask"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 3079
    const-string/jumbo v2, "wifi_static_dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 3080
    const-string/jumbo v2, "wifi_static_dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 3081
    const-string v2, "bluetooth_discoverability"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 3082
    const-string v2, "bluetooth_discoverability_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 3083
    const-string v2, "dim_screen"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 3084
    const-string/jumbo v2, "screen_off_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 3085
    const-string/jumbo v2, "screen_brightness"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 3086
    const-string/jumbo v2, "screen_brightness_mode"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 3087
    const-string/jumbo v2, "vibrate_on"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 3088
    const-string v2, "notifications_use_ring_volume"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 3089
    const-string v2, "mode_ringer"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 3090
    const-string v2, "mode_ringer_streams_affected"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 3091
    const-string v2, "mute_streams_affected"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 3092
    const-string/jumbo v2, "volume_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 3093
    const-string/jumbo v2, "volume_system"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 3094
    const-string/jumbo v2, "volume_ring"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 3095
    const-string/jumbo v2, "volume_music"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 3096
    const-string/jumbo v2, "volume_alarm"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 3097
    const-string/jumbo v2, "volume_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 3098
    const-string/jumbo v2, "volume_bluetooth_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 3099
    const-string/jumbo v2, "volume_voice_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 3100
    const-string/jumbo v2, "volume_system_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 3101
    const-string/jumbo v2, "volume_ring_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 3102
    const-string/jumbo v2, "volume_music_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 3103
    const-string/jumbo v2, "volume_alarm_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 3104
    const-string/jumbo v2, "volume_notification_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 3105
    const-string/jumbo v2, "volume_bluetooth_sco_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 3106
    const-string/jumbo v2, "vibrate_in_silent"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 3107
    const-string/jumbo v2, "volume_contol_silent"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 3108
    const-string v2, "auto_replace"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 3109
    const-string v2, "auto_caps"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 3110
    const-string v2, "auto_punctuate"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 3111
    const-string/jumbo v2, "show_password"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 3112
    const-string v2, "auto_time"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 3113
    const-string/jumbo v2, "time_12_24"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 3114
    const-string v2, "date_format"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 3115
    const-string v2, "accelerometer_rotation"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 3116
    const-string v2, "accelerometer_rotation_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 3117
    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 3118
    const-string v2, "dtmf_tone_type"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 3119
    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 3120
    const-string v2, "call_auto_retry"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 3121
    const-string v2, "hearing_aid"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 3122
    const-string/jumbo v2, "tty_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 3123
    const-string/jumbo v2, "sound_effects_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 3124
    const-string v2, "haptic_feedback_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 3125
    const-string/jumbo v2, "power_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 3126
    const-string v2, "dock_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 3127
    const-string v2, "lockscreen_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 3128
    const-string/jumbo v2, "show_web_suggestions"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 3129
    const-string v2, "notification_light_pulse"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 3130
    const-string/jumbo v2, "sip_call_options"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 3131
    const-string/jumbo v2, "sip_receive_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 3132
    const-string v2, "notification_light_blink"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 3133
    const-string v2, "notification_light_always_on"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 3134
    const-string v2, "notification_light_charging"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 3135
    const-string/jumbo v2, "quiet_hours_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    .line 3136
    const-string/jumbo v2, "quiet_hours_start"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 3137
    const-string/jumbo v2, "quiet_hours_end"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 3138
    const-string/jumbo v2, "quiet_hours_mute"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 3139
    const-string/jumbo v2, "quiet_hours_still"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    .line 3140
    const-string/jumbo v2, "quiet_hours_dim"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 3141
    const-string v2, "haptic_feedback_up_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    .line 3142
    const-string v2, "haptic_feedback_all_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 3143
    const-string v2, "haptic_down_array"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    .line 3144
    const-string v2, "haptic_up_array"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 3145
    const-string v2, "haptic_long_array"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 3146
    const-string v2, "haptic_down_array_default"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    .line 3147
    const-string v2, "haptic_up_array_default"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 3148
    const-string v2, "haptic_long_array_default"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 3149
    const-string v2, "haptic_tap_array"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    .line 3150
    const-string v2, "haptic_tap_array_default"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    .line 3151
    const-string v2, "lockscreen_gestures_sensitivity"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    .line 3152
    const-string v2, "lockscreen_gestures_color"

    aput-object v2, v0, v1

    .line 3072
    sput-object v0, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 704
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1082
    .line 1083
    const-string v0, "font_scale"

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1082
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1084
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1085
    const/high16 v0, 0x3f80

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1087
    :cond_0
    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 1048
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1050
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1052
    :catch_0
    move-exception v0

    new-instance v0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1020
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1024
    :goto_0
    return v0

    :cond_0
    move v0, p2

    .line 1022
    goto :goto_0

    .line 1024
    :catch_0
    move-exception v0

    move v0, p2

    goto :goto_0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 841
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 845
    :catch_0
    move-exception v0

    new-instance v0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 813
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 817
    :goto_0
    return v0

    :cond_0
    move v0, p2

    .line 815
    goto :goto_0

    .line 817
    :catch_0
    move-exception v0

    move v0, p2

    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 910
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 912
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 914
    :catch_0
    move-exception v0

    new-instance v0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 881
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 884
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 888
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p2

    .line 884
    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    move-wide v0, p2

    goto :goto_0
.end method

.method public static getLongArray(Landroid/content/ContentResolver;Ljava/lang/String;)[J
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 982
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 984
    :try_start_0
    invoke-static {v0}, Landroid/provider/Settings$System;->stringToLongArray(Ljava/lang/String;)[J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 986
    :catch_0
    move-exception v0

    new-instance v0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLongArray(Landroid/content/ContentResolver;Ljava/lang/String;[J)[J
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 951
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 955
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Landroid/provider/Settings$System;->stringToLongArray(Ljava/lang/String;)[J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 959
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    .line 955
    goto :goto_0

    .line 957
    :catch_0
    move-exception v0

    move-object v0, p2

    goto :goto_0
.end method

.method public static getShowGTalkServiceStatus(Landroid/content/ContentResolver;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1107
    const-string v0, "SHOW_GTALK_SERVICE_STATUS"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 755
    const-class v0, Landroid/provider/Settings$System;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has moved from android.provider.Settings.System"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 757
    const-string v3, " to android.provider.Settings.Secure, returning read-only value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 756
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 764
    :goto_0
    monitor-exit v0

    return-object v1

    .line 760
    :cond_0
    :try_start_1
    sget-object v1, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    if-nez v1, :cond_1

    .line 761
    new-instance v1, Landroid/provider/Settings$NameValueCache;

    const-string/jumbo v2, "sys.settings_system_version"

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 762
    const-string v4, "GET_system"

    .line 761
    invoke-direct {v1, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v1, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 764
    :cond_1
    sget-object v1, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v1, p0, p1}, Landroid/provider/Settings$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 755
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 790
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 792
    const-string v2, " to android.provider.Settings.Secure, returning Secure URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 791
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 795
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasInterestingConfigurationChanges(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1103
    const/high16 v0, 0x4000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1098
    const-string v0, "font_scale"

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1070
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 863
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 932
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 775
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 777
    const-string v2, " to android.provider.Settings.Secure, value is unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 776
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v0, 0x0

    .line 780
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setShowGTalkServiceStatus(Landroid/content/ContentResolver;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1111
    const-string v0, "SHOW_GTALK_SERVICE_STATUS"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1112
    return-void

    .line 1111
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static stringToLongArray(Ljava/lang/String;)[J
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 992
    if-nez p0, :cond_0

    .line 993
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 995
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 996
    array-length v1, v0

    .line 997
    new-array v2, v1, [J

    .line 999
    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_1

    .line 1002
    return-object v2

    .line 1000
    :cond_1
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 999
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
