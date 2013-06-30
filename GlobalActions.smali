.class Lcom/android/internal/policy/impl/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/GlobalActions$Action;,
        Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    }
.end annotation


# static fields
.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field private mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAutoRotateToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mAutoSyncModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mBackgroundDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mBluetoothToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mBrightnessToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private mDeviceProvisioned:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mGPSToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mHandler:Landroid/os/Handler;

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mMobileAPToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSilentModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mVibrationModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mWifiToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 77
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 78
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 79
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 80
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 578
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$5;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 599
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$6;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 610
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$7;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$7;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    .line 87
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 88
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 100
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 624
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 628
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 630
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 631
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 632
    return-void

    .line 624
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private createDialog()Landroid/app/AlertDialog;
    .locals 14

    .prologue
    const/4 v10, 0x1

    .line 125
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$1;

    const v2, 0x1080031

    const v3, 0x1080032

    const v4, 0x104014d

    const v5, 0x104014e

    const v6, 0x104014f

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$11;

    const v2, 0x1080487

    const v3, 0x1080486

    const v4, 0x104048b

    const v5, 0x104048c

    const v6, 0x104048d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$11;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVibrationModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 161
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$2;

    const v2, 0x10803c9

    const v3, 0x10803c8

    const v4, 0x1040451

    const v5, 0x1040452

    const v6, 0x1040453

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 183
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$3;

    const v2, 0x10801b5

    const v3, 0x10801b6

    const v4, 0x1040150

    const v5, 0x1040151

    const v6, 0x1040152

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$3;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$12;

    const v2, 0x108048b

    const v3, 0x108048a

    const v4, 0x1040491

    const v5, 0x1040492

    const v6, 0x1040493

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$12;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAutoSyncModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$13;

    const v2, 0x108048d

    const v3, 0x108048c

    const v4, 0x1040494

    const v5, 0x1040495

    const v6, 0x1040496

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$13;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBackgroundDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$14;

    const v2, 0x1080489

    const v3, 0x1080488

    const v4, 0x104048e

    const v5, 0x104048f

    const v6, 0x1040490

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$14;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBrightnessToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$15;

    const v2, 0x108049d

    const v3, 0x108049c

    const v4, 0x104049c

    const v5, 0x104049d

    const v6, 0x104049e

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$15;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mGPSToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$16;

    const v2, 0x108049b

    const v3, 0x108049a

    const v4, 0x104049f

    const v5, 0x10404a0

    const v6, 0x10404a1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$16;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAutoRotateToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$17;

    const v2, 0x108049f

    const v3, 0x108049e

    const v4, 0x10404a2

    const v5, 0x10404a3

    const v6, 0x10404a4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$17;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileAPToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$18;

    const v2, 0x10804a3

    const v3, 0x10804a2

    const v4, 0x10404a5

    const v5, 0x10404a6

    const v6, 0x10404a7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$18;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWifiToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$19;

    const v2, 0x10804a1

    const v3, 0x10804a0

    const v4, 0x10404a8

    const v5, 0x10404a9

    const v6, 0x10404aa

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$19;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBluetoothToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 223
    const/4 v1, 0x0

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_silentmodetoggle_visibility_OFF"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    add-int/2addr v1, v10

    :cond_0
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_vibrationmodetoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    add-int/2addr v1, v10

    :cond_1
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_wifimodetoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    add-int/2addr v1, v10

    :cond_2
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_datamodetoggle_visibility_OFF"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3

    add-int/2addr v1, v10

    :cond_3
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_bluetoothmodetoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4

    add-int/2addr v1, v10

    :cond_4
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_auto_rotatemodetoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_5

    add-int/2addr v1, v10

    :cond_5
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_airplanemode_visibility_OFF"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_6

    add-int/2addr v1, v10

    :cond_6
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_backgroundmodetoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_7

    add-int/2addr v1, v10

    :cond_7
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_autosyncmodetoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_8

    add-int/2addr v1, v10

    :cond_8
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_autobrightnesstoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_9

    add-int/2addr v1, v10

    :cond_9
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_gpsmodetoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_a

    add-int/2addr v1, v10

    :cond_a
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_mobile_apmodetoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_b

    add-int/2addr v1, v10

    :cond_b
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_reboot_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_c

    add-int/2addr v1, v10

    :cond_c
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_recovery_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_d

    add-int/2addr v1, v10

    :cond_d
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_download_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_e

    add-int/2addr v1, v10

    :cond_e
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_poweroff_visibility_OFF"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_f

    add-int/2addr v1, v10

    :cond_f
    new-array v0, v1, [Lcom/android/internal/policy/impl/GlobalActions$Action;

    const/4 v1, 0x0

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_silentmodetoggle_visibility_OFF"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_10

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v2, v0, v1

    add-int/2addr v1, v10

    :cond_10
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_vibrationmodetoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_11

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVibrationModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v2, v0, v1

    add-int/2addr v1, v10

    :cond_11
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_wifimodetoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_12

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWifiToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v2, v0, v1

    add-int/2addr v1, v10

    :cond_12
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_datamodetoggle_visibility_OFF"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_13

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v2, v0, v1

    add-int/2addr v1, v10

    :cond_13
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_bluetoothmodetoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_14

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBluetoothToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v2, v0, v1

    add-int/2addr v1, v10

    :cond_14
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_auto_rotatemodetoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_15

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAutoRotateToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v2, v0, v1

    add-int/2addr v1, v10

    :cond_15
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_airplanemode_visibility_OFF"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_16

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v2, v0, v1

    add-int/2addr v1, v10

    :cond_16
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_backgroundmodetoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_17

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBackgroundDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v2, v0, v1

    add-int/2addr v1, v10

    :cond_17
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_autosyncmodetoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_18

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAutoSyncModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v2, v0, v1

    add-int/2addr v1, v10

    :cond_18
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_autobrightnesstoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_19

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBrightnessToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v2, v0, v1

    add-int/2addr v1, v10

    :cond_19
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_gpsmodetoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1a

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mGPSToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v2, v0, v1

    add-int/2addr v1, v10

    :cond_1a
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_mobile_apmodetoggle_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1b

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileAPToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v2, v0, v1

    add-int/2addr v1, v10

    :cond_1b
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_reboot_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1c

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$8;

    const v3, 0x10803d3

    const v4, 0x104048a

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$8;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    aput-object v2, v0, v1

    add-int/2addr v1, v10

    :cond_1c
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_recovery_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1d

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$9;

    const v3, 0x10803d4

    const v4, 0x1040488

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$9;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    aput-object v2, v0, v1

    add-int/2addr v1, v10

    :cond_1d
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_download_visibility_ON"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1e

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$10;

    const v3, 0x10803d2

    const v4, 0x1040489

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$10;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    aput-object v2, v0, v1

    add-int/2addr v1, v10

    :cond_1e
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_poweroff_visibility_OFF"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1f

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$4;

    const v3, 0x1080030

    const v4, 0x104014c

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$4;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    aput-object v2, v0, v1

    :cond_1f
    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 249
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    .line 251
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    .local v7, ab:Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v7, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 256
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 257
    .local v8, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 260
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x4

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 264
    :cond_20
    invoke-virtual {v8, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/data/com.jkaysoft.gingertheme/power_menu_title_visibility_OFF"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_21

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    goto :goto_0

    :cond_21
    const v4, 0x104014a

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 266
    :goto_0
    return-object v8
.end method

.method private prepareDialog()V
    .locals 6

    .prologue
    .line 273
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBluetoothToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWifiToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileAPToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_3

    :cond_3
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAutoRotateToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_4

    :cond_4
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mGPSToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_5

    :cond_5
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBrightnessToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 71
    .local v1, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_6

    :cond_6
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBackgroundDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    if-eqz v2, :cond_7

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_7

    :cond_7
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAutoSyncModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 276
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_8

    :cond_8
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVibrationModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    const/4 v2, 0x1

    move v1, v2

    .line 278
    .local v1, silentModeOn:Z
    :goto_9
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    if-eqz v1, :cond_a

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_a
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 282
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 284
    .local v0, dataModeOn:Z
    if-eqz v0, :cond_b

    .line 285
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 290
    :goto_b
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 291
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 293
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 294
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-eqz v2, :cond_c

    .line 295
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 299
    .line 300
    :goto_c
    return-void

    .line 276
    .end local v0           #dataModeOn:Z
    .end local v1           #silentModeOn:Z
    :cond_9
    const/4 v2, 0x0

    move v1, v2

    goto :goto_9

    .line 278
    .restart local v1       #silentModeOn:Z
    :cond_a
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_a

    .line 287
    .restart local v0       #dataModeOn:Z
    :cond_b
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_b

    .line 297
    :cond_c
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_c
.end method


# virtual methods
.method public isGlobalActionRunning()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 310
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->onPress()V

    .line 312
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 306
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 5
    .parameter "keyguardShowing"
    .parameter "isDeviceProvisioned"

    .prologue
    .line 108
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.jkaysoft.gingertheme/power_menu_hasChanged"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 109
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStatusBar:Landroid/app/StatusBarManager;

    .line 112
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    .line 114
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->prepareDialog()V

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 118
    return-void
.end method
