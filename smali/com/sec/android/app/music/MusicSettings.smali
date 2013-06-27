.class public Lcom/sec/android/app/music/MusicSettings;
.super Landroid/preference/PreferenceActivity;
.source "MusicSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mEqualizerPref:Landroid/preference/ListPreference;

.field private mMTMVPref:Landroid/preference/CheckBoxPreference;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mToast:Landroid/widget/Toast;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 80
    new-instance v0, Lcom/sec/android/app/music/MusicSettings$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicSettings$1;-><init>(Lcom/sec/android/app/music/MusicSettings;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicSettings;->mStatusListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/music/MusicSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicSettings;->turnOffMTMV()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/MusicSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicSettings;->turnOffEQ()V

    return-void
.end method

.method private refreshEQSummaries()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/music/MusicSettings;->mEqualizerPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicSettings;->mEqualizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method private showToast(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/music/MusicSettings;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicSettings;->mToast:Landroid/widget/Toast;

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/music/MusicSettings;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/music/MusicSettings;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private turnOffEQ()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/music/MusicSettings;->mEqualizerPref:Landroid/preference/ListPreference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicSettings;->refreshEQSummaries()V

    .line 108
    return-void
.end method

.method private turnOffMTMV()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/music/MusicSettings;->mMTMVPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/music/MusicSettings;->mMTMVPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {p0, p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicSettings;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 42
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicSettings;->addPreferencesFromResource(I)V

    .line 45
    const-string v0, "srs_channel"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicSettings;->mMTMVPref:Landroid/preference/CheckBoxPreference;

    .line 48
    const-string v0, "equalizer"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicSettings;->mEqualizerPref:Landroid/preference/ListPreference;

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/music/MusicSettings;->mEqualizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/music/MusicSettings;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 56
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 57
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 143
    const-string v3, "equalizer"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 144
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 145
    .local v2, value:I
    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 146
    :cond_0
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/MusicSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 147
    .local v1, am:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    if-nez v3, :cond_2

    .line 148
    :cond_1
    const v3, 0x7f090019

    invoke-direct {p0, v3}, Lcom/sec/android/app/music/MusicSettings;->showToast(I)V

    .line 149
    const/4 v3, 0x0

    .line 157
    .end local v1           #am:Landroid/media/AudioManager;
    .end local v2           #value:I
    .end local p2
    :goto_0
    return v3

    .line 152
    .restart local v2       #value:I
    .restart local p2
    :cond_2
    invoke-static {v2}, Lcom/sec/android/app/music/R2vsUtil;->doConvertToMode(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/music/MusicUtils;->setR2VSMode(I)V

    .line 153
    iget-object v3, p0, Lcom/sec/android/app/music/MusicSettings;->mEqualizerPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/music/MusicSettings;->mEqualizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/music/MusicSettings;->mEqualizerPref:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 157
    .end local v2           #value:I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v3, 0x7f090045

    const/4 v2, 0x0

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/music/MusicSettings;->mMTMVPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 115
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 118
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/sec/android/app/music/MusicSettings;->mMTMVPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    invoke-direct {p0, v3}, Lcom/sec/android/app/music/MusicSettings;->showToast(I)V

    .line 122
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    .line 139
    .end local v0           #am:Landroid/media/AudioManager;
    :goto_0
    return v1

    .line 123
    .restart local v0       #am:Landroid/media/AudioManager;
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/sec/android/app/music/MusicSettings;->mMTMVPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 125
    invoke-direct {p0, v3}, Lcom/sec/android/app/music/MusicSettings;->showToast(I)V

    .line 127
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/music/MusicSettings;->mMTMVPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    const/high16 v1, 0x20

    invoke-static {v1}, Lcom/android/music/MusicUtils;->setR2VSMode(I)V

    .line 139
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0

    .line 136
    .restart local v0       #am:Landroid/media/AudioManager;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/music/MusicSettings;->mEqualizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/music/R2vsUtil;->doConvertToMode(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/music/MusicUtils;->setR2VSMode(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicSettings;->refreshEQSummaries()V

    .line 63
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 171
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 175
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.turnoffmtmv"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "com.android.music.turnoffeq"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/music/MusicSettings;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/music/MusicSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/music/MusicSettings;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 69
    return-void
.end method
