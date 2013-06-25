.class public final Landroid/provider/Settings$Secure;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# static fields
.field public static final ACCESSIBILITY_ENABLED:Ljava/lang/String; = "accessibility_enabled"

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"

.field public static final ADB_NOTIFY:Ljava/lang/String; = "adb_notify"

.field public static final ADB_PORT:Ljava/lang/String; = "adb_port"

.field public static final ALLOWED_GEOLOCATION_ORIGINS:Ljava/lang/String; = "allowed_geolocation_origins"

.field public static final ALLOW_MOCK_LOCATION:Ljava/lang/String; = "mock_location"

.field public static final ALLOW_MOVE_ALL_APPS_EXTERNAL:Ljava/lang/String; = "allow_move_all_apps_external"

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"

.field public static final ANR_SHOW_BACKGROUND:Ljava/lang/String; = "anr_show_background"

.field public static final ASSISTED_GPS_ENABLED:Ljava/lang/String; = "assisted_gps_enabled"

.field public static final BACKGROUND_DATA:Ljava/lang/String; = "background_data"

.field public static final BACKUP_AUTO_RESTORE:Ljava/lang/String; = "backup_auto_restore"

.field public static final BACKUP_ENABLED:Ljava/lang/String; = "backup_enabled"

.field public static final BACKUP_PROVISIONED:Ljava/lang/String; = "backup_provisioned"

.field public static final BACKUP_TRANSPORT:Ljava/lang/String; = "backup_transport"

.field public static final BATTERY_DISCHARGE_DURATION_THRESHOLD:Ljava/lang/String; = "battery_discharge_duration_threshold"

.field public static final BATTERY_DISCHARGE_THRESHOLD:Ljava/lang/String; = "battery_discharge_threshold"

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"

.field public static final CDMA_CELL_BROADCAST_SMS:Ljava/lang/String; = "cdma_cell_broadcast_sms"

.field public static final CDMA_ROAMING_MODE:Ljava/lang/String; = "roaming_settings"

.field public static final CDMA_SUBSCRIPTION_MODE:Ljava/lang/String; = "subscription_mode"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DEFAULT_INPUT_METHOD:Ljava/lang/String; = "default_input_method"

.field public static final DEFAULT_INSTALL_LOCATION:Ljava/lang/String; = "default_install_location"

.field public static final DEVICE_HOSTNAME:Ljava/lang/String; = "device_hostname"

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"

.field public static final DISABLED_SYSTEM_INPUT_METHODS:Ljava/lang/String; = "disabled_system_input_methods"

.field public static final DISK_FREE_CHANGE_REPORTING_THRESHOLD:Ljava/lang/String; = "disk_free_change_reporting_threshold"

.field public static final DOWNLOAD_MAX_BYTES_OVER_MOBILE:Ljava/lang/String; = "download_manager_max_bytes_over_mobile"

.field public static final DOWNLOAD_RECOMMENDED_MAX_BYTES_OVER_MOBILE:Ljava/lang/String; = "download_manager_recommended_max_bytes_over_mobile"

.field public static final DROPBOX_AGE_SECONDS:Ljava/lang/String; = "dropbox_age_seconds"

.field public static final DROPBOX_MAX_FILES:Ljava/lang/String; = "dropbox_max_files"

.field public static final DROPBOX_QUOTA_KB:Ljava/lang/String; = "dropbox_quota_kb"

.field public static final DROPBOX_QUOTA_PERCENT:Ljava/lang/String; = "dropbox_quota_percent"

.field public static final DROPBOX_RESERVE_PERCENT:Ljava/lang/String; = "dropbox_reserve_percent"

.field public static final DROPBOX_TAG_PREFIX:Ljava/lang/String; = "dropbox:"

.field public static final ENABLED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "enabled_accessibility_services"

.field public static final ENABLED_INPUT_METHODS:Ljava/lang/String; = "enabled_input_methods"

.field public static final ENABLE_PERMISSIONS_MANAGEMENT:Ljava/lang/String; = "enable_permissions_management"

.field public static final ENHANCED_VOICE_PRIVACY_ENABLED:Ljava/lang/String; = "enhanced_voice_privacy_enabled"

.field public static final ERROR_LOGCAT_PREFIX:Ljava/lang/String; = "logcat_for_"

.field public static final EXTERNAL_GPS_BT_DEVICE:Ljava/lang/String; = "0"

.field public static final GPRS_REGISTER_CHECK_PERIOD_MS:Ljava/lang/String; = "gprs_register_check_period_ms"

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"

.field public static final INCALL_POWER_BUTTON_BEHAVIOR:Ljava/lang/String; = "incall_power_button_behavior"

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_DEFAULT:I = 0x1

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_HANGUP:I = 0x2

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_SCREEN_OFF:I = 0x1

.field public static final INET_CONDITION_DEBOUNCE_DOWN_DELAY:Ljava/lang/String; = "inet_condition_debounce_down_delay"

.field public static final INET_CONDITION_DEBOUNCE_UP_DELAY:Ljava/lang/String; = "inet_condition_debounce_up_delay"

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"

.field public static final KILL_APP_LONGPRESS_BACK:Ljava/lang/String; = "kill_app_on_longpress_back"

.field public static final LAST_SETUP_SHOWN:Ljava/lang/String; = "last_setup_shown"

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"

.field public static final LOCK_CUSTOM_MSG:Ljava/lang/String; = "lock_screen_custom_msg"

.field public static final LOCK_DOTS_VISIBLE:Ljava/lang/String; = "lock_pattern_dotsvisible"

.field public static final LOCK_INCORRECT_DELAY:Ljava/lang/String; = "lock_pattern_incorrect_delay"

.field public static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"

.field public static final LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"

.field public static final LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"

.field public static final LOCK_SHOW_CUSTOM_MSG:Ljava/lang/String; = "lock_screen_show_custom_msg"

.field public static final LOCK_SHOW_ERROR_PATH:Ljava/lang/String; = "lock_pattern_show_error_path"

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMCHECK_EXEC_END_TIME:Ljava/lang/String; = "memcheck_exec_end_time"

.field public static final MEMCHECK_EXEC_START_TIME:Ljava/lang/String; = "memcheck_exec_start_time"

.field public static final MEMCHECK_INTERVAL:Ljava/lang/String; = "memcheck_interval"

.field public static final MEMCHECK_LOG_REALTIME_INTERVAL:Ljava/lang/String; = "memcheck_log_realtime_interval"

.field public static final MEMCHECK_MIN_ALARM:Ljava/lang/String; = "memcheck_min_alarm"

.field public static final MEMCHECK_MIN_SCREEN_OFF:Ljava/lang/String; = "memcheck_min_screen_off"

.field public static final MEMCHECK_PHONE_ENABLED:Ljava/lang/String; = "memcheck_phone_enabled"

.field public static final MEMCHECK_PHONE_HARD_THRESHOLD:Ljava/lang/String; = "memcheck_phone_hard"

.field public static final MEMCHECK_PHONE_SOFT_THRESHOLD:Ljava/lang/String; = "memcheck_phone_soft"

.field public static final MEMCHECK_RECHECK_INTERVAL:Ljava/lang/String; = "memcheck_recheck_interval"

.field public static final MEMCHECK_SYSTEM_ENABLED:Ljava/lang/String; = "memcheck_system_enabled"

.field public static final MEMCHECK_SYSTEM_HARD_THRESHOLD:Ljava/lang/String; = "memcheck_system_hard"

.field public static final MEMCHECK_SYSTEM_SOFT_THRESHOLD:Ljava/lang/String; = "memcheck_system_soft"

.field public static final MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field public static final MOUNT_PLAY_NOTIFICATION_SND:Ljava/lang/String; = "mount_play_not_snd"

.field public static final MOUNT_UMS_AUTOSTART:Ljava/lang/String; = "mount_ums_autostart"

.field public static final MOUNT_UMS_NOTIFY_ENABLED:Ljava/lang/String; = "mount_ums_notify_enabled"

.field public static final MOUNT_UMS_PROMPT:Ljava/lang/String; = "mount_ums_prompt"

.field public static final MVNO_ROAMING:Ljava/lang/String; = "button_mvno_roaming_key"

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"

.field public static final NITZ_UPDATE_DIFF:Ljava/lang/String; = "nitz_update_diff"

.field public static final NITZ_UPDATE_SPACING:Ljava/lang/String; = "nitz_update_spacing"

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"

.field public static final PDP_WATCHDOG_ERROR_POLL_COUNT:Ljava/lang/String; = "pdp_watchdog_error_poll_count"

.field public static final PDP_WATCHDOG_ERROR_POLL_INTERVAL_MS:Ljava/lang/String; = "pdp_watchdog_error_poll_interval_ms"

.field public static final PDP_WATCHDOG_LONG_POLL_INTERVAL_MS:Ljava/lang/String; = "pdp_watchdog_long_poll_interval_ms"

.field public static final PDP_WATCHDOG_MAX_PDP_RESET_FAIL_COUNT:Ljava/lang/String; = "pdp_watchdog_max_pdp_reset_fail_count"

.field public static final PDP_WATCHDOG_PING_ADDRESS:Ljava/lang/String; = "pdp_watchdog_ping_address"

.field public static final PDP_WATCHDOG_PING_DEADLINE:Ljava/lang/String; = "pdp_watchdog_ping_deadline"

.field public static final PDP_WATCHDOG_POLL_INTERVAL_MS:Ljava/lang/String; = "pdp_watchdog_poll_interval_ms"

.field public static final PDP_WATCHDOG_TRIGGER_PACKET_COUNT:Ljava/lang/String; = "pdp_watchdog_trigger_packet_count"

.field public static final PREFERRED_CDMA_SUBSCRIPTION:Ljava/lang/String; = "preferred_cdma_subscription"

.field public static final PREFERRED_NETWORK_MODE:Ljava/lang/String; = "preferred_network_mode"

.field public static final PREFERRED_TTY_MODE:Ljava/lang/String; = "preferred_tty_mode"

.field public static final REBOOT_INTERVAL:Ljava/lang/String; = "reboot_interval"

.field public static final REBOOT_START_TIME:Ljava/lang/String; = "reboot_start_time"

.field public static final REBOOT_WINDOW:Ljava/lang/String; = "reboot_window"

.field public static final SEARCH_MAX_RESULTS_PER_SOURCE:Ljava/lang/String; = "search_max_results_per_source"

.field public static final SEARCH_MAX_RESULTS_TO_DISPLAY:Ljava/lang/String; = "search_max_results_to_display"

.field public static final SEARCH_MAX_SHORTCUTS_RETURNED:Ljava/lang/String; = "search_max_shortcuts_returned"

.field public static final SEARCH_MAX_SOURCE_EVENT_AGE_MILLIS:Ljava/lang/String; = "search_max_source_event_age_millis"

.field public static final SEARCH_MAX_STAT_AGE_MILLIS:Ljava/lang/String; = "search_max_stat_age_millis"

.field public static final SEARCH_MIN_CLICKS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_clicks_for_source_ranking"

.field public static final SEARCH_MIN_IMPRESSIONS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_impressions_for_source_ranking"

.field public static final SEARCH_NUM_PROMOTED_SOURCES:Ljava/lang/String; = "search_num_promoted_sources"

.field public static final SEARCH_PER_SOURCE_CONCURRENT_QUERY_LIMIT:Ljava/lang/String; = "search_per_source_concurrent_query_limit"

.field public static final SEARCH_PREFILL_MILLIS:Ljava/lang/String; = "search_prefill_millis"

.field public static final SEARCH_PROMOTED_SOURCE_DEADLINE_MILLIS:Ljava/lang/String; = "search_promoted_source_deadline_millis"

.field public static final SEARCH_QUERY_THREAD_CORE_POOL_SIZE:Ljava/lang/String; = "search_query_thread_core_pool_size"

.field public static final SEARCH_QUERY_THREAD_MAX_POOL_SIZE:Ljava/lang/String; = "search_query_thread_max_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_CORE_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_core_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_MAX_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_max_pool_size"

.field public static final SEARCH_SOURCE_TIMEOUT_MILLIS:Ljava/lang/String; = "search_source_timeout_millis"

.field public static final SEARCH_THREAD_KEEPALIVE_SECONDS:Ljava/lang/String; = "search_thread_keepalive_seconds"

.field public static final SEARCH_WEB_RESULTS_OVERRIDE_LIMIT:Ljava/lang/String; = "search_web_results_override_limit"

.field public static final SEND_ACTION_APP_ERROR:Ljava/lang/String; = "send_action_app_error"

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String; = null

.field public static final SET_INSTALL_LOCATION:Ljava/lang/String; = "set_install_location"

.field public static final SHORT_KEYLIGHT_DELAY_MS:Ljava/lang/String; = "short_keylight_delay_ms"

.field public static final SHOW_UNLOCK_ERR_TEXT:Ljava/lang/String; = "lock_pattern_show_unlock_err_text"

.field public static final SHOW_UNLOCK_TEXT:Ljava/lang/String; = "lock_pattern_show_unlock_text"

.field public static final SMS_OUTGOING_CHECK_INTERVAL_MS:Ljava/lang/String; = "sms_outgoing_check_interval_ms"

.field public static final SMS_OUTGOING_CHECK_MAX_COUNT:Ljava/lang/String; = "sms_outgoing_check_max_count"

.field public static final SYNC_MAX_RETRY_DELAY_IN_SECONDS:Ljava/lang/String; = "sync_max_retry_delay_in_seconds"

.field public static final SYS_FREE_STORAGE_LOG_INTERVAL:Ljava/lang/String; = "sys_free_storage_log_interval"

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_secure_version"

.field public static final SYS_STORAGE_FULL_THRESHOLD_BYTES:Ljava/lang/String; = "sys_storage_full_threshold_bytes"

.field public static final SYS_STORAGE_THRESHOLD_PERCENTAGE:Ljava/lang/String; = "sys_storage_threshold_percentage"

.field public static final TETHER_DUN_APN:Ljava/lang/String; = "tether_dun_apn"

.field public static final TETHER_DUN_REQUIRED:Ljava/lang/String; = "tether_dun_required"

.field public static final TETHER_SUPPORTED:Ljava/lang/String; = "tether_supported"

.field public static final THROTTLE_HELP_URI:Ljava/lang/String; = "throttle_help_uri"

.field public static final THROTTLE_MAX_NTP_CACHE_AGE_SEC:Ljava/lang/String; = "throttle_max_ntp_cache_age_sec"

.field public static final THROTTLE_NOTIFICATION_TYPE:Ljava/lang/String; = "throttle_notification_type"

.field public static final THROTTLE_POLLING_SEC:Ljava/lang/String; = "throttle_polling_sec"

.field public static final THROTTLE_RESET_DAY:Ljava/lang/String; = "throttle_reset_day"

.field public static final THROTTLE_THRESHOLD_BYTES:Ljava/lang/String; = "throttle_threshold_bytes"

.field public static final THROTTLE_VALUE_KBITSPS:Ljava/lang/String; = "throttle_value_kbitsps"

.field public static final TTS_DEFAULT_COUNTRY:Ljava/lang/String; = "tts_default_country"

.field public static final TTS_DEFAULT_LANG:Ljava/lang/String; = "tts_default_lang"

.field public static final TTS_DEFAULT_PITCH:Ljava/lang/String; = "tts_default_pitch"

.field public static final TTS_DEFAULT_RATE:Ljava/lang/String; = "tts_default_rate"

.field public static final TTS_DEFAULT_SYNTH:Ljava/lang/String; = "tts_default_synth"

.field public static final TTS_DEFAULT_VARIANT:Ljava/lang/String; = "tts_default_variant"

.field public static final TTS_ENABLED_PLUGINS:Ljava/lang/String; = "tts_enabled_plugins"

.field public static final TTS_USE_DEFAULTS:Ljava/lang/String; = "tts_use_defaults"

.field public static final TTY_MODE_ENABLED:Ljava/lang/String; = "tty_mode_enabled"

.field public static final UI_NIGHT_MODE:Ljava/lang/String; = "ui_night_mode"

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"

.field public static final VOICE_RECOGNITION_SERVICE:Ljava/lang/String; = "voice_recognition_service"

.field public static final WIFI_IDLE_MS:Ljava/lang/String; = "wifi_idle_ms"

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"

.field public static final WIFI_NUM_ALLOWED_CHANNELS:Ljava/lang/String; = "wifi_num_allowed_channels"

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"

.field public static final WIFI_SAVED_STATE:Ljava/lang/String; = "wifi_saved_state"

.field public static final WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"

.field public static final WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"

.field public static final WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"

.field public static final WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"

.field public static final WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"

.field public static final WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"

.field public static final WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"

.field public static final WIFI_WATCHDOG_WATCH_LIST:Ljava/lang/String; = "wifi_watchdog_watch_list"

.field public static final WIMAX_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wimax_networks_available_notification_on"

.field public static final WIMAX_ON:Ljava/lang/String; = "wimax_on"

.field public static final WTF_IS_FATAL:Ljava/lang/String; = "wtf_is_fatal"

.field private static sNameValueCache:Landroid/provider/Settings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3396
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 3643
    const-string v0, "content://settings/secure"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3642
    sput-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 4918
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4919
    const-string v2, "adb_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 4920
    const-string v2, "mock_location"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 4921
    const-string/jumbo v2, "parental_control_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 4922
    const-string/jumbo v2, "parental_control_redirect_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 4923
    const-string/jumbo v2, "usb_mass_storage_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 4924
    const-string v2, "accessibility_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 4925
    const-string v2, "backup_auto_restore"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 4926
    const-string v2, "enabled_accessibility_services"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 4927
    const-string/jumbo v2, "tts_use_defaults"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 4928
    const-string/jumbo v2, "tts_default_rate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 4929
    const-string/jumbo v2, "tts_default_pitch"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 4930
    const-string/jumbo v2, "tts_default_synth"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 4931
    const-string/jumbo v2, "tts_default_lang"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 4932
    const-string/jumbo v2, "tts_default_country"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 4933
    const-string/jumbo v2, "tts_enabled_plugins"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 4934
    const-string/jumbo v2, "wifi_networks_available_notification_on"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 4935
    const-string/jumbo v2, "wifi_networks_available_repeat_delay"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 4936
    const-string/jumbo v2, "wifi_num_allowed_channels"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 4937
    const-string/jumbo v2, "wifi_num_open_networks_kept"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 4938
    const-string v2, "mount_play_not_snd"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 4939
    const-string v2, "mount_ums_autostart"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 4940
    const-string v2, "mount_ums_prompt"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 4941
    const-string v2, "mount_ums_notify_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 4942
    const-string/jumbo v2, "ui_night_mode"

    aput-object v2, v0, v1

    .line 4918
    sput-object v0, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 3392
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3392
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static final getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 3703
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bluetooth_a2dp_sink_priority_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 3695
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bluetooth_headset_priority_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothHidDevicePriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 3711
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bluetooth_hid_device_priority_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothHidPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 3719
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bluetooth_hid_priority_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 3614
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3616
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 3618
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
    .line 3586
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3588
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3590
    :goto_0
    return v0

    :cond_0
    move v0, p2

    .line 3588
    goto :goto_0

    .line 3590
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
    .line 3477
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3479
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 3481
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
    .line 3449
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3451
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3453
    :goto_0
    return v0

    :cond_0
    move v0, p2

    .line 3451
    goto :goto_0

    .line 3453
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
    .line 3546
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3548
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 3550
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
    .line 3517
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3520
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 3524
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p2

    .line 3520
    goto :goto_0

    .line 3522
    :catch_0
    move-exception v0

    move-wide v0, p2

    goto :goto_0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 3405
    const-class v0, Landroid/provider/Settings$Secure;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    if-nez v1, :cond_0

    .line 3406
    new-instance v1, Landroid/provider/Settings$NameValueCache;

    const-string/jumbo v2, "sys.settings_secure_version"

    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 3407
    const-string v4, "GET_secure"

    .line 3406
    invoke-direct {v1, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v1, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 3409
    :cond_0
    sget-object v1, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v1, p0, p1}, Landroid/provider/Settings$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3405
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 3431
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4952
    const-string v0, "location_providers_allowed"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4953
    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3636
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3499
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3568
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3421
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4967
    if-eqz p2, :cond_0

    .line 4968
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4972
    :goto_0
    const-string v1, "location_providers_allowed"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4973
    return-void

    .line 4970
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
