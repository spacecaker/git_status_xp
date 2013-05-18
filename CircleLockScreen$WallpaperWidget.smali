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
    .locals 8
    .parameter
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const-string v7, "com.android.lockscreenwallpaper.LIVE_CHANGED"

    const-string v6, "com.android.lockscreenwallpaper.CHANGED"

    .line 498
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->this$0:Lcom/android/internal/policy/impl/CircleLockScreen;

    .line 499
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 479
    const-string v2, "WallpaperWidget"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->TAG:Ljava/lang/String;

    .line 480
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->DBG:Z

    .line 483
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 486
    const-string v2, "com.android.lockscreenwallpaper.CHANGED"

    iput-object v6, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->ACTION_LOCKSCREEN_WALLPAPER_CHANGED:Ljava/lang/String;

    .line 487
    const-string v2, "com.android.lockscreenwallpaper.LIVE_CHANGED"

    iput-object v7, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->ACTION_LOCKSCREEN_LIVE_WALLPAPER_CHANGED:Ljava/lang/String;

    .line 489
    const-string v2, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 490
    const-string v2, "/system/wallpaper/default_lockscreen/default_lockscreen.jpg"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->CSC_WALLPAPERIMAGE_PATH:Ljava/lang/String;

    .line 492
    const/16 v2, 0x12c0

    iput v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->MSG_WALLPAPER_CHANGED:I

    .line 493
    const/16 v2, 0x12c1

    iput v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->MSG_LIVE_WALLPAPER_CHANGED:I

    .line 502
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 503
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 504
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->addView(Landroid/view/View;II)V

    .line 506
    const-string v2, "SGH-I827"

    const-string v3, "GT-S7500"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 508
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v5, :cond_1

    .line 510
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 515
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_1
    new-instance v2, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$1;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$1;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;Lcom/android/internal/policy/impl/CircleLockScreen;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mHandler:Landroid/os/Handler;

    .line 530
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 531
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.lockscreenwallpaper.CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    const-string v2, "com.android.lockscreenwallpaper.LIVE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    new-instance v2, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$2;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget$2;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;Lcom/android/internal/policy/impl/CircleLockScreen;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 545
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->setLockScreenWallpaper()V

    .line 549
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->handleWallpaperUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->handleLiveWallpaperUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleLiveWallpaperUpdate()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 560
    return-void
.end method

.method private handleWallpaperUpdate()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->setLockScreenWallpaper()V

    .line 555
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 564
    const-string v0, "WallpaperWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 566
    return-void
.end method

.method public setLockScreenBlack()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 571
    return-void
.end method

.method public setLockScreenWallpaper()V
    .locals 8

    .prologue
    const v6, 0x1080448

    const-string v7, "WallpaperWidget"

    const-string v4, "/system/wallpaper/default_lockscreen/default_lockscreen.jpg"

    const-string v3, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    .line 575
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 577
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
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

    .line 599
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 581
    .local v0, ex:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 584
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    const-string v2, "/system/wallpaper/default_lockscreen/default_lockscreen.jpg"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 587
    const-string v2, "WallpaperWidget"

    const-string v2, "csc wallpaper file exist "

    invoke-static {v7, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
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

    .line 590
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 591
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v2, "WallpaperWidget"

    const-string v2, "csc wallpaper file exist. But creating is failed. "

    invoke-static {v7, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 596
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
