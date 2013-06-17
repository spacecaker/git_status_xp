.class public Lcom/sec/android/app/camera/ReviewImage;
.super Landroid/app/Activity;
.source "ReviewImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;
    }
.end annotation


# static fields
.field private static final sOrderAdjacents:[I


# instance fields
.field mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

.field mBackPosition:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCache:Lcom/sec/android/app/camera/BitmapCache;

.field private mControlBar:Landroid/view/View;

.field mCurrentPosition:I

.field protected mDeletePhotoRunnable:Ljava/lang/Runnable;

.field private final mDismissOnScreenControlRunner:Ljava/lang/Runnable;

.field private mFullScreenInNormalMode:Z

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mGetter:Lcom/sec/android/app/camera/ImageGetter;

.field final mHandler:Lcom/sec/android/app/camera/GetterHandler;

.field private mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

.field private mNextImageView:Landroid/view/View;

.field mParam:Lcom/sec/android/app/camera/ImageManager$ImageListParam;

.field mPaused:Z

.field private mPrevImageView:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mSavedUri:Landroid/net/Uri;

.field private mShowControls:Z

.field private mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

.field private mZoomController:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/camera/ReviewImage;->sOrderAdjacents:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mPaused:Z

    .line 60
    iput-boolean v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mShowControls:Z

    .line 65
    new-instance v0, Lcom/sec/android/app/camera/GetterHandler;

    invoke-direct {v0}, Lcom/sec/android/app/camera/GetterHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    .line 69
    iput v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 70
    iput v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mBackPosition:I

    .line 98
    new-instance v0, Lcom/sec/android/app/camera/ReviewImage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ReviewImage$1;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mDismissOnScreenControlRunner:Ljava/lang/Runnable;

    .line 105
    new-instance v0, Lcom/sec/android/app/camera/ReviewImage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ReviewImage$2;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 399
    new-instance v0, Lcom/sec/android/app/camera/ReviewImage$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ReviewImage$7;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mDeletePhotoRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/ReviewImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->hideOnScreenControls()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/ReviewImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->showOnScreenControls()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/ImageViewTouch2;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/ZoomButtonsController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/ReviewImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->scheduleDismissOnScreenControls()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/ReviewImage;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/ReviewImage;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mDismissOnScreenControlRunner:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/BitmapCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mCache:Lcom/sec/android/app/camera/BitmapCache;

    return-object v0
.end method

.method static synthetic access$900()[I
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sec/android/app/camera/ReviewImage;->sOrderAdjacents:[I

    return-object v0
.end method

.method private buildImageListFromUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 2
    .parameter "uri"

    .prologue
    .line 592
    const/4 v0, 0x1

    .line 593
    .local v0, sort:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v1

    return-object v1
.end method

.method private chkImageSizeForThumbnail()Z
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 616
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->getCurrentImageWidth()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->getCurrentImageHeight()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 618
    :cond_0
    const/4 v0, 0x0

    .line 620
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCurrentImageHeight()I
    .locals 3

    .prologue
    .line 630
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 631
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImage;->getHeight()I

    move-result v1

    return v1
.end method

.method private getCurrentImageWidth()I
    .locals 3

    .prologue
    .line 625
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 626
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImage;->getWidth()I

    move-result v1

    return v1
.end method

.method private getCurrentUri()Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 608
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v3

    .line 612
    :goto_0
    return-object v1

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 610
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-nez v0, :cond_1

    move-object v1, v3

    .line 611
    goto :goto_0

    .line 612
    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private hideOnScreenControls()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->setVisible(Z)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomController:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 246
    return-void
.end method

.method private init(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 597
    if-nez p1, :cond_0

    move v1, v3

    .line 604
    :goto_0
    return v1

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mParam:Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ReviewImage;->buildImageListFromUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    .line 601
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 602
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-nez v0, :cond_2

    move v1, v3

    goto :goto_0

    .line 598
    .end local v0           #image:Lcom/sec/android/app/camera/gallery/IImage;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mParam:Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v1

    goto :goto_1

    .line 603
    .restart local v0       #image:Lcom/sec/android/app/camera/gallery/IImage;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 604
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private makeGetter()V
    .locals 2

    .prologue
    .line 588
    new-instance v0, Lcom/sec/android/app/camera/ImageGetter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/ImageGetter;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    .line 589
    return-void
.end method

.method private moveNextOrPrevious(I)V
    .locals 6
    .parameter "delta"

    .prologue
    const/4 v5, 0x1

    .line 819
    iget v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    add-int v2, v3, p1

    .line 820
    .local v2, nextImagePos:I
    iget-object v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v1

    .line 821
    .local v1, imageCount:I
    iget-object v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 823
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    instance-of v3, v0, Lcom/sec/android/app/camera/gallery/VideoObject;

    if-nez v3, :cond_1

    .line 824
    iget v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    sub-int v4, v1, v5

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    if-eqz v3, :cond_1

    .line 825
    iget v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    iget v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mBackPosition:I

    if-eq v3, v4, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 832
    invoke-virtual {p0, v2, v5}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    .line 833
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->showOnScreenControls()V

    goto :goto_0
.end method

.method private scheduleDismissOnScreenControls()V
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mDismissOnScreenControlRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/GetterHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mDismissOnScreenControlRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/GetterHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    return-void
.end method

.method private setButtonPanelVisibility(II)V
    .locals 2
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 563
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 564
    .local v0, button:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 565
    return-void
.end method

.method private setupOnScreenControls(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "rootView"
    .parameter "ownerView"

    .prologue
    .line 286
    const v0, 0x7f0a00c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    .line 287
    const v0, 0x7f0a00c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/ReviewImage;->setupZoomButtonController(Landroid/view/View;)V

    .line 293
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ReviewImage;->setupOnTouchListeners(Landroid/view/View;)V

    .line 294
    return-void
.end method

.method private setupOnTouchListeners(Landroid/view/View;)V
    .locals 5
    .parameter "rootView"

    .prologue
    .line 320
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;-><init>(Lcom/sec/android/app/camera/ReviewImage;Lcom/sec/android/app/camera/ReviewImage$1;)V

    invoke-direct {v2, p0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mGestureDetector:Landroid/view/GestureDetector;

    .line 326
    new-instance v0, Lcom/sec/android/app/camera/ReviewImage$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ReviewImage$5;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    .line 333
    .local v0, buttonListener:Landroid/view/View$OnTouchListener;
    new-instance v1, Lcom/sec/android/app/camera/ReviewImage$6;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/camera/ReviewImage$6;-><init>(Lcom/sec/android/app/camera/ReviewImage;Landroid/view/View$OnTouchListener;)V

    .line 345
    .local v1, rootListener:Landroid/view/View$OnTouchListener;
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 346
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 347
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 348
    return-void
.end method

.method private setupZoomButtonController(Landroid/view/View;)V
    .locals 3
    .parameter "ownerView"

    .prologue
    .line 297
    new-instance v0, Lcom/sec/android/app/camera/ZoomButtonsController;

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomController:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->setAutoDismissed(Z)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ZoomButtonsController;->setZoomSpeed(J)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    new-instance v1, Lcom/sec/android/app/camera/ReviewImage$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/ReviewImage$4;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->setOnZoomListener(Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;)V

    .line 317
    return-void
.end method

.method private showOnScreenControls()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 190
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    new-instance v3, Lcom/sec/android/app/camera/ReviewImage$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/ReviewImage$3;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    .line 220
    :goto_0
    return-void

    .line 201
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 208
    .local v1, image:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateNextPrevControls()V

    .line 210
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 212
    invoke-static {v1}, Lcom/sec/android/app/camera/ImageManager;->isImage(Lcom/sec/android/app/camera/gallery/IImage;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    .line 214
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ZoomButtonsController;->setVisible(Z)V

    .line 215
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomController:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 202
    .end local v1           #image:Lcom/sec/android/app/camera/gallery/IImage;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 203
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->finish()V

    goto :goto_0

    .line 217
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #image:Lcom/sec/android/app/camera/gallery/IImage;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/ZoomButtonsController;->setVisible(Z)V

    .line 218
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomController:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private startPlayVideoActivity()V
    .locals 6

    .prologue
    .line 734
    iget-object v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v1

    .line 735
    .local v1, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-eqz v1, :cond_0

    .line 736
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 738
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ReviewImage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 739
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 740
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "ReviewImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t view video "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startShareMediaActivity(Lcom/sec/android/app/camera/gallery/IImage;)V
    .locals 5
    .parameter "image"

    .prologue
    .line 717
    instance-of v2, p1, Lcom/sec/android/app/camera/gallery/VideoObject;

    .line 718
    .local v2, isVideo:Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 719
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    invoke-interface {p1}, Lcom/sec/android/app/camera/gallery/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    const-string v3, "android.intent.extra.STREAM"

    invoke-interface {p1}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 723
    if-eqz v2, :cond_0

    const v3, 0x7f07010e

    :goto_0
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/ReviewImage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/ReviewImage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :goto_1
    return-void

    .line 723
    :cond_0
    const v3, 0x7f07010d

    goto :goto_0

    .line 725
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 726
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    if-eqz v2, :cond_1

    const v3, 0x7f070101

    :goto_2
    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    const v3, 0x7f070102

    goto :goto_2
.end method

.method private updateActionIcons()V
    .locals 8

    .prologue
    const v7, 0x7f0a00bf

    const v6, 0x7f0a00c1

    const v5, 0x7f0a00c0

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 568
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->isPickIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 571
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    instance-of v1, v0, Lcom/sec/android/app/camera/gallery/VideoObject;

    if-eqz v1, :cond_1

    .line 572
    invoke-direct {p0, v5, v3}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    .line 573
    invoke-direct {p0, v6, v3}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    .line 574
    invoke-direct {p0, v7, v4}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    goto :goto_0

    .line 576
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->chkImageSizeForThumbnail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 577
    invoke-direct {p0, v5, v4}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    .line 578
    invoke-direct {p0, v6, v3}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    .line 583
    :goto_1
    invoke-direct {p0, v7, v3}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    goto :goto_0

    .line 580
    :cond_2
    invoke-direct {p0, v5, v3}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    .line 581
    invoke-direct {p0, v6, v4}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    goto :goto_1
.end method

.method private updateNextPrevControls()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 146
    iget v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    if-lez v4, :cond_2

    move v2, v7

    .line 147
    .local v2, showNext:Z
    :goto_0
    iget v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    iget-object v5, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v5

    sub-int/2addr v5, v7

    if-ge v4, v5, :cond_3

    move v3, v7

    .line 149
    .local v3, showPrev:Z
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    move v1, v7

    .line 150
    .local v1, prevIsVisible:Z
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    move v0, v7

    .line 152
    .local v0, nextIsVisible:Z
    :goto_3
    if-eqz v3, :cond_6

    if-nez v1, :cond_6

    .line 159
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_0
    :goto_4
    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    .line 176
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_1
    :goto_5
    return-void

    .end local v0           #nextIsVisible:Z
    .end local v1           #prevIsVisible:Z
    .end local v2           #showNext:Z
    .end local v3           #showPrev:Z
    :cond_2
    move v2, v6

    .line 146
    goto :goto_0

    .restart local v2       #showNext:Z
    :cond_3
    move v3, v6

    .line 147
    goto :goto_1

    .restart local v3       #showPrev:Z
    :cond_4
    move v1, v6

    .line 149
    goto :goto_2

    .restart local v1       #prevIsVisible:Z
    :cond_5
    move v0, v6

    .line 150
    goto :goto_3

    .line 161
    .restart local v0       #nextIsVisible:Z
    :cond_6
    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 165
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 178
    :cond_7
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 182
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->scheduleDismissOnScreenControls()V

    .line 258
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getImageView()Lcom/sec/android/app/camera/ImageViewTouch2;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    return-object v0
.end method

.method isPickIntent()Z
    .locals 2

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 840
    packed-switch p1, :pswitch_data_0

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 842
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 845
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    .line 849
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 852
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-nez v0, :cond_1

    .line 853
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->finish()V

    goto :goto_0

    .line 855
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 856
    iget v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    goto :goto_0

    .line 840
    :pswitch_data_0
    .packed-switch 0x1ea
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 747
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 797
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 750
    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/camera/MenuHelper;->isDeleteDialogShow()Z

    move-result v4

    if-nez v4, :cond_0

    .line 754
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v4, :cond_0

    .line 756
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v5, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    .line 757
    .local v2, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-eqz v2, :cond_0

    .line 759
    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    .line 760
    .local v0, curentImageUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mDeletePhotoRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v4, v2}, Lcom/sec/android/app/camera/MenuHelper;->deleteImage(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/sec/android/app/camera/gallery/IImage;)V

    goto :goto_0

    .line 766
    .end local v0           #curentImageUri:Landroid/net/Uri;
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->startPlayVideoActivity()V

    goto :goto_0

    .line 769
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v5, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    .line 770
    .restart local v2       #image:Lcom/sec/android/app/camera/gallery/IImage;
    if-eqz v2, :cond_0

    .line 771
    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/MenuHelper;->isWhiteListUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 774
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/ReviewImage;->startShareMediaActivity(Lcom/sec/android/app/camera/gallery/IImage;)V

    goto :goto_0

    .line 778
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v5, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    .line 779
    .restart local v2       #image:Lcom/sec/android/app/camera/gallery/IImage;
    if-eqz v2, :cond_0

    .line 780
    invoke-static {v2}, Lcom/sec/android/app/camera/Util;->createSetAsIntent(Lcom/sec/android/app/camera/gallery/IImage;)Landroid/content/Intent;

    move-result-object v3

    .line 782
    .local v3, intent:Landroid/content/Intent;
    const v4, 0x7f07010f

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/ReviewImage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/ReviewImage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 784
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 785
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const v4, 0x7f070102

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 791
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_5
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/ReviewImage;->moveNextOrPrevious(I)V

    goto :goto_0

    .line 794
    :pswitch_6
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/ReviewImage;->moveNextOrPrevious(I)V

    goto :goto_0

    .line 747
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00be
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "instanceState"

    .prologue
    const v10, 0x7f0a00c3

    const/4 v9, 0x1

    .line 515
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 517
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 518
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "android.intent.extra.fullScreen"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mFullScreenInNormalMode:Z

    .line 521
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/ReviewImage;->setDefaultKeyMode(I)V

    .line 522
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/ReviewImage;->requestWindowFeature(I)Z

    .line 523
    const v7, 0x7f03002c

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/ReviewImage;->setContentView(I)V

    .line 525
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/ReviewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mRootView:Landroid/view/View;

    .line 526
    const v7, 0x7f0a00c8

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/ReviewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    .line 527
    const v7, 0x7f0a00c4

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/ReviewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomController:Landroid/view/View;

    .line 528
    const v7, 0x7f0a006b

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/ReviewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/ImageViewTouch2;

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    .line 529
    iget-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    invoke-virtual {v7, v9}, Lcom/sec/android/app/camera/ImageViewTouch2;->setEnableTrackballScroll(Z)V

    .line 530
    new-instance v7, Lcom/sec/android/app/camera/BitmapCache;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lcom/sec/android/app/camera/BitmapCache;-><init>(I)V

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mCache:Lcom/sec/android/app/camera/BitmapCache;

    .line 531
    iget-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    iget-object v8, p0, Lcom/sec/android/app/camera/ReviewImage;->mCache:Lcom/sec/android/app/camera/BitmapCache;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/ImageViewTouch2;->setRecycler(Lcom/sec/android/app/camera/ImageViewTouchBase$Recycler;)V

    .line 533
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->makeGetter()V

    .line 535
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "image_list"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mParam:Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    .line 537
    if-eqz p1, :cond_0

    .line 538
    const-string v7, "uri"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    .line 539
    const-string v7, "show_controls"

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mShowControls:Z

    .line 545
    :goto_0
    const/4 v7, 0x4

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    .line 547
    .local v5, reviewIds:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v4, :cond_1

    aget v2, v0, v1

    .line 548
    .local v2, id:I
    iget-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 549
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 551
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 541
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #id:I
    .end local v4           #len$:I
    .end local v5           #reviewIds:[I
    .end local v6           #view:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    goto :goto_0

    .line 559
    .restart local v0       #arr$:[I
    .restart local v1       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #reviewIds:[I
    :cond_1
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/ReviewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/camera/ReviewImage;->setupOnScreenControls(Landroid/view/View;Landroid/view/View;)V

    .line 560
    return-void

    .line 545
    nop

    :array_0
    .array-data 0x4
        0xbet 0x0t 0xat 0x7ft
        0xc0t 0x0t 0xat 0x7ft
        0xbft 0x0t 0xat 0x7ft
        0xc2t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 272
    const-string v0, "ReviewImage"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->setVisible(Z)V

    .line 280
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/MenuHelper;->closeDialog()V

    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 283
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 118
    const-string v0, "ReviewImage"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ReviewImage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->hideOnScreenControls()V

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    .line 126
    const-string v7, "ReviewImage"

    const-string v8, "onResume"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v7, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v7, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v7, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v7, "file"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 135
    iget-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v3}, Lcom/sec/android/app/camera/ReviewImage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    const/4 v7, 0x4

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    .line 139
    .local v5, reviewIds:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget v2, v0, v1

    .line 140
    .local v2, id:I
    iget-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 141
    .local v6, view:Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setPressed(Z)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v2           #id:I
    .end local v6           #view:Landroid/view/View;
    :cond_0
    return-void

    .line 137
    :array_0
    .array-data 0x4
        0xbet 0x0t 0xat 0x7ft
        0xc0t 0x0t 0xat 0x7ft
        0xbft 0x0t 0xat 0x7ft
        0xc2t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "b"

    .prologue
    .line 640
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 641
    const-string v0, "uri"

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 643
    const-string v0, "show_controls"

    iget-boolean v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mShowControls:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 644
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "ReviewImage"

    .line 648
    const-string v1, "ReviewImage"

    const-string v1, "onStart"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 650
    iput-boolean v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mPaused:Z

    .line 652
    iget-boolean v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mFullScreenInNormalMode:Z

    if-eqz v1, :cond_0

    .line 653
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/ReviewImage;->init(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 658
    const-string v1, "ReviewImage"

    const-string v1, "init failed: "

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->finish()V

    .line 681
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v0

    .line 667
    .local v0, count:I
    if-nez v0, :cond_2

    .line 668
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->finish()V

    goto :goto_0

    .line 670
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    if-gt v0, v1, :cond_3

    .line 671
    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 674
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    if-nez v1, :cond_4

    .line 675
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->makeGetter()V

    .line 679
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    iget-boolean v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mShowControls:Z

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    .line 680
    iput-boolean v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mShowControls:Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 685
    const-string v0, "ReviewImage"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mPaused:Z

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageGetter;->cancelCurrent()V

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageGetter;->stop()V

    .line 694
    iput-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/GetterHandler;->removeAllGetterCallbacks()V

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v0, :cond_1

    .line 701
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->getCurrentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    .line 702
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 703
    iput-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageViewTouch2;->clear()V

    .line 707
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mCache:Lcom/sec/android/app/camera/BitmapCache;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/BitmapCache;->clear()V

    .line 714
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 800
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 815
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 802
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 806
    :pswitch_1
    move-object v0, p1

    .line 807
    .local v0, fv:Landroid/view/View;
    new-instance v1, Lcom/sec/android/app/camera/ReviewImage$9;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/camera/ReviewImage$9;-><init>(Lcom/sec/android/app/camera/ReviewImage;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 800
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setImage(IZ)V
    .locals 8
    .parameter "pos"
    .parameter "showControls"

    .prologue
    const/4 v7, 0x0

    .line 421
    iput p1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 423
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mCache:Lcom/sec/android/app/camera/BitmapCache;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/camera/BitmapCache;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 424
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 425
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v4, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    .line 426
    .local v3, image:Lcom/sec/android/app/camera/gallery/IImage;
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    new-instance v5, Lcom/sec/android/app/camera/RotateBitmap;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->getDegreesRotated()I

    move-result v6

    invoke-direct {v5, v0, v6}, Lcom/sec/android/app/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/ImageViewTouch2;->setImageRotateBitmapResetBase(Lcom/sec/android/app/camera/RotateBitmap;Z)V

    .line 428
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    .line 449
    :cond_0
    :goto_0
    new-instance v2, Lcom/sec/android/app/camera/ReviewImage$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/ReviewImage$8;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    .line 505
    .local v2, cb:Lcom/sec/android/app/camera/ImageGetterCallback;
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    if-eqz v4, :cond_1

    .line 506
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    iget-object v5, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget-object v6, p0, Lcom/sec/android/app/camera/ReviewImage;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    invoke-virtual {v4, p1, v2, v5, v6}, Lcom/sec/android/app/camera/ImageGetter;->setPosition(ILcom/sec/android/app/camera/ImageGetterCallback;Lcom/sec/android/app/camera/gallery/IImageList;Lcom/sec/android/app/camera/GetterHandler;)V

    .line 508
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateActionIcons()V

    .line 509
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->showOnScreenControls()V

    .line 510
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->scheduleDismissOnScreenControls()V

    .line 511
    return-void

    .line 430
    .end local v2           #cb:Lcom/sec/android/app/camera/ImageGetterCallback;
    .end local v3           #image:Lcom/sec/android/app/camera/gallery/IImage;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v4, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    .line 431
    .restart local v3       #image:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_0

    .line 433
    instance-of v4, v3, Lcom/sec/android/app/camera/gallery/VideoObject;

    if-eqz v4, :cond_3

    .line 434
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02003f

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 435
    .local v1, broken_bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    new-instance v5, Lcom/sec/android/app/camera/RotateBitmap;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->getDegreesRotated()I

    move-result v6

    invoke-direct {v5, v1, v6}, Lcom/sec/android/app/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/app/camera/ImageViewTouch2;->setImageRotateBitmapResetBase(Lcom/sec/android/app/camera/RotateBitmap;Z)V

    .line 437
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    .line 445
    :goto_1
    iput p1, p0, Lcom/sec/android/app/camera/ReviewImage;->mBackPosition:I

    goto :goto_0

    .line 439
    .end local v1           #broken_bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004a

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 440
    .restart local v1       #broken_bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    new-instance v5, Lcom/sec/android/app/camera/RotateBitmap;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->getDegreesRotated()I

    move-result v6

    invoke-direct {v5, v1, v6}, Lcom/sec/android/app/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/app/camera/ImageViewTouch2;->setImageRotateBitmapResetBase(Lcom/sec/android/app/camera/RotateBitmap;Z)V

    .line 442
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    goto :goto_1
.end method

.method protected updateZoomButtonsEnabled()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    .line 264
    .local v0, imageView:Lcom/sec/android/app/camera/ImageViewTouch2;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageViewTouch2;->getScale()F

    move-result v1

    .line 265
    .local v1, scale:F
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    iget v3, v0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mMaxZoom:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 266
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const/high16 v3, 0x3f80

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ZoomButtonsController;->setZoomOutEnabled(Z)V

    .line 267
    return-void

    :cond_0
    move v3, v4

    .line 265
    goto :goto_0

    :cond_1
    move v3, v4

    .line 266
    goto :goto_1
.end method
