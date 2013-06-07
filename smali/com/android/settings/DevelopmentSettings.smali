.class public Lcom/android/settings/DevelopmentSettings;
.super Landroid/preference/PreferenceActivity;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DevelopmentSettings$1;,
        Lcom/android/settings/DevelopmentSettings$AdbEnableObserver;,
        Lcom/android/settings/DevelopmentSettings$TetherChangeReceiver;
    }
.end annotation


# instance fields
.field private mAdbEnableObserver:Lcom/android/settings/DevelopmentSettings$AdbEnableObserver;

.field private mAllowMockLocation:Landroid/preference/CheckBoxPreference;

.field private mEnableAdb:Landroid/preference/CheckBoxPreference;

.field private mKeepScreenOn:Landroid/preference/CheckBoxPreference;

.field private mOkClicked:Z

.field private mOkDialog:Landroid/app/Dialog;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 275
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DevelopmentSettings;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/DevelopmentSettings;->updateState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 202
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 205
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/DevelopmentSettings;->updateState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method private updateState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 19
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 213
    const-string v17, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 215
    .local v4, cm:Landroid/net/ConnectivityManager;
    const/16 v16, 0x0

    .line 216
    .local v16, usbTethered:Z
    const/4 v13, 0x0

    .line 217
    .local v13, usbAvailable:Z
    const/4 v14, 0x0

    .line 218
    .local v14, usbError:I
    const/4 v15, 0x0

    .line 219
    .local v15, usbErrored:Z
    const-string v17, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 221
    .local v9, massStorageActive:Z
    move-object/from16 v2, p1

    .local v2, arr$:[Ljava/lang/Object;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/Object;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v10, v2, v6

    .line 222
    .local v10, o:Ljava/lang/Object;
    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 223
    .local v12, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object v3, v0

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_1
    if-ge v5, v8, :cond_1

    aget-object v11, v3, v5

    .line 224
    .local v11, regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 225
    const/4 v13, 0x1

    .line 226
    if-nez v14, :cond_0

    .line 227
    invoke-virtual {v4, v12}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v14

    .line 223
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 221
    .end local v11           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_0

    .line 232
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v10           #o:Ljava/lang/Object;
    .end local v12           #s:Ljava/lang/String;
    :cond_2
    move-object/from16 v2, p2

    .restart local v2       #arr$:[Ljava/lang/Object;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/Object;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .restart local v6       #i$:I
    :goto_2
    if-ge v6, v7, :cond_5

    aget-object v10, v2, v6

    .line 233
    .restart local v10       #o:Ljava/lang/Object;
    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 234
    .restart local v12       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object v3, v0

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v8, v3

    .restart local v8       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_3
    if-ge v5, v8, :cond_4

    aget-object v11, v3, v5

    .line 235
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/16 v16, 0x1

    .line 234
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 232
    .end local v11           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_2

    .line 238
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v10           #o:Ljava/lang/Object;
    .end local v12           #s:Ljava/lang/String;
    :cond_5
    move-object/from16 v2, p3

    .restart local v2       #arr$:[Ljava/lang/Object;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/Object;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .restart local v6       #i$:I
    :goto_4
    if-ge v6, v7, :cond_8

    aget-object v10, v2, v6

    .line 239
    .restart local v10       #o:Ljava/lang/Object;
    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 240
    .restart local v12       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object v3, v0

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v8, v3

    .restart local v8       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_5
    if-ge v5, v8, :cond_7

    aget-object v11, v3, v5

    .line 241
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/4 v15, 0x1

    .line 240
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 238
    .end local v11           #regex:Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_4

    .line 245
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v10           #o:Ljava/lang/Object;
    .end local v12           #s:Ljava/lang/String;
    :cond_8
    if-eqz v16, :cond_9

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 253
    :goto_6
    return-void

    .line 252
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_6
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 169
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 170
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mOkClicked:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    const-string v0, "persist.service.adb.enable"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v1, 0x7f04000b

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 79
    const-string v1, "enable_adb"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    .line 80
    const-string v1, "keep_screen_on"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    .line 81
    const-string v1, "allow_mock_location"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    .line 84
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 87
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateState()V

    .line 90
    new-instance v1, Lcom/android/settings/DevelopmentSettings$AdbEnableObserver;

    invoke-direct {v1, p0}, Lcom/android/settings/DevelopmentSettings$AdbEnableObserver;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbEnableObserver:Lcom/android/settings/DevelopmentSettings$AdbEnableObserver;

    .line 91
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialog()V

    .line 189
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 190
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 184
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 197
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 199
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 159
    :goto_0
    return v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mOkClicked:Z

    .line 137
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialog()V

    .line 138
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08036f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08036e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    .line 145
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    :goto_1
    move v0, v3

    .line 159
    goto :goto_0

    .line 147
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    const-string v0, "persist.service.adb.enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mock_location"

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_3
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_3
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "adb_enabled"

    .line 95
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 97
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "stay_on_while_plugged_in"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 101
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mock_location"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/settings/DevelopmentSettings$TetherChangeReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/DevelopmentSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/DevelopmentSettings;Lcom/android/settings/DevelopmentSettings$1;)V

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/DevelopmentSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 109
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/DevelopmentSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, p0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAdbEnableObserver:Lcom/android/settings/DevelopmentSettings$AdbEnableObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 119
    return-void

    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    move v3, v5

    .line 97
    goto :goto_0

    :cond_2
    move v3, v5

    .line 99
    goto :goto_1

    :cond_3
    move v3, v5

    .line 101
    goto :goto_2
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbEnableObserver:Lcom/android/settings/DevelopmentSettings$AdbEnableObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 125
    return-void
.end method
