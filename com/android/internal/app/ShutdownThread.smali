.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final PATH_SHUTDOWNSOUND:Ljava/lang/String; = "//system/media/audio/ui/shutdown.ogg"

.field private static PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String; = null

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mContext:Landroid/content/Context;

.field public static mReboot:I

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mp:Landroid/media/MediaPlayer;

.field private static sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

.field private static sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field private static sIsSamsungAnimation:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 75
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String;

    .line 76
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    .line 77
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    .line 78
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    .line 79
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 90
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 99
    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public static IsShutDownStarted()Z
    .locals 3

    .prologue
    .line 625
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 626
    :try_start_0
    sget-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_0

    .line 627
    const-string v1, "ShutdownThread"

    const-string/jumbo v2, "shutdown already running , return true."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    .line 631
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 633
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSamsungSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$500()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private static beginShutdownSamsungSequence(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v7, "ShutdownThread"

    .line 184
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 185
    :try_start_0
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    .line 186
    const-string v3, "ShutdownThread"

    const-string v4, "Request to shutdown already running, returning."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    monitor-exit v2

    .line 244
    .end local p0
    :goto_0
    return-void

    .line 189
    .restart local p0
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 190
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    new-instance v1, Landroid/app/ShutdownDialog;

    invoke-direct {v1, p0}, Landroid/app/ShutdownDialog;-><init>(Landroid/content/Context;)V

    .line 195
    .local v1, pd:Landroid/app/ShutdownDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ShutdownDialog;->setCancelable(Z)V

    .line 196
    invoke-virtual {v1}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 198
    invoke-virtual {v1}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 199
    invoke-virtual {v1}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 207
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v2, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    .line 209
    :try_start_1
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    :goto_1
    new-instance v2, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v2}, Lcom/android/internal/app/ShutdownThread$2;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/ShutdownDialog;->setOnAnimationEnd(Ljava/lang/Runnable;)V

    .line 223
    invoke-virtual {v1}, Landroid/app/ShutdownDialog;->show()V

    .line 225
    const-string v2, "ShutdownThread"

    const-string v2, "animation dialog shown."

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 229
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/PowerManager;

    iput-object p0, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 230
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 231
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    :try_start_2
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "Shutdown"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 235
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 241
    :cond_1
    :goto_2
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v3, Lcom/android/internal/app/ShutdownThread$3;

    invoke-direct {v3}, Lcom/android/internal/app/ShutdownThread$3;-><init>()V

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 243
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v2}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 190
    .end local v1           #pd:Landroid/app/ShutdownDialog;
    .restart local p0
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 210
    .restart local v1       #pd:Landroid/app/ShutdownDialog;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 211
    .local v0, e:Ljava/lang/InterruptedException;
    sput-object v6, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    goto :goto_1

    .line 236
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local p0
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 237
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v2, "No permission to acquire wake lock"

    invoke-static {v7, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v7, "ShutdownThread"

    .line 352
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 353
    :try_start_0
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    .line 354
    const-string v3, "ShutdownThread"

    const-string v4, "Request to shutdown already running, returning."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    monitor-exit v2

    .line 392
    .end local p0
    :goto_0
    return-void

    .line 357
    .restart local p0
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 358
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 363
    .local v1, pd:Landroid/app/ProgressDialog;
    const v2, 0x104011b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    const v2, 0x104011c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 365
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 366
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 367
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 370
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 373
    :cond_1
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 376
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 377
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/PowerManager;

    iput-object p0, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 378
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 379
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 381
    :try_start_1
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "Shutdown"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 383
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 389
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v3, Lcom/android/internal/app/ShutdownThread$6;

    invoke-direct {v3}, Lcom/android/internal/app/ShutdownThread$6;-><init>()V

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 391
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v2}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 358
    .end local v1           #pd:Landroid/app/ProgressDialog;
    .restart local p0
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 384
    .end local p0
    .restart local v1       #pd:Landroid/app/ProgressDialog;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 385
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v2, "No permission to acquire wake lock"

    invoke-static {v7, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 346
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    .line 347
    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 348
    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 349
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 5
    .parameter "reboot"
    .parameter "reason"

    .prologue
    const-string v4, "ShutdownThread"

    .line 595
    if-eqz p0, :cond_3

    .line 596
    const-string v2, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting, reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :try_start_0
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :goto_0
    const-string v2, "ShutdownThread"

    const-string v2, "Performing low-level shutdown..."

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/android/internal/app/ShutdownThread;->mReboot:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 621
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 622
    return-void

    :cond_0
    const-string v4, "now"

    invoke-static {v4}, Landroid/os/Power;->reboot(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v4, "recovery"

    invoke-static {v4}, Landroid/os/Power;->reboot(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v4, "download"

    invoke-static {v4}, Landroid/os/Power;->reboot(Ljava/lang/String;)V

    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v2, "Reboot failed, will attempt shutdown instead"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 604
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    .line 606
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 614
    :goto_1
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 615
    :catch_1
    move-exception v2

    goto :goto_0

    .line 607
    :catch_2
    move-exception v0

    .line 609
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v2, "Failed to vibrate during shutdown."

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "confirm"

    .prologue
    const-string v5, "ShutdownThread"

    .line 122
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 123
    :try_start_0
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v4, :cond_0

    .line 124
    const-string v4, "ShutdownThread"

    const-string v5, "Request to shutdown already running, returning."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    monitor-exit v3

    .line 180
    :goto_0
    return-void

    .line 127
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 131
    const-string/jumbo v3, "ro.monkey"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 133
    .local v2, isDebuggableMonkeyBuild:Z
    if-eqz v2, :cond_1

    .line 134
    const-string v3, "ShutdownThread"

    const-string v3, "Rejected shutdown as monkey is detected to be running."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    .end local v2           #isDebuggableMonkeyBuild:Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 138
    .restart local v2       #isDebuggableMonkeyBuild:Z
    :cond_1
    const-string v3, "ShutdownThread"

    const-string v3, "Notifying thread to start radio shutdown"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v1, Ljava/io/File;

    const-string v3, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    .line 143
    const-string v3, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sIsSamsungAnimation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-eqz p1, :cond_3

    .line 148
    const-string v3, "ShutdownThread"

    const-string v3, "########POWEROFF START WITH CONFIRM######"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104011b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104011d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    new-instance v5, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v5, p0}, Lcom/android/internal/app/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 166
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10d0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 169
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 171
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 173
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_3
    const-string v3, "ShutdownThread"

    const-string v3, "########POWEROFF START WITHOUT CONFIRM######"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    if-eqz v3, :cond_4

    .line 175
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSamsungSequence(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 177
    :cond_4
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public static startSoundThreadForPowerOff()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const-string v12, "//system/media/audio/ui/shutdown.ogg"

    const-string v11, "ShutdownThread"

    .line 254
    const/4 v1, 0x0

    .line 256
    .local v1, bExceptionArised:Z
    :try_start_0
    new-instance v8, Landroid/media/MediaPlayer;

    invoke-direct {v8}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v8, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    .line 257
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    const-string v9, "//system/media/audio/ui/shutdown.ogg"

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 258
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 259
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 260
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    new-instance v9, Lcom/android/internal/app/ShutdownThread$4;

    invoke-direct {v9}, Lcom/android/internal/app/ShutdownThread$4;-><init>()V

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    new-instance v4, Ljava/io/File;

    const-string v8, "//system/media/audio/ui/shutdown.ogg"

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v4, f:Ljava/io/File;
    const-string v8, "ShutdownThread"

    const-string v8, "Finding sound file : //system/media/audio/ui/shutdown.ogg"

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v2

    .line 280
    .local v2, bFileValid:Z
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 282
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string/jumbo v8, "shutdown"

    const-string v9, "1"

    invoke-virtual {v0, v8, v9}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 285
    const-string v8, "ShutdownThread"

    const-string v8, "Sound file found"

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v6, Ljava/lang/Thread;

    new-instance v8, Lcom/android/internal/app/ShutdownThread$5;

    invoke-direct {v8}, Lcom/android/internal/app/ShutdownThread$5;-><init>()V

    invoke-direct {v6, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 306
    .local v6, soundThread:Ljava/lang/Thread;
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    .line 307
    .local v7, volume:I
    if-lez v7, :cond_1

    .line 312
    new-instance v8, Ljava/util/concurrent/Semaphore;

    invoke-direct {v8, v10}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v8, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    .line 314
    :try_start_1
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v8, :cond_0

    .line 315
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v8}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    :cond_0
    :goto_1
    const-string/jumbo v8, "situation=8;device=1"

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 323
    .local v5, situationVol:F
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v8, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 325
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 331
    .end local v5           #situationVol:F
    .end local v6           #soundThread:Ljava/lang/Thread;
    .end local v7           #volume:I
    :cond_1
    :goto_2
    return-void

    .line 269
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #bFileValid:Z
    .end local v4           #f:Ljava/io/File;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 270
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    const/4 v1, 0x1

    goto :goto_0

    .line 317
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #bFileValid:Z
    .restart local v4       #f:Ljava/io/File;
    .restart local v6       #soundThread:Ljava/lang/Thread;
    .restart local v7       #volume:I
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 318
    .local v3, e:Ljava/lang/InterruptedException;
    const/4 v8, 0x0

    sput-object v8, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    goto :goto_1

    .line 329
    .end local v3           #e:Ljava/lang/InterruptedException;
    .end local v6           #soundThread:Ljava/lang/Thread;
    .end local v7           #volume:I
    :cond_2
    const-string v8, "ShutdownThread"

    const-string v8, "Sound file not found"

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 397
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 398
    monitor-exit v0

    .line 399
    return-void

    .line 398
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 28

    .prologue
    .line 409
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    .line 412
    .local v25, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v25, :cond_0

    :try_start_0
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_0
    const/4 v3, 0x1

    move/from16 v26, v3

    .line 413
    .local v26, radioOff:Z
    :goto_0
    if-nez v26, :cond_1

    .line 414
    const-string v3, "ShutdownThread"

    const-string v4, "Turning off radio..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v3, 0x0

    move-object/from16 v0, v25

    move v1, v3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :cond_1
    :goto_1
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v3, :cond_3

    .line 425
    :try_start_1
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 428
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v3, :cond_2

    .line 429
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 436
    :cond_2
    const-string v3, "ShutdownThread"

    const-string v4, "animation end detected"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_9

    .line 440
    :cond_3
    :goto_2
    new-instance v6, Lcom/android/internal/app/ShutdownThread$7;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$7;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 453
    .local v6, br:Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v4, :cond_f

    const-string v4, "1"

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v4, :cond_10

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 454
    .local v27, reason:Ljava/lang/String;
    const-string/jumbo v3, "sys.shutdown.requested"

    move-object v0, v3

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v3, "ShutdownThread"

    const-string v4, "Sending shutdown broadcast..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 461
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 464
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long v19, v3, v5

    .line 465
    .local v19, endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3

    .line 466
    :goto_5
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    move v4, v0

    if-nez v4, :cond_4

    .line 467
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v14, v19, v4

    .line 468
    .local v14, delay:J
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-gtz v4, :cond_11

    .line 469
    const-string v4, "ShutdownThread"

    const-string v5, "Shutdown broadcast timed out"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .end local v14           #delay:J
    :cond_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 479
    const-string v3, "ShutdownThread"

    const-string v4, "Shutting down activity manager..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v3, "activity"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 483
    .local v11, am:Landroid/app/IActivityManager;
    if-eqz v11, :cond_5

    .line 485
    const/16 v3, 0x2710

    :try_start_3
    invoke-interface {v11, v3}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8

    .line 490
    :cond_5
    :goto_6
    const-string v3, "bluetooth"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v12

    .line 494
    .local v12, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v23

    .line 499
    .local v23, mount:Landroid/os/storage/IMountService;
    if-eqz v12, :cond_6

    :try_start_4
    invoke-interface {v12}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_12

    :cond_6
    const/4 v3, 0x1

    move v13, v3

    .line 501
    .local v13, bluetoothOff:Z
    :goto_7
    if-nez v13, :cond_7

    .line 502
    const-string v3, "ShutdownThread"

    const-string v4, "Disabling Bluetooth..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 511
    :cond_7
    :goto_8
    if-eqz v25, :cond_8

    :try_start_5
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v3

    if-nez v3, :cond_13

    :cond_8
    const/4 v3, 0x1

    move/from16 v26, v3

    .line 512
    :goto_9
    if-nez v26, :cond_9

    .line 513
    const-string v3, "ShutdownThread"

    const-string v4, "Turning off radio..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v3, 0x0

    move-object/from16 v0, v25

    move v1, v3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 521
    :cond_9
    :goto_a
    const-string v3, "ShutdownThread"

    const-string v4, "Waiting for Bluetooth and Radio..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/16 v22, 0x0

    .local v22, i:I
    :goto_b
    const/16 v3, 0x10

    move/from16 v0, v22

    move v1, v3

    if-ge v0, v1, :cond_c

    .line 525
    if-nez v13, :cond_a

    .line 527
    :try_start_6
    invoke-interface {v12}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_14

    const/4 v3, 0x1

    move v13, v3

    .line 534
    :cond_a
    :goto_c
    if-nez v26, :cond_b

    .line 536
    :try_start_7
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    move-result v3

    if-nez v3, :cond_15

    const/4 v3, 0x1

    move/from16 v26, v3

    .line 542
    :cond_b
    :goto_d
    if-eqz v26, :cond_16

    if-eqz v13, :cond_16

    .line 543
    const-string v3, "ShutdownThread"

    const-string v4, "Radio and Bluetooth shutdown complete."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_c
    new-instance v24, Lcom/android/internal/app/ShutdownThread$8;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$8;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 557
    .local v24, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v3, "ShutdownThread"

    const-string v4, "Shutting down MountService"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 560
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x4e20

    add-long v17, v3, v5

    .line 561
    .local v17, endShutTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3

    .line 563
    if-eqz v23, :cond_17

    .line 564
    :try_start_8
    invoke-interface/range {v23 .. v24}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 571
    :goto_e
    :try_start_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    move v4, v0

    if-nez v4, :cond_d

    .line 572
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v14, v17, v4

    .line 573
    .restart local v14       #delay:J
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-gtz v4, :cond_18

    .line 574
    const-string v4, "ShutdownThread"

    const-string v5, "Shutdown wait timed out"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    .end local v14           #delay:J
    :cond_d
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 584
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 585
    return-void

    .line 412
    .end local v6           #br:Landroid/content/BroadcastReceiver;
    .end local v11           #am:Landroid/app/IActivityManager;
    .end local v12           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v13           #bluetoothOff:Z
    .end local v17           #endShutTime:J
    .end local v19           #endTime:J
    .end local v22           #i:I
    .end local v23           #mount:Landroid/os/storage/IMountService;
    .end local v24           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v26           #radioOff:Z
    .end local v27           #reason:Ljava/lang/String;
    :cond_e
    const/4 v3, 0x0

    move/from16 v26, v3

    goto/16 :goto_0

    .line 417
    :catch_0
    move-exception v3

    move-object/from16 v21, v3

    .line 418
    .local v21, ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during radio shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    const/16 v26, 0x1

    .restart local v26       #radioOff:Z
    goto/16 :goto_1

    .line 453
    .end local v21           #ex:Landroid/os/RemoteException;
    .restart local v6       #br:Landroid/content/BroadcastReceiver;
    :cond_f
    const-string v4, "0"

    goto/16 :goto_3

    :cond_10
    const-string v4, ""

    goto/16 :goto_4

    .line 473
    .restart local v14       #delay:J
    .restart local v19       #endTime:J
    .restart local v27       #reason:Ljava/lang/String;
    :cond_11
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v4, v0

    invoke-virtual {v4, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_5

    .line 474
    :catch_1
    move-exception v4

    goto/16 :goto_5

    .line 477
    .end local v14           #delay:J
    :catchall_0
    move-exception v4

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v4

    .line 499
    .restart local v11       #am:Landroid/app/IActivityManager;
    .restart local v12       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v23       #mount:Landroid/os/storage/IMountService;
    :cond_12
    const/4 v3, 0x0

    move v13, v3

    goto/16 :goto_7

    .line 505
    :catch_2
    move-exception v3

    move-object/from16 v21, v3

    .line 506
    .restart local v21       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    const/4 v13, 0x1

    .restart local v13       #bluetoothOff:Z
    goto/16 :goto_8

    .line 511
    .end local v21           #ex:Landroid/os/RemoteException;
    :cond_13
    const/4 v3, 0x0

    move/from16 v26, v3

    goto/16 :goto_9

    .line 516
    :catch_3
    move-exception v3

    move-object/from16 v21, v3

    .line 517
    .restart local v21       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during radio shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    const/16 v26, 0x1

    goto/16 :goto_a

    .line 527
    .end local v21           #ex:Landroid/os/RemoteException;
    .restart local v22       #i:I
    :cond_14
    const/4 v3, 0x0

    move v13, v3

    goto/16 :goto_c

    .line 529
    :catch_4
    move-exception v21

    .line 530
    .restart local v21       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    const/4 v13, 0x1

    goto/16 :goto_c

    .line 536
    .end local v21           #ex:Landroid/os/RemoteException;
    :cond_15
    const/4 v3, 0x0

    move/from16 v26, v3

    goto/16 :goto_d

    .line 537
    :catch_5
    move-exception v21

    .line 538
    .restart local v21       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during radio shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    const/16 v26, 0x1

    goto/16 :goto_d

    .line 546
    .end local v21           #ex:Landroid/os/RemoteException;
    :cond_16
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 524
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_b

    .line 566
    .restart local v17       #endShutTime:J
    .restart local v24       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_17
    :try_start_c
    const-string v4, "ShutdownThread"

    const-string v5, "MountService unavailable for shutdown"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_e

    .line 568
    :catch_6
    move-exception v4

    move-object/from16 v16, v4

    .line 569
    .local v16, e:Ljava/lang/Exception;
    :try_start_d
    const-string v4, "ShutdownThread"

    const-string v5, "Exception during MountService shutdown"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 582
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v4

    .line 578
    .restart local v14       #delay:J
    :cond_18
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v4, v0

    invoke-virtual {v4, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_e

    .line 579
    :catch_7
    move-exception v4

    goto/16 :goto_e

    .line 486
    .end local v12           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v13           #bluetoothOff:Z
    .end local v14           #delay:J
    .end local v17           #endShutTime:J
    .end local v22           #i:I
    .end local v23           #mount:Landroid/os/storage/IMountService;
    .end local v24           #observer:Landroid/os/storage/IMountShutdownObserver;
    :catch_8
    move-exception v3

    goto/16 :goto_6

    .line 437
    .end local v6           #br:Landroid/content/BroadcastReceiver;
    .end local v11           #am:Landroid/app/IActivityManager;
    .end local v19           #endTime:J
    .end local v27           #reason:Ljava/lang/String;
    :catch_9
    move-exception v3

    goto/16 :goto_2
.end method
