.class public Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;
.super Landroid/widget/FrameLayout;
.source "CircleLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/CircleLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperWidget"
.end annotation


# instance fields
.field private final ACTION_LOCKSCREEN_LIVE_WALLPAPER_CHANGED:Ljava/lang/String;

.field private final ACTION_LOCKSCREEN_WALLPAPER_CHANGED:Ljava/lang/String;

.field private final CSC_WALLPAPERIMAGE_PATH:Ljava/lang/String;

.field private final DBG:Z

.field private final MSG_LIVE_WALLPAPER_CHANGED:I

.field private final MSG_WALLPAPER_CHANGED:I

.field private final TAG:Ljava/lang/String;

.field private final WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleLockScreen;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/CircleLockScreen;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const-string v5, "com.android.lockscreenwallpaper.LIVE_CHANGED"

    const-string v4, "com.android.lockscreenwallpaper.CHANGED"

    .line 471
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    .line 472
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 452
    const-string v1, "WallpaperWidget"

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->TAG:Ljava/lang/String;

    .line 453
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->DBG:Z

    .line 456
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 459
    const-string v1, "com.android.lockscreenwallpaper.CHANGED"

    iput-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->ACTION_LOCKSCREEN_WALLPAPER_CHANGED:Ljava/lang/String;

    .line 460
    const-string v1, "com.android.lockscreenwallpaper.LIVE_CHANGED"

    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->ACTION_LOCKSCREEN_LIVE_WALLPAPER_CHANGED:Ljava/lang/String;

    .line 462
    const-string v1, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 463
    const-string v1, "/system/wallpaper/default_lockscreen/default_lockscreen.jpg"

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->CSC_WALLPAPERIMAGE_PATH:Ljava/lang/String;

    .line 465
    const/16 v1, 0x12c0

    iput v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->MSG_WALLPAPER_CHANGED:I

    .line 466
    const/16 v1, 0x12c1

    iput v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->MSG_LIVE_WALLPAPER_CHANGED:I

    .line 475
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 476
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 477
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->addView(Landroid/view/View;II)V

    .line 480
    new-instance v1, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$1;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;Lcom/android/internal/policy/impl/CircleLockScreen;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mHandler:Landroid/os/Handler;

    .line 495
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 496
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.lockscreenwallpaper.CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    const-string v1, "com.android.lockscreenwallpaper.LIVE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    new-instance v1, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$2;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;Lcom/android/internal/policy/impl/CircleLockScreen;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 510
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 513
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->setLockScreenWallpaper()V

    .line 514
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->handleWallpaperUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->handleLiveWallpaperUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleLiveWallpaperUpdate()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    return-void
.end method

.method private handleWallpaperUpdate()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->setLockScreenWallpaper()V

    .line 520
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 529
    const-string v0, "WallpaperWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 531
    return-void
.end method

.method public setLockScreenBlack()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 536
    return-void
.end method

.method public setLockScreenWallpaper()V
    .locals 8

    .prologue
    const v6, 0x1080413

    const-string v7, "WallpaperWidget"

    const-string v4, "/system/wallpaper/default_lockscreen/default_lockscreen.jpg"

    const-string v3, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    .line 540
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->access$400(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getWallpaperMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 541
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    :goto_0
    return-void

    .line 545
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 547
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 550
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 551
    .local v0, ex:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 554
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    const-string v2, "/system/wallpaper/default_lockscreen/default_lockscreen.jpg"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 556
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 557
    const-string v2, "WallpaperWidget"

    const-string v2, "csc wallpaper file exist "

    invoke-static {v7, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "/system/wallpaper/default_lockscreen/default_lockscreen.jpg"

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 560
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 561
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v2, "WallpaperWidget"

    const-string v2, "csc wallpaper file exist. But creating is failed. "

    invoke-static {v7, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 566
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
