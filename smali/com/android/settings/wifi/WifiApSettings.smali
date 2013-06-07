.class public Lcom/android/settings/wifi/WifiApSettings;
.super Landroid/preference/PreferenceActivity;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mSecurityType:[Ljava/lang/String;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 190
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 203
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    const v1, 0x7f080189

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v3, v3, v4

    :goto_1
    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 213
    :cond_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 207
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v3, v3, v5

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f080189

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 74
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    .line 77
    const v1, 0x7f04002f

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->addPreferencesFromResource(I)V

    .line 79
    const-string v1, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 80
    const-string v1, "enable_wifi_ap"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 82
    new-instance v1, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 84
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_0

    .line 85
    const v1, 0x10403c0

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v5

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    .end local v0           #s:Ljava/lang/String;
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v6

    :goto_1
    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v5

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 98
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 99
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 120
    :goto_0
    return-object v0

    .line 103
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08018b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802fb

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$2;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802fc

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$1;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080278

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 133
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const-string v2, "ro.csc.sales_code"

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 157
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 160
    :cond_0
    const-string v0, "ATL"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CNX"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SFR"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SIM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TCL"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VD2"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VDF"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VDI"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VDP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VDR"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VGR"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VIP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VNZ"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VOD"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VOP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMN"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    move v0, v3

    .line 185
    :goto_0
    return v0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->setWifiApDisable()V

    :cond_3
    move v0, v3

    .line 185
    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 127
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const-string v3, "onStop() Dialog is not null. dismiss "

    const-string v2, "WifiApSettings"

    .line 138
    const-string v0, "WifiApSettings"

    const-string v0, "onStop()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop() Dialog is not null. dismiss "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop() Dialog is not null. dismiss "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecuritySpinner()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecuritySpinner()Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecuritySpinner()Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSpinnerDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause() Spinner Dialog is not null. dismiss "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecuritySpinner()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSpinnerDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecuritySpinner()Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSpinnerDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismiss()V

    .line 150
    :cond_0
    return-void
.end method
