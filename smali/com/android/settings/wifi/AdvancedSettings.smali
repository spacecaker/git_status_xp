.class public Lcom/android/settings/wifi/AdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "AdvancedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static DEBUGGABLE:I


# instance fields
.field private mPreferenceKeys:[Ljava/lang/String;

.field private mSettingNames:[Ljava/lang/String;

.field private mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wifi_http_proxy"

    aput-object v1, v0, v3

    const-string v1, "wifi_static_ip"

    aput-object v1, v0, v4

    const-string v1, "wifi_static_gateway"

    aput-object v1, v0, v5

    const-string v1, "wifi_static_netmask"

    aput-object v1, v0, v6

    const-string v1, "wifi_static_dns1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "wifi_static_dns2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wifi_http_proxy"

    aput-object v1, v0, v3

    const-string v1, "ip_address"

    aput-object v1, v0, v4

    const-string v1, "gateway"

    aput-object v1, v0, v5

    const-string v1, "netmask"

    aput-object v1, v0, v6

    const-string v1, "dns1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "dns2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    return-void
.end method

.method private initNumChannelsPreference()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 133
    const-string v7, "num_channels"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 134
    .local v4, pref:Landroid/preference/ListPreference;
    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 142
    .local v6, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getValidChannelCounts()[I

    move-result-object v5

    .line 143
    .local v5, validChannelCounts:[I
    if-nez v5, :cond_1

    .line 144
    const v7, 0x7f080172

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 146
    invoke-virtual {v4, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    array-length v7, v5

    new-array v0, v7, [Ljava/lang/String;

    .line 150
    .local v0, entries:[Ljava/lang/String;
    array-length v7, v5

    new-array v1, v7, [Ljava/lang/String;

    .line 152
    .local v1, entryValues:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v5

    if-ge v2, v7, :cond_2

    .line 153
    aget v7, v5, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 154
    const v7, 0x7f080173

    new-array v8, v11, [Ljava/lang/Object;

    aget v9, v5, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v4, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 160
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getNumAllowedChannels()I

    move-result v3

    .line 161
    .local v3, numChannels:I
    if-ltz v3, :cond_0

    .line 162
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSleepPolicyPreference()V
    .locals 6

    .prologue
    const-string v5, "wifi_sleep_policy"

    const-string v4, "ro.csc.sales_code"

    .line 167
    const-string v2, "sleep_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 168
    .local v0, pref:Landroid/preference/ListPreference;
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    const-string v2, "TMH"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "XEC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VDF"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VDP"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    const/4 v3, 0x2

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 183
    .local v1, value:I
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 184
    return-void

    .line 181
    .end local v1           #value:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    const/4 v3, 0x0

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #value:I
    goto :goto_0
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 8
    .parameter "value"

    .prologue
    const/16 v7, 0x2e

    const/4 v6, 0x0

    .line 276
    const/4 v4, 0x0

    .line 277
    .local v4, start:I
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 278
    .local v2, end:I
    const/4 v3, 0x0

    .line 280
    .local v3, numBlocks:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 282
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 283
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 287
    :cond_0
    :try_start_0
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 288
    .local v0, block:I
    const/16 v5, 0xff

    if-gt v0, v5, :cond_1

    if-gez v0, :cond_2

    :cond_1
    move v5, v6

    .line 301
    .end local v0           #block:I
    :goto_1
    return v5

    .line 291
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/NumberFormatException;
    move v5, v6

    .line 292
    goto :goto_1

    .line 295
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #block:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 297
    add-int/lit8 v4, v2, 0x1

    .line 298
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0

    .line 301
    .end local v0           #block:I
    :cond_3
    const/4 v5, 0x4

    if-ne v3, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_1
.end method

.method private refreshWifiInfo()V
    .locals 15

    .prologue
    .line 378
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 379
    .local v7, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 381
    .local v4, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v8, "mac_address"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 382
    .local v6, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v4, :cond_2

    const/4 v8, 0x0

    move-object v3, v8

    .line 383
    .local v3, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    move-object v8, v3

    :goto_1
    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 386
    const-string v8, "current_ip_address"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 387
    .local v5, wifiIpAddressPref:Landroid/preference/Preference;
    const/4 v2, 0x0

    .line 388
    .local v2, ipAddress:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 389
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v8

    int-to-long v0, v8

    .line 390
    .local v0, addr:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_1

    .line 392
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gez v8, :cond_0

    const-wide v8, 0x100000000L

    add-long/2addr v0, v8

    .line 393
    :cond_0
    const-string v8, "%d.%d.%d.%d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-wide/16 v11, 0xff

    and-long/2addr v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0x8

    shr-long v11, v0, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/16 v11, 0x10

    shr-long v11, v0, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/16 v11, 0x18

    shr-long v11, v0, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 397
    .end local v0           #addr:J
    :cond_1
    if-nez v2, :cond_4

    const v8, 0x7f080225

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 399
    return-void

    .line 382
    .end local v2           #ipAddress:Ljava/lang/String;
    .end local v3           #macAddress:Ljava/lang/String;
    .end local v5           #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_2
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    goto :goto_0

    .line 383
    .restart local v3       #macAddress:Ljava/lang/String;
    :cond_3
    const v8, 0x7f080225

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .restart local v2       #ipAddress:Ljava/lang/String;
    .restart local v5       #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_4
    move-object v8, v2

    .line 397
    goto :goto_2
.end method

.method private updateSettingsProvider()V
    .locals 7

    .prologue
    const-string v6, "wifi_http_port"

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 363
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v4, "wifi_use_static_ip"

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    const-string v4, "wifi_http_port"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    .line 368
    .local v3, wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_http_port"

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 371
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 372
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 373
    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 363
    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    .end local v3           #wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 375
    .restart local v1       #i:I
    .restart local v3       #wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    :cond_1
    return-void
.end method

.method private updateUi()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const-string v8, "wifi_http_port"

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 337
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    const-string v6, "wifi_use_static_ip"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 341
    const-string v5, "wifi_http_port"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    .line 342
    .local v4, wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    const-string v5, "wifi_http_port"

    invoke-static {v0, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, settingValue:Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 349
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 352
    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    .end local v3           #settingValue:Ljava/lang/String;
    .end local v4           #wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    :cond_0
    move v6, v7

    .line 337
    goto :goto_0

    .line 358
    .restart local v1       #i:I
    .restart local v3       #settingValue:Ljava/lang/String;
    .restart local v4       #wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v4, 0x7f04002e

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->addPreferencesFromResource(I)V

    .line 80
    const-string v4, "use_static_ip"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    .line 81
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    const-string v4, "wifi_http_port"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 85
    .local v3, wifiHttpProxyEditText:Landroid/preference/Preference;
    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 91
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 92
    .local v2, preference:Landroid/preference/Preference;
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v2           #preference:Landroid/preference/Preference;
    :cond_1
    const-string v4, "ro.debuggable"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/settings/wifi/AdvancedSettings;->DEBUGGABLE:I

    .line 101
    sget v4, Lcom/android/settings/wifi/AdvancedSettings;->DEBUGGABLE:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 107
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->initNumChannelsPreference()V

    .line 114
    :cond_2
    :goto_1
    return-void

    .line 109
    :cond_3
    const-string v4, "num_channels"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 110
    .local v0, chanPref:Landroid/preference/Preference;
    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 307
    const/4 v0, 0x1

    const v1, 0x7f08017a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20200fd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 310
    const/4 v0, 0x2

    const v1, 0x7f08017b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20200da

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 313
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 189
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateSettingsProvider()V

    .line 193
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 319
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 331
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 322
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateSettingsProvider()V

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->finish()V

    move v0, v1

    .line 324
    goto :goto_0

    .line 327
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->finish()V

    move v0, v1

    .line 328
    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v10, 0x7f080172

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v9, "wifi_http_port"

    .line 197
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, key:Ljava/lang/String;
    if-nez v3, :cond_0

    move v8, v12

    .line 271
    .end local p2
    :goto_0
    return v8

    .line 200
    .restart local p2
    :cond_0
    const-string v8, "num_channels"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 202
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 203
    .local v4, numChannels:I
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 204
    .local v7, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Landroid/net/wifi/WifiManager;->setNumAllowedChannels(IZ)Z

    move-result v8

    if-nez v8, :cond_1

    .line 205
    const v8, 0x7f080172

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #numChannels:I
    .end local v7           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_1
    :goto_1
    move v8, v12

    .line 271
    goto :goto_0

    .line 208
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 209
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v11

    .line 211
    goto :goto_0

    .line 214
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_2
    const-string v8, "sleep_policy"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 216
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_sleep_policy"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 218
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 219
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const v8, 0x7f080176

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v11

    .line 221
    goto :goto_0

    .line 224
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_3
    const-string v8, "use_static_ip"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 225
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 228
    .local v6, value:Z
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_use_static_ip"

    if-eqz v6, :cond_4

    move v10, v12

    :goto_2
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 230
    :catch_2
    move-exception v8

    move-object v1, v8

    .restart local v1       #e:Ljava/lang/NumberFormatException;
    move v8, v11

    .line 231
    goto :goto_0

    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_4
    move v10, v11

    .line 228
    goto :goto_2

    .line 235
    .end local v6           #value:Z
    .restart local p2
    :cond_5
    const-string v8, "wifi_http_port"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 236
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 238
    .local v5, proxyport:Ljava/lang/String;
    :try_start_3
    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_http_port"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 241
    :catch_3
    move-exception v8

    move-object v1, v8

    .restart local v1       #e:Ljava/lang/NumberFormatException;
    move v8, v11

    .line 242
    goto/16 :goto_0

    .line 247
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v5           #proxyport:Ljava/lang/String;
    :cond_6
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 250
    .local v6, value:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 254
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/AdvancedSettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 255
    const v8, 0x7f08017c

    invoke-static {p0, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v11

    .line 256
    goto/16 :goto_0

    .line 262
    :cond_7
    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_1

    .line 264
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 263
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateUi()V

    .line 125
    sget v0, Lcom/android/settings/wifi/AdvancedSettings;->DEBUGGABLE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->initNumChannelsPreference()V

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->initSleepPolicyPreference()V

    .line 129
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->refreshWifiInfo()V

    .line 130
    return-void
.end method
