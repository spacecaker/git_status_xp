.class public Lcom/android/settings/ScreenDisplay;
.super Landroid/preference/PreferenceActivity;
.source "ScreenDisplay.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mClock:Landroid/preference/CheckBoxPreference;

.field private mClockPosition:Landroid/preference/ListPreference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

.field private mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

.field private mWeather:Landroid/preference/CheckBoxPreference;

.field private mWeatherSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private static AppServiceOff(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 225
    xor-int/lit8 p0, p0, 0x1

    .line 226
    return p0
.end method

.method private static AppServiceOn(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 220
    or-int/lit8 p0, p0, 0x1

    .line 221
    return p0
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    iget-object v1, p0, Lcom/android/settings/ScreenDisplay;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_clock"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aw_daemon_service_key_app_service_status"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v0, v1, 0x1

    .line 120
    .local v0, mAppLockScreen:I
    if-ne v0, v5, :cond_2

    .line 121
    iget-object v1, p0, Lcom/android/settings/ScreenDisplay;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 125
    :goto_1
    iget-object v1, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/ScreenDisplay;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ScreenDisplay;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v5

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "clock_position"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    return-void

    .end local v0           #mAppLockScreen:I
    :cond_1
    move v2, v4

    .line 116
    goto :goto_0

    .line 123
    .restart local v0       #mAppLockScreen:I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/ScreenDisplay;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v2, v4

    .line 125
    goto :goto_2
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 208
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/ScreenDisplay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 209
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 210
    .local v3, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 211
    .local v2, isWifiAvail:Z
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 212
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 214
    .local v1, isMobileAvail:Z
    const-string v4, "ScreenDisplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWifiAvail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isConnected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v4, v8

    :goto_0
    return v4

    :cond_1
    move v4, v7

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 49
    const-string v1, "ScreenDisplay"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    .local v0, resolver:Landroid/content/ContentResolver;
    const v1, 0x7f04003a

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenDisplay;->addPreferencesFromResource(I)V

    .line 77
    const-string v1, "clock"

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/ScreenDisplay;->mClock:Landroid/preference/CheckBoxPreference;

    .line 78
    iget-object v1, p0, Lcom/android/settings/ScreenDisplay;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 80
    const-string v1, "weather"

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/ScreenDisplay;->mWeather:Landroid/preference/CheckBoxPreference;

    .line 81
    iget-object v1, p0, Lcom/android/settings/ScreenDisplay;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 91
    const-string v1, "watehr_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/ScreenDisplay;->mWeatherSettings:Landroid/preference/PreferenceScreen;

    .line 55
    const-string v1, "clock_position"

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    .line 56
    iget-object v1, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    const-string v1, "homescreen_wallpaper"

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/ScreenDisplay;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    .line 59
    const-string v1, "lockscreen_wallpaper"

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/ScreenDisplay;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    .line 61
    iput-object v0, p0, Lcom/android/settings/ScreenDisplay;->mContentResolver:Landroid/content/ContentResolver;

    .line 62
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const-string v4, "clock_position"

    .line 101
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, key:Ljava/lang/String;
    const-string v3, "clock_position"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 105
    .local v2, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "clock_position"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    iget-object v3, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v2           #value:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 110
    .restart local v2       #value:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 111
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "ScreenDisplay"

    const-string v4, "could not persist Clock position value"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v11, "network"

    const-string v10, "lockscreen_shortcuts"

    const-string v7, "aw_daemon_service_key_app_service_status"

    .line 136
    iget-object v5, p0, Lcom/android/settings/ScreenDisplay;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 137
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v4, pickWallpaper:Landroid/content/Intent;
    const v5, 0x7f090599

    invoke-virtual {p0, v5}, Lcom/android/settings/ScreenDisplay;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/ScreenDisplay;->startActivity(Landroid/content/Intent;)V

    move v5, v9

    .line 187
    .end local v4           #pickWallpaper:Landroid/content/Intent;
    :goto_0
    return v5

    .line 141
    :cond_0
    iget-object v5, p0, Lcom/android/settings/ScreenDisplay;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v9

    .line 142
    goto :goto_0

    .line 143
    :cond_1
    iget-object v5, p0, Lcom/android/settings/ScreenDisplay;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "show_clock"

    iget-object v7, p0, Lcom/android/settings/ScreenDisplay;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v8

    :goto_1
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    invoke-direct {p0}, Lcom/android/settings/ScreenDisplay;->updateState()V

    :goto_2
    move v5, v8

    .line 187
    goto :goto_0

    :cond_2
    move v7, v9

    .line 144
    goto :goto_1

    .line 146
    :cond_3
    iget-object v5, p0, Lcom/android/settings/ScreenDisplay;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 147
    iget-object v5, p0, Lcom/android/settings/ScreenDisplay;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->checkNetwork()Z

    move-result v5

    if-nez v5, :cond_4

    .line 148
    const v5, 0x7f0906bb

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 150
    :cond_4
    iget-object v5, p0, Lcom/android/settings/ScreenDisplay;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "network"

    invoke-static {v5, v11}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 152
    iget-object v5, p0, Lcom/android/settings/ScreenDisplay;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "network"

    invoke-static {v5, v11, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 154
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, gpsOptionIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenDisplay;->startActivity(Landroid/content/Intent;)V

    move v5, v8

    .line 156
    goto :goto_0

    .line 160
    .end local v1           #gpsOptionIntent:Landroid/content/Intent;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/ScreenDisplay;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_app_service_status"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/settings/ScreenDisplay;->AppServiceOn(I)I

    move-result v3

    .line 167
    .local v3, mAppServiceStatus:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_app_service_status"

    invoke-static {v5, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/settings/ScreenDisplay;->sendBroadcast(Landroid/content/Intent;)V

    .line 169
    invoke-direct {p0}, Lcom/android/settings/ScreenDisplay;->updateState()V

    goto :goto_2

    .line 164
    .end local v3           #mAppServiceStatus:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aw_daemon_service_key_app_service_status"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/settings/ScreenDisplay;->AppServiceOff(I)I

    move-result v3

    .restart local v3       #mAppServiceStatus:I
    goto :goto_3

    .line 170
    .end local v3           #mAppServiceStatus:I
    :cond_7
    iget-object v5, p0, Lcom/android/settings/ScreenDisplay;->mWeatherSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 171
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 172
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v5, "SETTING_MODE"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.daemonapp.accuweather"

    const-string v6, "com.sec.android.daemonapp.accuweather.MenuSettings"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenDisplay;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 177
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_8
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/ScreenDisplay;->updateState()V

    .line 69
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 74
    return-void
.end method
