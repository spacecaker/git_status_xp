.class public Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnAlbumArtGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method public constructor <init>(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2470
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const-string v2, "###"

    .line 2474
    const-string v0, "###"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnAlbumArtGestureListener() 1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    if-nez p1, :cond_0

    .line 2477
    const-string v0, "###"

    const-string v0, "OnAlbumArtGestureListener() 2"

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x0

    const-string v4, "###"

    .line 2493
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v4, v4, Lcom/android/music/MediaPlaybackActivity;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2496
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-boolean v4, v4, Lcom/android/music/MediaPlaybackActivity;->mCurConfig:Z

    if-eqz v4, :cond_0

    .line 2497
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v4, v4, Lcom/android/music/MediaPlaybackActivity;->mTitleInfo:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2500
    :cond_0
    sget-boolean v4, Lcom/android/music/MusicUtils;->bIsSkipFlingEvent:Z

    if-eqz v4, :cond_1

    move v4, v8

    .line 2638
    :goto_0
    return v4

    .line 2503
    :cond_1
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v4, v4, Lcom/android/music/MediaPlaybackActivity;->reNomalHandler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 2505
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v4, v4, Lcom/android/music/MediaPlaybackActivity;->reNomalHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2508
    :cond_2
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$3200(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2509
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v4, v4, Lcom/android/music/MediaPlaybackActivity;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2511
    if-eqz p2, :cond_d

    if-eqz p1, :cond_d

    .line 2512
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 2513
    .local v0, dx:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_c

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_c

    .line 2517
    const/4 v4, 0x1

    :try_start_0
    sput-boolean v4, Lcom/android/music/MusicUtils;->bIsSkipFlingEvent:Z

    .line 2519
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v5

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mPlayerPos:I
    invoke-static {v4, v5}, Lcom/android/music/MediaPlaybackActivity;->access$3802(Lcom/android/music/MediaPlaybackActivity;I)I

    .line 2521
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$3200(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 2523
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v4, v4, Lcom/android/music/MediaPlaybackActivity;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->isDrawingCacheEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2524
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v4, v4, Lcom/android/music/MediaPlaybackActivity;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackActivity;->access$3100(Lcom/android/music/MediaPlaybackActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2528
    :goto_1
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v4, v4, Lcom/android/music/MediaPlaybackActivity;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2529
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$3200(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2534
    :goto_2
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v5, v5, Lcom/android/music/MediaPlaybackActivity;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/android/music/MediaPlaybackActivity;->access$3102(Lcom/android/music/MediaPlaybackActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2540
    const/4 v4, 0x0

    cmpg-float v4, p3, v4

    if-gez v4, :cond_8

    .line 2541
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mPlayerPos:I
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$3800(Lcom/android/music/MediaPlaybackActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->nextPosition()I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 2543
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->nextPosition()I

    move-result v5

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mPlayerPos:I
    invoke-static {v4, v5}, Lcom/android/music/MediaPlaybackActivity;->access$3802(Lcom/android/music/MediaPlaybackActivity;I)I

    .line 2544
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mPlayerPos:I
    invoke-static {v6}, Lcom/android/music/MediaPlaybackActivity;->access$3800(Lcom/android/music/MediaPlaybackActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/music/IMediaPlaybackService;->getNextAlbumInfo(I)Lcom/sec/android/app/music/MusicAlbumInfo;

    move-result-object v5

    #setter for: Lcom/android/music/MediaPlaybackActivity;->albumInfo:Lcom/sec/android/app/music/MusicAlbumInfo;
    invoke-static {v4, v5}, Lcom/android/music/MediaPlaybackActivity;->access$4002(Lcom/android/music/MediaPlaybackActivity;Lcom/sec/android/app/music/MusicAlbumInfo;)Lcom/sec/android/app/music/MusicAlbumInfo;

    .line 2546
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->albumInfo:Lcom/sec/android/app/music/MusicAlbumInfo;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$4000(Lcom/android/music/MediaPlaybackActivity;)Lcom/sec/android/app/music/MusicAlbumInfo;

    move-result-object v4

    if-nez v4, :cond_6

    .line 2547
    const-string v4, "###"

    const-string v5, "onFling(): mCorePlayer.getNextAlbumInfo()==null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mDefaultBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$4100(Lcom/android/music/MediaPlaybackActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_3

    .line 2549
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    #calls: Lcom/android/music/MediaPlaybackActivity;->getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;
    invoke-static {v4, v5, v6}, Lcom/android/music/MediaPlaybackActivity;->access$4200(Lcom/android/music/MediaPlaybackActivity;Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    .line 2550
    :cond_3
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$3200(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mDefaultBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackActivity;->access$4100(Lcom/android/music/MediaPlaybackActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2558
    :goto_3
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v4, v4, Lcom/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f040001

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 2559
    .local v2, inAni:Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v4, v4, Lcom/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f040002

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 2560
    .local v3, outAni:Landroid/view/animation/Animation;
    new-instance v4, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener$1;

    invoke-direct {v4, p0}, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener$1;-><init>(Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2626
    :goto_4
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$3200(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2627
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v4, v4, Lcom/android/music/MediaPlaybackActivity;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .end local v2           #inAni:Landroid/view/animation/Animation;
    .end local v3           #outAni:Landroid/view/animation/Animation;
    :goto_5
    move v4, v8

    .line 2633
    goto/16 :goto_0

    .line 2526
    :cond_4
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v4, v4, Lcom/android/music/MediaPlaybackActivity;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v6}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x1

    #calls: Lcom/android/music/MediaPlaybackActivity;->getArtwork(IZ)Landroid/graphics/Bitmap;
    invoke-static {v5, v6, v7}, Lcom/android/music/MediaPlaybackActivity;->access$3900(Lcom/android/music/MediaPlaybackActivity;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2629
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2630
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MusicPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException occured 14 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2531
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v4, v4, Lcom/android/music/MediaPlaybackActivity;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 2552
    :cond_6
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$3200(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->albumInfo:Lcom/sec/android/app/music/MusicAlbumInfo;
    invoke-static {v6}, Lcom/android/music/MediaPlaybackActivity;->access$4000(Lcom/android/music/MediaPlaybackActivity;)Lcom/sec/android/app/music/MusicAlbumInfo;

    move-result-object v6

    iget v6, v6, Lcom/sec/android/app/music/MusicAlbumInfo;->mAlbumID:I

    const/4 v7, 0x1

    #calls: Lcom/android/music/MediaPlaybackActivity;->getArtwork(IZ)Landroid/graphics/Bitmap;
    invoke-static {v5, v6, v7}, Lcom/android/music/MediaPlaybackActivity;->access$3900(Lcom/android/music/MediaPlaybackActivity;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 2555
    :cond_7
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$3200(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v6}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x1

    #calls: Lcom/android/music/MediaPlaybackActivity;->getArtwork(IZ)Landroid/graphics/Bitmap;
    invoke-static {v5, v6, v7}, Lcom/android/music/MediaPlaybackActivity;->access$3900(Lcom/android/music/MediaPlaybackActivity;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 2584
    :cond_8
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mPlayerPos:I
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$3800(Lcom/android/music/MediaPlaybackActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->prevPosition()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 2586
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->nextPosition()I

    move-result v5

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mPlayerPos:I
    invoke-static {v4, v5}, Lcom/android/music/MediaPlaybackActivity;->access$3802(Lcom/android/music/MediaPlaybackActivity;I)I

    .line 2587
    const-string v4, "###"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Onfling left : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mPlayerPos:I
    invoke-static {v6}, Lcom/android/music/MediaPlaybackActivity;->access$3800(Lcom/android/music/MediaPlaybackActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mPlayerPos:I
    invoke-static {v6}, Lcom/android/music/MediaPlaybackActivity;->access$3800(Lcom/android/music/MediaPlaybackActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/music/IMediaPlaybackService;->getPrevAlbumInfo(I)Lcom/sec/android/app/music/MusicAlbumInfo;

    move-result-object v5

    #setter for: Lcom/android/music/MediaPlaybackActivity;->albumInfo:Lcom/sec/android/app/music/MusicAlbumInfo;
    invoke-static {v4, v5}, Lcom/android/music/MediaPlaybackActivity;->access$4002(Lcom/android/music/MediaPlaybackActivity;Lcom/sec/android/app/music/MusicAlbumInfo;)Lcom/sec/android/app/music/MusicAlbumInfo;

    .line 2591
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->albumInfo:Lcom/sec/android/app/music/MusicAlbumInfo;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$4000(Lcom/android/music/MediaPlaybackActivity;)Lcom/sec/android/app/music/MusicAlbumInfo;

    move-result-object v4

    if-nez v4, :cond_a

    .line 2592
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mDefaultBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$4100(Lcom/android/music/MediaPlaybackActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_9

    .line 2593
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    #calls: Lcom/android/music/MediaPlaybackActivity;->getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;
    invoke-static {v4, v5, v6}, Lcom/android/music/MediaPlaybackActivity;->access$4200(Lcom/android/music/MediaPlaybackActivity;Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    .line 2595
    :cond_9
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$3200(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mDefaultBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackActivity;->access$4100(Lcom/android/music/MediaPlaybackActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2603
    :goto_6
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v4, v4, Lcom/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    const/high16 v5, 0x7f04

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 2604
    .restart local v2       #inAni:Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v4, v4, Lcom/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f040003

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 2605
    .restart local v3       #outAni:Landroid/view/animation/Animation;
    new-instance v4, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener$2;

    invoke-direct {v4, p0}, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener$2;-><init>(Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_4

    .line 2597
    .end local v2           #inAni:Landroid/view/animation/Animation;
    .end local v3           #outAni:Landroid/view/animation/Animation;
    :cond_a
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$3200(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->albumInfo:Lcom/sec/android/app/music/MusicAlbumInfo;
    invoke-static {v6}, Lcom/android/music/MediaPlaybackActivity;->access$4000(Lcom/android/music/MediaPlaybackActivity;)Lcom/sec/android/app/music/MusicAlbumInfo;

    move-result-object v6

    iget v6, v6, Lcom/sec/android/app/music/MusicAlbumInfo;->mAlbumID:I

    const/4 v7, 0x1

    #calls: Lcom/android/music/MediaPlaybackActivity;->getArtwork(IZ)Landroid/graphics/Bitmap;
    invoke-static {v5, v6, v7}, Lcom/android/music/MediaPlaybackActivity;->access$3900(Lcom/android/music/MediaPlaybackActivity;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 2600
    :cond_b
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$3200(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v6}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x1

    #calls: Lcom/android/music/MediaPlaybackActivity;->getArtwork(IZ)Landroid/graphics/Bitmap;
    invoke-static {v5, v6, v7}, Lcom/android/music/MediaPlaybackActivity;->access$3900(Lcom/android/music/MediaPlaybackActivity;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :cond_c
    move v4, v8

    .line 2635
    goto/16 :goto_0

    .end local v0           #dx:I
    :cond_d
    move v4, v8

    .line 2638
    goto/16 :goto_0
.end method
