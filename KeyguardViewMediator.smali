.class public Lcom/android/internal/policy/impl/KeyguardViewMediator;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardViewCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardViewMediator$6;
    }
.end annotation


# static fields
.field protected static final AWAKE_INTERVAL_DEFAULT_KEYBOARD_OPEN_MS:I = 0x2710

.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x1388

.field private static final BATT_OVERHEAT_COLD_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.KeyguardViewMediator.BATT_OVERHEAT_COLD"

.field private static final DBG_WAKE:Z = false

.field private static final DEBUG:Z = true

.field private static final DELAYED_KEYGUARD_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

.field private static final HIDE:I = 0x3

.field private static final HIDE_BATTERY_STATUS:I = 0xf

.field private static final KEYGUARD_DELAY_MS:I = 0x1388

.field private static final KEYGUARD_DONE:I = 0x9

.field private static final KEYGUARD_DONE_AUTHENTICATING:I = 0xb

.field private static final KEYGUARD_DONE_DRAWING:I = 0xa

.field private static final KEYGUARD_DONE_DRAWING_TIMEOUT_MS:I = 0x7d0

.field private static final KEYGUARD_TIMEOUT:I = 0xd

.field private static final NOTIFY_SCREEN_OFF:I = 0x6

.field private static final NOTIFY_SCREEN_ON:I = 0x7

.field private static final RESET:I = 0x4

.field private static final SET_HIDDEN:I = 0xc

.field private static final SHOW:I = 0x2

.field private static final SHOW_BATTERY_STATUS:I = 0xe

.field private static final SHOW_LOW_BATT_WARN:I = 0x10

.field private static final TAG:Ljava/lang/String; = "KeyguardViewMediator"

.field private static final TIMEOUT:I = 0x1

.field private static final VERIFY_UNLOCK:I = 0x5

.field private static final WAKE_WHEN_READY:I = 0x8


# instance fields
.field private ALARM_ACTION:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBattDimLockReleaser:Ljava/lang/Runnable;

.field private mBattIntent:Landroid/app/PendingIntent;

.field private mBattLevel:I

.field private mBattWakelock:Landroid/os/PowerManager$WakeLock;

.field private mBatteryChargedFull:Z

.field private mBatteryErrorpopup:Z

.field private mBatteryTempError:Z

.field private mBatteryWarnShow:Z

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mContext:Landroid/content/Context;

.field private mDelayedShowingSequence:I

.field private mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

.field private mExternallyEnabled:Z

.field private mFullBattDimLockReleaser:Ljava/lang/Runnable;

.field private mFullBattWakelock:Landroid/os/PowerManager$WakeLock;

.field private mFullBattWakelockSequence:I

.field private mHandler:Landroid/os/Handler;

.field private mHidden:Z

.field private mKeyboardOpen:Z

.field private mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

.field private mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

.field private mNeedToReshowWhenReenabled:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:Ljava/lang/String;

.field mRealPowerManager:Landroid/os/LocalPowerManager;

.field private mScreenOn:Z

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowLockIcon:Z

.field private mShowing:Z

.field private mShowingLockIcon:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSuppressNextLockSound:Z

.field private mSuppressNextUnLockSound:Z

.field private mSystemReady:Z

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUserPresentIntent:Landroid/content/Intent;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockSequence:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V
    .locals 11
    .parameter "context"
    .parameter "callback"
    .parameter "powerManager"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "keyguardWakeAndHandOff"

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 168
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 205
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 212
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 216
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    .line 219
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    .line 246
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyboardOpen:Z

    .line 248
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    .line 251
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 262
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 266
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    .line 267
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    .line 268
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    .line 269
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    .line 270
    iput v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattLevel:I

    .line 272
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattDimLockReleaser:Ljava/lang/Runnable;

    .line 279
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFullBattDimLockReleaser:Ljava/lang/Runnable;

    .line 286
    const-string v0, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->ALARM_ACTION:Ljava/lang/String;

    .line 986
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 1210
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$5;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 291
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 293
    iput-object p3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mRealPowerManager:Landroid/os/LocalPowerManager;

    .line 294
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v1, "show keyguard"

    invoke-virtual {v0, v9, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v1, "keyguardWakeAndHandOff"

    invoke-virtual {v0, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 307
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v0, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v0, "com.android.internal.policy.impl.KeyguardViewMediator.BATT_OVERHEAT_COLD"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string v0, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v0, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->ALARM_ACTION:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 318
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 320
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mCallback:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 322
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 326
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    .line 329
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewProperties;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 337
    .local v6, cr:Landroid/content/ContentResolver;
    const-string v0, "show_status_bar_lock"

    invoke-static {v6, v0, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowLockIcon:Z

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const/4 v1, 0x6

    const-string v2, "keyguardWakeAndHandOff"

    invoke-virtual {v0, v1, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "keyguardWakeAndHandOff"

    invoke-virtual {v0, v1, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFullBattWakelock:Landroid/os/PowerManager$WakeLock;

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFullBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 346
    return-void

    :cond_0
    move v0, v8

    .line 337
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFullBattWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/KeyguardViewMediator;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->informOkayBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->ALARM_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/KeyguardViewMediator;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->informBatterypopup(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattDimLockReleaser:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleTimeout(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleShow()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleReset()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOn()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleWakeWhenReady(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDone(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleSetHidden(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleBatteryStatus(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHideBatteryStatus()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleShowLowBatteryWarn(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguard()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->informBatteryStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->informLowBatteryWarn(Landroid/content/Intent;)V

    return-void
.end method

.method private adjustStatusBarLocked()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "secure"

    .line 1426
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_0

    .line 1427
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1430
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_1

    .line 1431
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Could not get status bar manager"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :goto_0
    return-void

    .line 1433
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowLockIcon:Z

    if-eqz v1, :cond_2

    .line 1435
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1436
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    if-nez v1, :cond_2

    .line 1437
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "secure"

    const v2, 0x10802d8

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1439
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    .line 1451
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    move v0, v4

    .line 1452
    .local v0, enable:Z
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_6

    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 1442
    .end local v0           #enable:Z
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    if-eqz v1, :cond_2

    .line 1443
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "secure"

    invoke-virtual {v1, v5}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 1444
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    goto :goto_1

    :cond_5
    move v0, v3

    .line 1451
    goto :goto_2

    .restart local v0       #enable:Z
    :cond_6
    move v2, v4

    .line 1452
    goto :goto_3
.end method

.method private adjustUserActivityLocked()V
    .locals 4

    .prologue
    .line 1416
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustUserActivityLocked mShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHidden: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 1418
    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mRealPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v1, v0}, Landroid/os/LocalPowerManager;->enableUserActivity(Z)V

    .line 1419
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v1, :cond_1

    .line 1421
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 1423
    :cond_1
    return-void

    .line 1417
    .end local v0           #enabled:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private doKeyguard()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v6, "KeyguardViewMediator"

    .line 581
    monitor-enter p0

    .line 583
    :try_start_0
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v6, :cond_0

    .line 584
    const-string v6, "KeyguardViewMediator"

    const-string v7, "doKeyguard: not showing because externally disabled"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    monitor-exit p0

    .line 638
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardViewManager;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 600
    const-string v6, "KeyguardViewMediator"

    const-string v7, "doKeyguard: not showing because it is already showing"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    monitor-exit p0

    goto :goto_0

    .line 637
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 606
    :cond_1
    :try_start_1
    const-string v6, "ril.IMSI"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, imsi:Ljava/lang/String;
    const-string v6, "99999"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v9, :cond_2

    .line 609
    const-string v6, "KeyguardViewMediator"

    const-string v7, "doKeyguard: not showing because factory mode"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    monitor-exit p0

    goto :goto_0

    .line 613
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SHOULD_SHUT_DOWN"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 614
    .local v5, value:I
    if-ne v5, v9, :cond_3

    .line 615
    const-string v6, "KeyguardViewMediator"

    const-string v7, "doKeyguard: not showing because automatic shutdown is enabled"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    monitor-exit p0

    goto :goto_0

    .line 621
    :cond_3
    const-string v6, "keyguard.no_require_sim"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_5

    move v3, v9

    .line 623
    .local v3, requireSim:Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v2

    .line 624
    .local v2, provisioned:Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    .line 625
    .local v4, state:Lcom/android/internal/telephony/IccCard$State;
    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v6, :cond_6

    if-eqz v3, :cond_6

    :cond_4
    move v1, v9

    .line 628
    .local v1, lockedOrMissing:Z
    :goto_2
    if-nez v1, :cond_7

    if-nez v2, :cond_7

    .line 629
    const-string v6, "KeyguardViewMediator"

    const-string v7, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    monitor-exit p0

    goto :goto_0

    .end local v1           #lockedOrMissing:Z
    .end local v2           #provisioned:Z
    .end local v3           #requireSim:Z
    .end local v4           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_5
    move v3, v10

    .line 621
    goto :goto_1

    .restart local v2       #provisioned:Z
    .restart local v3       #requireSim:Z
    .restart local v4       #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_6
    move v1, v10

    .line 625
    goto :goto_2

    .line 634
    .restart local v1       #lockedOrMissing:Z
    :cond_7
    const-string v6, "KeyguardViewMediator"

    const-string v7, "doKeyguard: showing the lock screen"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 636
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showLocked()V

    .line 637
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private handleBatteryStatus(I)V
    .locals 2
    .parameter "action"

    .prologue
    .line 1538
    monitor-enter p0

    .line 1539
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleBatteryStatus"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->onBatteryStatusIndicate(I)V

    .line 1541
    monitor-exit p0

    .line 1542
    return-void

    .line 1541
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleHide()V
    .locals 2

    .prologue
    const-string v0, "KeyguardViewMediator"

    .line 1391
    monitor-enter p0

    .line 1392
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleHide"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    const-string v0, "KeyguardViewMediator"

    const-string v1, "attempt to hide the keyguard while waking, ignored"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    monitor-exit p0

    .line 1412
    :goto_0
    return-void

    .line 1400
    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1401
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    if-eqz v0, :cond_1

    .line 1402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 1403
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->playSounds(Z)V

    .line 1407
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->hide()V

    .line 1408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    .line 1409
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustUserActivityLocked()V

    .line 1410
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1411
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleHideBatteryStatus()V
    .locals 2

    .prologue
    .line 1549
    monitor-enter p0

    .line 1550
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleHideBatteryStatus"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->onBatteryStatusHide()V

    .line 1552
    monitor-exit p0

    .line 1553
    return-void

    .line 1552
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleKeyguardDone(Z)V
    .locals 4
    .parameter "wakeup"

    .prologue
    const-string v1, "KeyguardViewMediator"

    .line 1272
    const-string v0, "KeyguardViewMediator"

    const-string v0, "handleKeyguardDone"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHide()V

    .line 1280
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    if-eqz v0, :cond_1

    .line 1281
    const-string v0, "KeyguardViewMediator"

    const-string v0, "handleKeyguardDone -- reset battery popup"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 1283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    .line 1284
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1287
    :cond_1
    if-eqz p1, :cond_2

    .line 1288
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1290
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1291
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1292
    return-void
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 1299
    monitor-enter p0

    .line 1301
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_0

    .line 1302
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1304
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1309
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1311
    :cond_0
    monitor-exit p0

    .line 1312
    return-void

    .line 1311
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOff()V
    .locals 2

    .prologue
    .line 1515
    monitor-enter p0

    .line 1516
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOff"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->onScreenTurnedOff()V

    .line 1518
    monitor-exit p0

    .line 1519
    return-void

    .line 1518
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOn()V
    .locals 2

    .prologue
    .line 1526
    monitor-enter p0

    .line 1527
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOn"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->onScreenTurnedOn()V

    .line 1529
    monitor-exit p0

    .line 1530
    return-void

    .line 1529
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleReset()V
    .locals 2

    .prologue
    .line 1492
    monitor-enter p0

    .line 1493
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleReset"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->reset()V

    .line 1495
    monitor-exit p0

    .line 1496
    return-void

    .line 1495
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSetHidden(Z)V
    .locals 1
    .parameter "isHidden"

    .prologue
    .line 531
    monitor-enter p0

    .line 532
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-eq v0, p1, :cond_0

    .line 533
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    .line 534
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustUserActivityLocked()V

    .line 535
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 537
    :cond_0
    monitor-exit p0

    .line 538
    return-void

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleShow()V
    .locals 2

    .prologue
    .line 1368
    monitor-enter p0

    .line 1369
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleShow"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSystemReady:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 1384
    :goto_0
    return-void

    .line 1372
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->playSounds(Z)V

    .line 1374
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->show()V

    .line 1375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    .line 1376
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustUserActivityLocked()V

    .line 1377
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "lock"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1382
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1383
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1380
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleShowLowBatteryWarn(I)V
    .locals 2
    .parameter "level"

    .prologue
    .line 1560
    monitor-enter p0

    .line 1561
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleHideBatteryStatus"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->onBatteryLowWarn(I)V

    .line 1563
    monitor-exit p0

    .line 1564
    return-void

    .line 1563
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleTimeout(I)V
    .locals 2
    .parameter "seq"

    .prologue
    .line 1321
    monitor-enter p0

    .line 1322
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    if-ne p1, v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1326
    :cond_0
    monitor-exit p0

    .line 1327
    return-void

    .line 1326
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleVerifyUnlock()V
    .locals 2

    .prologue
    .line 1503
    monitor-enter p0

    .line 1504
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleVerifyUnlock"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->verifyUnlock()V

    .line 1506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    .line 1507
    monitor-exit p0

    .line 1508
    return-void

    .line 1507
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleWakeWhenReady(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    const-string v0, "KeyguardViewMediator"

    .line 1464
    monitor-enter p0

    .line 1469
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->wakeWhenReadyTq(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1471
    const-string v0, "KeyguardViewMediator"

    const-string v1, "mKeyguardViewManager.wakeWhenReadyTq did not poke wake lock, so poke it ourselves"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1481
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1482
    const-string v0, "KeyguardViewMediator"

    const-string v1, "mWakeLock not held in mKeyguardViewManager.wakeWhenReadyTq"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_1
    monitor-exit p0

    .line 1485
    return-void

    .line 1484
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideBatteryStatus()V
    .locals 3

    .prologue
    .line 920
    const-string v1, "KeyguardViewMediator"

    const-string v2, "hideBatteryStatus"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 922
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 923
    return-void
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    .line 899
    const-string v1, "KeyguardViewMediator"

    const-string v2, "hideLocked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 901
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 902
    return-void
.end method

.method private informBatteryStatus(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v10, 0x0

    const-string v11, "KeyguardViewMediator"

    .line 666
    const-string v6, "level"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattLevel:I

    .line 667
    const-string v6, "plugged"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v2, v8

    .line 668
    .local v2, battPlugged:Z
    :goto_0
    const-string v6, "status"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 669
    .local v3, battStatus:I
    const-string v6, "health"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 672
    .local v1, battHealth:I
    const-string v6, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "informBatteryStatus ~ battPlugged / battStatus / battHealth : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-nez v6, :cond_6

    .line 678
    const/4 v6, 0x5

    if-ne v3, v6, :cond_2

    .line 679
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    .line 788
    :cond_0
    :goto_1
    return-void

    .end local v1           #battHealth:I
    .end local v2           #battPlugged:Z
    .end local v3           #battStatus:I
    :cond_1
    move v2, v10

    .line 667
    goto :goto_0

    .line 680
    .restart local v1       #battHealth:I
    .restart local v2       #battPlugged:Z
    .restart local v3       #battStatus:I
    :cond_2
    if-ne v3, v9, :cond_3

    .line 681
    if-ne v1, v9, :cond_0

    .line 682
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    goto :goto_1

    .line 684
    :cond_3
    if-ne v3, v12, :cond_4

    if-eq v1, v12, :cond_5

    :cond_4
    const/4 v6, 0x4

    if-eq v3, v6, :cond_5

    if-ne v3, v9, :cond_0

    .line 686
    :cond_5
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    .line 687
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    .line 688
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    goto :goto_1

    .line 693
    :cond_6
    if-eq v3, v9, :cond_7

    const/4 v6, 0x4

    if-ne v3, v6, :cond_c

    .line 694
    :cond_7
    if-ne v1, v9, :cond_0

    .line 696
    const-string v6, "KeyguardViewMediator"

    const-string v6, "OVERHEAT or COLD in informBatteryStatus"

    invoke-static {v11, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-string v6, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OVERHEAT or COLD mBatteryChargedFull = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mBatteryTempError ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    if-eqz v6, :cond_8

    .line 700
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 701
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 702
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    .line 703
    const-string v6, "KeyguardViewMediator"

    const-string v6, "OVERHEAT or COLD in informBatteryStatus ---  mBatteryChargedFull"

    invoke-static {v11, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 704
    :cond_8
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    if-nez v6, :cond_0

    .line 705
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    if-nez v6, :cond_9

    .line 706
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 707
    const-string v6, "KeyguardViewMediator"

    const-string v6, "OVERHEAT or COLD in informBatteryStatus ---  hideBatteryStatus"

    invoke-static {v11, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_9
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattDimLockReleaser:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 712
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-nez v6, :cond_a

    .line 713
    const-string v6, "KeyguardViewMediator"

    const-string v6, "OVERHEAT or COLD in informBatteryStatus ---  !mBattWakelock.isHeld()"

    invoke-static {v11, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/16 v6, 0x32

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock(I)V

    .line 715
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 721
    :cond_a
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    .line 722
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    .line 724
    if-ne v1, v9, :cond_b

    const/16 v6, 0x65

    :goto_2
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showBatteryStatus(I)V

    .line 727
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.android.internal.policy.impl.KeyguardViewMediator.BATT_OVERHEAT_COLD"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 728
    .local v0, TEMPintent:Landroid/content/Intent;
    const-string v6, "health"

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 730
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    add-long v4, v6, v8

    .line 731
    .local v4, when:J
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/high16 v7, 0x1000

    invoke-static {v6, v10, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattIntent:Landroid/app/PendingIntent;

    .line 732
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v12, v4, v5, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 724
    .end local v0           #TEMPintent:Landroid/content/Intent;
    .end local v4           #when:J
    :cond_b
    const/16 v6, 0x66

    goto :goto_2

    .line 735
    :cond_c
    const/4 v6, 0x5

    if-ne v3, v6, :cond_10

    .line 738
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    if-nez v6, :cond_d

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    if-eqz v6, :cond_e

    .line 739
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 740
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 741
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    .line 742
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    .line 743
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 745
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakeDimlock()V

    .line 747
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    if-nez v6, :cond_f

    .line 748
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 749
    const-string v6, "KeyguardViewMediator"

    const-string v6, "Call showBatteryStatus in informBatteryStatus 2"

    invoke-static {v11, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/16 v6, 0x64

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showBatteryStatus(I)V

    .line 752
    :cond_f
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    goto/16 :goto_1

    .line 753
    :cond_10
    if-ne v3, v12, :cond_14

    .line 755
    if-ne v1, v12, :cond_0

    .line 756
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    if-nez v6, :cond_11

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    if-eqz v6, :cond_12

    .line 757
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 758
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 759
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    .line 760
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    .line 761
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 763
    :cond_12
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    if-eqz v6, :cond_13

    .line 765
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    .line 766
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 767
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 769
    :cond_13
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    .line 771
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakeDimlock()V

    goto/16 :goto_1

    .line 773
    :cond_14
    const/4 v6, 0x4

    if-eq v3, v6, :cond_15

    if-ne v3, v9, :cond_0

    .line 775
    :cond_15
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    if-nez v6, :cond_16

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    if-eqz v6, :cond_17

    .line 776
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 777
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 778
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    .line 779
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryErrorpopup:Z

    .line 780
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 782
    :cond_17
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    if-nez v6, :cond_18

    .line 783
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 784
    :cond_18
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    .line 786
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakeDimlock()V

    goto/16 :goto_1
.end method

.method private informBatterypopup(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 643
    const-string v1, "health"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 645
    .local v0, battHealth:I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    if-eqz v1, :cond_2

    .line 646
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 647
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 648
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryChargedFull:Z

    .line 652
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattDimLockReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 654
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 655
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock(I)V

    .line 656
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 659
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/16 v1, 0x65

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showBatteryStatus(I)V

    .line 661
    return-void

    .line 649
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryTempError:Z

    if-nez v1, :cond_0

    .line 650
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    goto :goto_0

    .line 659
    :cond_3
    const/16 v1, 0x66

    goto :goto_1
.end method

.method private informLowBatteryWarn(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 792
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Call informLowBatteryWarn"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    .line 795
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    .line 809
    :goto_0
    return-void

    .line 798
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    if-eqz v0, :cond_1

    .line 799
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 801
    :cond_1
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock(I)V

    .line 802
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 803
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 804
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattDimLockReleaser:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 807
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattLevel:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showLowBatteryWarn(I)V

    .line 808
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    goto :goto_0
.end method

.method private informOkayBattery(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    if-eqz v0, :cond_0

    .line 813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBatteryWarnShow:Z

    .line 814
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideBatteryStatus()V

    .line 816
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 817
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakeDimlock()V

    .line 818
    return-void
.end method

.method private isWakeKeyWhenKeyguardShowing(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 1075
    sparse-switch p1, :sswitch_data_0

    .line 1089
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1087
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1075
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyScreenOffLocked()V
    .locals 2

    .prologue
    .line 847
    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenOffLocked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 849
    return-void
.end method

.method private notifyScreenOnLocked()V
    .locals 2

    .prologue
    .line 857
    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenOnLocked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 859
    return-void
.end method

.method private playSounds(Z)V
    .locals 9
    .parameter "locked"

    .prologue
    const/4 v7, 0x1

    const-string v8, "KeyguardViewMediator"

    .line 1332
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v5, :cond_1

    .line 1333
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1361
    :cond_0
    :goto_0
    return-void

    .line 1337
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1338
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v5, "lockscreen_sounds_enabled"

    invoke-static {v0, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 1340
    if-eqz p1, :cond_2

    const-string v5, "lock_sound"

    move-object v4, v5

    .line 1343
    .local v4, whichSound:Ljava/lang/String;
    :goto_1
    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1344
    .local v2, soundPath:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1346
    .local v3, soundUri:Landroid/net/Uri;
    if-eqz v3, :cond_4

    .line 1347
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 1348
    .local v1, sfx:Landroid/media/Ringtone;
    if-eqz v1, :cond_3

    .line 1349
    invoke-virtual {v1, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1350
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 1340
    .end local v1           #sfx:Landroid/media/Ringtone;
    .end local v2           #soundPath:Ljava/lang/String;
    .end local v3           #soundUri:Landroid/net/Uri;
    .end local v4           #whichSound:Ljava/lang/String;
    :cond_2
    const-string v5, "unlock_sound"

    move-object v4, v5

    goto :goto_1

    .line 1352
    .restart local v1       #sfx:Landroid/media/Ringtone;
    .restart local v2       #soundPath:Ljava/lang/String;
    .restart local v3       #soundUri:Landroid/net/Uri;
    .restart local v4       #whichSound:Ljava/lang/String;
    :cond_3
    const-string v5, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playSounds: failed to load ringtone from uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1355
    .end local v1           #sfx:Landroid/media/Ringtone;
    :cond_4
    const-string v5, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playSounds: could not parse Uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1358
    .end local v3           #soundUri:Landroid/net/Uri;
    :cond_5
    const-string v5, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playSounds: whichSound = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; soundPath was null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private pokeWakeDimlock()V
    .locals 2

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1181
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattDimLockReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1183
    :cond_0
    return-void
.end method

.method private resetStateLocked()V
    .locals 3

    .prologue
    .line 826
    const-string v1, "KeyguardViewMediator"

    const-string v2, "resetStateLocked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 828
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 829
    return-void
.end method

.method private showBatteryStatus(I)V
    .locals 4
    .parameter "action"

    .prologue
    .line 910
    const-string v1, "KeyguardViewMediator"

    const-string v2, "showBatteryStatus"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 912
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 913
    return-void
.end method

.method private showLocked()V
    .locals 3

    .prologue
    .line 887
    const-string v1, "KeyguardViewMediator"

    const-string v2, "showLocked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 890
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 891
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 892
    return-void
.end method

.method private showLowBatteryWarn(I)V
    .locals 4
    .parameter "level"

    .prologue
    .line 930
    const-string v1, "KeyguardViewMediator"

    const-string v2, "showLowBatteryWarn"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 932
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 933
    return-void
.end method

.method private verifyUnlockLocked()V
    .locals 2

    .prologue
    .line 836
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlockLocked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 838
    return-void
.end method

.method private wakeWhenReadyLocked(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    .line 869
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wakeWhenReadyLocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 878
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 879
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 880
    return-void
.end method


# virtual methods
.method public doKeyguardTimeout()V
    .locals 3

    .prologue
    const/16 v2, 0xd

    .line 545
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 546
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 547
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 548
    return-void
.end method

.method public doLidChangeTq(Z)Z
    .locals 3
    .parameter "isLidOpen"

    .prologue
    const/4 v2, 0x1

    .line 564
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyboardOpen:Z

    .line 566
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyboardOpen:Z

    if-nez v0, :cond_0

    move v0, v2

    .line 574
    :goto_0
    return v0

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyboardOpen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewProperties;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    const-string v0, "KeyguardViewMediator"

    const-string v1, "bypassing keyguard on sliding open of keyboard with non-secure keyguard"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v2

    .line 572
    goto :goto_0

    .line 574
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewProperties;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardDone(Z)V
    .locals 1
    .parameter "authenticated"

    .prologue
    .line 1132
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 1133
    return-void
.end method

.method public keyguardDone(ZZ)V
    .locals 6
    .parameter "authenticated"
    .parameter "wakeup"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1136
    monitor-enter p0

    .line 1137
    const v1, 0x11170

    const/4 v2, 0x2

    :try_start_0
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1138
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyguardDone("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1140
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_2

    move v1, v5

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1141
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1143
    if-eqz p1, :cond_0

    .line 1144
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->clearFailedAttempts()V

    .line 1147
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_1

    .line 1148
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-interface {v1, p1}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 1149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 1151
    if-eqz p1, :cond_1

    .line 1154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1155
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1158
    :cond_1
    monitor-exit p0

    .line 1159
    return-void

    :cond_2
    move v1, v4

    .line 1140
    goto :goto_0

    .line 1158
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1168
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 8
    .parameter "why"

    .prologue
    const-string v4, "KeyguardViewMediator"

    .line 366
    monitor-enter p0

    .line 367
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    .line 368
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onScreenTurnedOff("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v4, :cond_1

    .line 371
    const-string v4, "KeyguardViewMediator"

    const-string v5, "pending exit secure callback cancelled"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 373
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 374
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v4, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideLocked()V

    .line 404
    :cond_0
    :goto_0
    monitor-exit p0

    .line 405
    return-void

    .line 377
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v4, :cond_3

    .line 379
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 380
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 381
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattDimLockReleaser:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 384
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_0

    .line 404
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 385
    :cond_3
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4

    .line 390
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long v2, v4, v6

    .line 391
    .local v2, when:J
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "seq"

    iget v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x1000

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 395
    .local v1, sender:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 397
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting alarm to turn off keyguard, seq = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 399
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #sender:Landroid/app/PendingIntent;
    .end local v2           #when:J
    :cond_4
    const/4 v4, 0x4

    if-eq p1, v4, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguard()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .prologue
    .line 411
    monitor-enter p0

    .line 412
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    .line 413
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 414
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->notifyScreenOnLocked()V

    .line 416
    monitor-exit p0

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 3
    .parameter "simState"

    .prologue
    const-string v2, "KeyguardViewMediator"

    .line 938
    const-string v0, "KeyguardViewMediator"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$6;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 944
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 945
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 946
    const-string v0, "KeyguardViewMediator"

    const-string v0, "INTENT_VALUE_ICC_ABSENT and keygaurd isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguard()V

    goto :goto_0

    .line 950
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_0

    .line 956
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 957
    const-string v0, "KeyguardViewMediator"

    const-string v0, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing, we need to show the keyguard so the user can enter their sim pin"

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguard()V

    goto :goto_0

    .line 961
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_0

    .line 966
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_0

    .line 972
    :pswitch_3
    const-string v0, "KeyguardViewMediator"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTENT_VALUE_ICC_BLOCKED and keygaurd isn\'t showing : isShowing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 974
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguard()V

    goto :goto_0

    .line 976
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_0

    .line 940
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 352
    monitor-enter p0

    .line 353
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSystemReady:Z

    .line 355
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguard()V

    .line 356
    monitor-exit p0

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWakeKeyWhenKeyguardShowingTq(I)Z
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 1061
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakeKeyWhenKeyguardShowing("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isWakeKeyWhenKeyguardShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->wakeWhenReadyLocked(I)V

    .line 1068
    const/4 v0, 0x1

    .line 1070
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pokeFullBattWakelock()V
    .locals 5

    .prologue
    .line 1116
    monitor-enter p0

    .line 1118
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFullBattWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1119
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1120
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFullBattWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFullBattWakelockSequence:I

    .line 1121
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1388

    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFullBattWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1122
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1123
    monitor-exit p0

    .line 1124
    return-void

    .line 1123
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pokeWakeDimlock(I)V
    .locals 8
    .parameter "millis"

    .prologue
    .line 1186
    int-to-long v0, p1

    .line 1187
    .local v0, mills:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    const-wide/16 v0, 0x0

    .line 1189
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long v2, v4, v6

    .line 1191
    .local v2, when:J
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1193
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1201
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 1098
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyboardOpen:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2710

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock(I)V

    .line 1100
    return-void

    .line 1098
    :cond_0
    const/16 v0, 0x1388

    goto :goto_0
.end method

.method public pokeWakelock(I)V
    .locals 5
    .parameter "holdMs"

    .prologue
    .line 1104
    monitor-enter p0

    .line 1106
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1107
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1108
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    .line 1109
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1110
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1111
    monitor-exit p0

    .line 1112
    return-void

    .line 1111
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHidden(Z)V
    .locals 5
    .parameter "isHidden"

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 522
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 523
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 524
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 525
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v2, v3

    .line 523
    goto :goto_0
.end method

.method public setKeyguardEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const-string v1, "KeyguardViewMediator"

    .line 425
    monitor-enter p0

    .line 426
    :try_start_0
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyguardEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 431
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_2

    .line 432
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_0

    .line 433
    const-string v1, "KeyguardViewMediator"

    const-string v2, "in process of verifyUnlock request, ignoring"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    monitor-exit p0

    .line 475
    :goto_0
    return-void

    .line 440
    :cond_0
    const-string v1, "KeyguardViewMediator"

    const-string v2, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 443
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideLocked()V

    .line 474
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 444
    :cond_2
    if-eqz p1, :cond_1

    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v1, :cond_1

    .line 446
    const-string v1, "KeyguardViewMediator"

    const-string v2, "previously hidden, reshowing, reenabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 450
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_3

    .line 451
    const-string v1, "KeyguardViewMediator"

    const-string v2, "onKeyguardExitResult(false), resetting"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 453
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 454
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_1

    .line 456
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showLocked()V

    .line 461
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 462
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 463
    const-string v1, "KeyguardViewMediator"

    const-string v2, "waiting until mWaitingUntilKeyguardVisible is false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 466
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 471
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    const-string v1, "KeyguardViewMediator"

    const-string v2, "done waiting for mWaitingUntilKeyguardVisible"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 2
    .parameter "callback"

    .prologue
    const-string v0, "KeyguardViewMediator"

    .line 481
    monitor-enter p0

    .line 482
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    const-string v0, "KeyguardViewMediator"

    const-string v1, "ignoring because device isn\'t provisioned"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 500
    :goto_0
    monitor-exit p0

    .line 501
    return-void

    .line 487
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_1

    .line 491
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock called when not externally disabled"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 493
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v0, :cond_2

    .line 495
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_0

    .line 497
    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 498
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
