.class public Lcom/android/settings/WirelessSettings;
.super Landroid/preference/PreferenceActivity;
.source "WirelessSettings.java"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mTelMan:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 135
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 141
    :goto_0
    return v1

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 278
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 279
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 281
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 284
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    const v12, 0x7f040039

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v13, "synchronise"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    const-string v12, "toggle_airplane"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 155
    .local v0, airplane:Landroid/preference/CheckBoxPreference;
    const-string v12, "toggle_wifi"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    .line 156
    .local v10, wifi:Landroid/preference/CheckBoxPreference;
    const-string v12, "toggle_bluetooth"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 157
    .local v1, bt:Landroid/preference/CheckBoxPreference;
    const-string v12, "toggle_nfc"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 159
    .local v4, nfc:Landroid/preference/CheckBoxPreference;
    new-instance v12, Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {v12, p0, v0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v12, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 160
    const-string v12, "toggle_airplane"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "airplane_mode_toggleable_radios"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, toggleable:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10d001f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 171
    .local v3, isWimaxEnabled:Z
    if-nez v3, :cond_6

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 173
    .local v7, root:Landroid/preference/PreferenceScreen;
    const-string v12, "wimax_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 174
    .local v6, ps:Landroid/preference/Preference;
    if-eqz v6, :cond_0

    .line 175
    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    .end local v6           #ps:Landroid/preference/Preference;
    .end local v7           #root:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    const-string v12, "wifi"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 186
    :cond_1
    const-string v12, "toggle_airplane"

    invoke-virtual {v10, v12}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 187
    const-string v12, "wifi_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    const-string v13, "toggle_airplane"

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 188
    const-string v12, "vpn_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    const-string v13, "toggle_airplane"

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 192
    :cond_2
    if-eqz v8, :cond_3

    const-string v12, "bluetooth"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 195
    :cond_3
    const-string v12, "bt_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    const-string v13, "toggle_airplane"

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 199
    :cond_4
    const-string v12, "bluetooth"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    if-nez v12, :cond_5

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 205
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    const-string v12, "connectivity"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 211
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v12

    if-nez v12, :cond_8

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v13, "tether_settings"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 230
    :goto_1
    return-void

    .line 177
    .end local v2           #cm:Landroid/net/ConnectivityManager;
    :cond_6
    if-eqz v8, :cond_7

    const-string v12, "wimax"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz v3, :cond_0

    .line 179
    :cond_7
    const-string v12, "wimax_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 180
    .restart local v6       #ps:Landroid/preference/Preference;
    const-string v12, "toggle_airplane"

    invoke-virtual {v6, v12}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    .end local v6           #ps:Landroid/preference/Preference;
    .restart local v2       #cm:Landroid/net/ConnectivityManager;
    :cond_8
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, usbRegexs:[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v11

    .line 216
    .local v11, wifiRegexs:[Ljava/lang/String;
    const-string v12, "tether_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 217
    .local v5, p:Landroid/preference/Preference;
    array-length v12, v11

    if-nez v12, :cond_9

    .line 218
    const v12, 0x7f0802a3

    invoke-virtual {v5, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 219
    const v12, 0x7f0802a6

    invoke-virtual {v5, v12}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 221
    :cond_9
    array-length v12, v9

    if-nez v12, :cond_a

    .line 222
    const v12, 0x7f0802a4

    invoke-virtual {v5, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 223
    const v12, 0x7f0802a7

    invoke-virtual {v5, v12}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 225
    :cond_a
    const v12, 0x7f0802a5

    invoke-virtual {v5, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 226
    const v12, 0x7f0802a8

    invoke-virtual {v5, v12}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 270
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 274
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 82
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, key:Ljava/lang/String;
    const-string v3, "network_settings"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/WirelessSettings;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 87
    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 91
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v2, mInsertSimPopup:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 94
    const v3, 0x7f0804f7

    invoke-virtual {p0, v3}, Lcom/android/settings/WirelessSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 95
    const v3, 0x7f0804f8

    invoke-virtual {p0, v3}, Lcom/android/settings/WirelessSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 96
    const v3, 0x7f080327

    new-instance v4, Lcom/android/settings/WirelessSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/WirelessSettings$1;-><init>(Lcom/android/settings/WirelessSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 103
    new-instance v3, Lcom/android/settings/WirelessSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/WirelessSettings$2;-><init>(Lcom/android/settings/WirelessSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v3, v6

    .line 131
    .end local v2           #mInsertSimPopup:Landroid/app/AlertDialog$Builder;
    :goto_0
    return v3

    .line 114
    :cond_1
    const-string v3, "synchronise"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v3, "com.smlds"

    const-string v4, "com.smlds.smluiMenuList_eu_open"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 122
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 125
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v6

    .line 128
    goto :goto_0

    :cond_3
    move v3, v5

    .line 131
    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 236
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 264
    return-void
.end method
