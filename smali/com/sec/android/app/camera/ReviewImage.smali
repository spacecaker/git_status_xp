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
    .locals 1

    .prologue
    const/4 v0, 0x1

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
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 97
    new-instance v0, Lcom/sec/android/app/camera/ReviewImage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ReviewImage$1;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mDismissOnScreenControlRunner:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Lcom/sec/android/app/camera/ReviewImage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ReviewImage$2;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 398
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
    .line 584
    const/4 v0, 0x1

    .line 585
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

    .line 608
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->getCurrentImageWidth()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->getCurrentImageHeight()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 610
    :cond_0
    const/4 v0, 0x0

    .line 612
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCurrentImageHeight()I
    .locals 3

    .prologue
    .line 622
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 623
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImage;->getHeight()I

    move-result v1

    return v1
.end method

.method private getCurrentImageWidth()I
    .locals 3

    .prologue
    .line 617
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 618
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImage;->getWidth()I

    move-result v1

    return v1
.end method

.method private getCurrentUri()Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 600
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v3

    .line 604
    :goto_0
    return-object v1

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 602
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-nez v0, :cond_1

    move-object v1, v3

    .line 603
    goto :goto_0

    .line 604
    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private hideOnScreenControls()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->setVisible(Z)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomController:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    return-void
.end method

.method private init(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 589
    if-nez p1, :cond_0

    move v1, v3

    .line 596
    :goto_0
    return v1

    .line 590
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mParam:Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ReviewImage;->buildImageListFromUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    .line 593
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 594
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-nez v0, :cond_2

    move v1, v3

    goto :goto_0

    .line 590
    .end local v0           #image:Lcom/sec/android/app/camera/gallery/IImage;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mParam:Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v1

    goto :goto_1

    .line 595
    .restart local v0       #image:Lcom/sec/android/app/camera/gallery/IImage;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 596
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private makeGetter()V
    .locals 2

    .prologue
    .line 580
    new-instance v0, Lcom/sec/android/app/camera/ImageGetter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/ImageGetter;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    .line 581
    return-void
.end method

.method private moveNextOrPrevious(I)V
    .locals 2
    .parameter "delta"

    .prologue
    .line 811
    iget v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    add-int v0, v1, p1

    .line 812
    .local v0, nextImagePos:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 813
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    .line 814
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->showOnScreenControls()V

    .line 816
    :cond_0
    return-void
.end method

.method private scheduleDismissOnScreenControls()V
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mDismissOnScreenControlRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/GetterHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mDismissOnScreenControlRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/GetterHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    return-void
.end method

.method private setButtonPanelVisibility(II)V
    .locals 2
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 555
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 556
    .local v0, button:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 557
    return-void
.end method

.method private setupOnScreenControls(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "rootView"
    .parameter "ownerView"

    .prologue
    .line 285
    const v0, 0x7f0a00c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    .line 286
    const v0, 0x7f0a00c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/ReviewImage;->setupZoomButtonController(Landroid/view/View;)V

    .line 292
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ReviewImage;->setupOnTouchListeners(Landroid/view/View;)V

    .line 293
    return-void
.end method

.method private setupOnTouchListeners(Landroid/view/View;)V
    .locals 5
    .parameter "rootView"

    .prologue
    .line 319
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;-><init>(Lcom/sec/android/app/camera/ReviewImage;Lcom/sec/android/app/camera/ReviewImage$1;)V

    invoke-direct {v2, p0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mGestureDetector:Landroid/view/GestureDetector;

    .line 325
    new-instance v0, Lcom/sec/android/app/camera/ReviewImage$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ReviewImage$5;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    .line 332
    .local v0, buttonListener:Landroid/view/View$OnTouchListener;
    new-instance v1, Lcom/sec/android/app/camera/ReviewImage$6;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/camera/ReviewImage$6;-><init>(Lcom/sec/android/app/camera/ReviewImage;Landroid/view/View$OnTouchListener;)V

    .line 344
    .local v1, rootListener:Landroid/view/View$OnTouchListener;
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 345
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 346
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 347
    return-void
.end method

.method private setupZoomButtonController(Landroid/view/View;)V
    .locals 3
    .parameter "ownerView"

    .prologue
    .line 296
    new-instance v0, Lcom/sec/android/app/camera/ZoomButtonsController;

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomController:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->setAutoDismissed(Z)V

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ZoomButtonsController;->setZoomSpeed(J)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    new-instance v1, Lcom/sec/android/app/camera/ReviewImage$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/ReviewImage$4;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->setOnZoomListener(Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;)V

    .line 316
    return-void
.end method

.method private showOnScreenControls()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 189
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    new-instance v3, Lcom/sec/android/app/camera/ReviewImage$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/ReviewImage$3;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    .line 219
    :goto_0
    return-void

    .line 200
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 207
    .local v1, image:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateNextPrevControls()V

    .line 209
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 211
    invoke-static {v1}, Lcom/sec/android/app/camera/ImageManager;->isImage(Lcom/sec/android/app/camera/gallery/IImage;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    .line 213
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ZoomButtonsController;->setVisible(Z)V

    .line 214
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomController:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 201
    .end local v1           #image:Lcom/sec/android/app/camera/gallery/IImage;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 202
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->finish()V

    goto :goto_0

    .line 216
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #image:Lcom/sec/android/app/camera/gallery/IImage;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/ZoomButtonsController;->setVisible(Z)V

    .line 217
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomController:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private startPlayVideoActivity()V
    .locals 6

    .prologue
    .line 726
    iget-object v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v1

    .line 727
    .local v1, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-eqz v1, :cond_0

    .line 728
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 730
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ReviewImage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 731
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 732
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
    .line 709
    instance-of v2, p1, Lcom/sec/android/app/camera/gallery/VideoObject;

    .line 710
    .local v2, isVideo:Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 711
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    invoke-interface {p1}, Lcom/sec/android/app/camera/gallery/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    const-string v3, "android.intent.extra.STREAM"

    invoke-interface {p1}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 715
    if-eqz v2, :cond_0

    const v3, 0x7f0700fb

    :goto_0
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/ReviewImage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/ReviewImage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :goto_1
    return-void

    .line 715
    :cond_0
    const v3, 0x7f0700fa

    goto :goto_0

    .line 717
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 718
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    if-eqz v2, :cond_1

    const v3, 0x7f0700f6

    :goto_2
    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    const v3, 0x7f0700f7

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

    .line 560
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->isPickIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 563
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    instance-of v1, v0, Lcom/sec/android/app/camera/gallery/VideoObject;

    if-eqz v1, :cond_1

    .line 564
    invoke-direct {p0, v5, v3}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    .line 565
    invoke-direct {p0, v6, v3}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    .line 566
    invoke-direct {p0, v7, v4}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    goto :goto_0

    .line 568
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->chkImageSizeForThumbnail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 569
    invoke-direct {p0, v5, v4}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    .line 570
    invoke-direct {p0, v6, v3}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    .line 575
    :goto_1
    invoke-direct {p0, v7, v3}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    goto :goto_0

    .line 572
    :cond_2
    invoke-direct {p0, v5, v3}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    .line 573
    invoke-direct {p0, v6, v4}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    goto :goto_1
.end method

.method private updateNextPrevControls()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 145
    iget v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    if-lez v4, :cond_2

    move v2, v7

    .line 146
    .local v2, showNext:Z
    :goto_0
    iget v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    iget-object v5, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v5

    sub-int/2addr v5, v7

    if-ge v4, v5, :cond_3

    move v3, v7

    .line 148
    .local v3, showPrev:Z
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    move v1, v7

    .line 149
    .local v1, prevIsVisible:Z
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    move v0, v7

    .line 151
    .local v0, nextIsVisible:Z
    :goto_3
    if-eqz v3, :cond_6

    if-nez v1, :cond_6

    .line 158
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_0
    :goto_4
    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    .line 175
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_1
    :goto_5
    return-void

    .end local v0           #nextIsVisible:Z
    .end local v1           #prevIsVisible:Z
    .end local v2           #showNext:Z
    .end local v3           #showPrev:Z
    :cond_2
    move v2, v6

    .line 145
    goto :goto_0

    .restart local v2       #showNext:Z
    :cond_3
    move v3, v6

    .line 146
    goto :goto_1

    .restart local v3       #showPrev:Z
    :cond_4
    move v1, v6

    .line 148
    goto :goto_2

    .restart local v1       #prevIsVisible:Z
    :cond_5
    move v0, v6

    .line 149
    goto :goto_3

    .line 160
    .restart local v0       #nextIsVisible:Z
    :cond_6
    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 164
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 177
    :cond_7
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 181
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->scheduleDismissOnScreenControls()V

    .line 257
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getImageView()Lcom/sec/android/app/camera/ImageViewTouch2;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    return-object v0
.end method

.method isPickIntent()Z
    .locals 2

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 394
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
    .line 821
    packed-switch p1, :pswitch_data_0

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 823
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 826
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    .line 830
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v1, :cond_0

    .line 831
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 833
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-nez v0, :cond_1

    .line 834
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->finish()V

    goto :goto_0

    .line 836
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 837
    iget v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    goto :goto_0

    .line 821
    :pswitch_data_0
    .packed-switch 0x1ea
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 739
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 789
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 742
    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/camera/MenuHelper;->isDeleteDialogShow()Z

    move-result v4

    if-nez v4, :cond_0

    .line 746
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v4, :cond_0

    .line 748
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v5, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    .line 749
    .local v2, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-eqz v2, :cond_0

    .line 751
    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    .line 752
    .local v0, curentImageUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mDeletePhotoRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v4, v2}, Lcom/sec/android/app/camera/MenuHelper;->deleteImage(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/sec/android/app/camera/gallery/IImage;)V

    goto :goto_0

    .line 758
    .end local v0           #curentImageUri:Landroid/net/Uri;
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->startPlayVideoActivity()V

    goto :goto_0

    .line 761
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v5, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    .line 762
    .restart local v2       #image:Lcom/sec/android/app/camera/gallery/IImage;
    if-eqz v2, :cond_0

    .line 763
    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/MenuHelper;->isWhiteListUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 766
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/ReviewImage;->startShareMediaActivity(Lcom/sec/android/app/camera/gallery/IImage;)V

    goto :goto_0

    .line 770
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v5, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    .line 771
    .restart local v2       #image:Lcom/sec/android/app/camera/gallery/IImage;
    if-eqz v2, :cond_0

    .line 772
    invoke-static {v2}, Lcom/sec/android/app/camera/Util;->createSetAsIntent(Lcom/sec/android/app/camera/gallery/IImage;)Landroid/content/Intent;

    move-result-object v3

    .line 774
    .local v3, intent:Landroid/content/Intent;
    const v4, 0x7f0700fc

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/ReviewImage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/ReviewImage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 776
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 777
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const v4, 0x7f0700f7

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 783
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_5
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/ReviewImage;->moveNextOrPrevious(I)V

    goto :goto_0

    .line 786
    :pswitch_6
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/ReviewImage;->moveNextOrPrevious(I)V

    goto :goto_0

    .line 739
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

    .line 507
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 509
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 510
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "android.intent.extra.fullScreen"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mFullScreenInNormalMode:Z

    .line 513
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/ReviewImage;->setDefaultKeyMode(I)V

    .line 514
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/ReviewImage;->requestWindowFeature(I)Z

    .line 515
    const v7, 0x7f03002c

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/ReviewImage;->setContentView(I)V

    .line 517
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/ReviewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mRootView:Landroid/view/View;

    .line 518
    const v7, 0x7f0a00c8

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/ReviewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    .line 519
    const v7, 0x7f0a00c4

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/ReviewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomController:Landroid/view/View;

    .line 520
    const v7, 0x7f0a006b

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/ReviewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/ImageViewTouch2;

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    .line 521
    iget-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    invoke-virtual {v7, v9}, Lcom/sec/android/app/camera/ImageViewTouch2;->setEnableTrackballScroll(Z)V

    .line 522
    new-instance v7, Lcom/sec/android/app/camera/BitmapCache;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lcom/sec/android/app/camera/BitmapCache;-><init>(I)V

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mCache:Lcom/sec/android/app/camera/BitmapCache;

    .line 523
    iget-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    iget-object v8, p0, Lcom/sec/android/app/camera/ReviewImage;->mCache:Lcom/sec/android/app/camera/BitmapCache;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/ImageViewTouch2;->setRecycler(Lcom/sec/android/app/camera/ImageViewTouchBase$Recycler;)V

    .line 525
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->makeGetter()V

    .line 527
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "image_list"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mParam:Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    .line 529
    if-eqz p1, :cond_0

    .line 530
    const-string v7, "uri"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    .line 531
    const-string v7, "show_controls"

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mShowControls:Z

    .line 537
    :goto_0
    const/4 v7, 0x4

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    .line 539
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

    .line 540
    .local v2, id:I
    iget-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 541
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 543
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 533
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

    .line 551
    .restart local v0       #arr$:[I
    .restart local v1       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #reviewIds:[I
    :cond_1
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/ReviewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/camera/ReviewImage;->setupOnScreenControls(Landroid/view/View;Landroid/view/View;)V

    .line 552
    return-void

    .line 537
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
    .line 271
    const-string v0, "ReviewImage"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->setVisible(Z)V

    .line 279
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/MenuHelper;->closeDialog()V

    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 282
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "ReviewImage"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ReviewImage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->hideOnScreenControls()V

    .line 122
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    .line 125
    const-string v7, "ReviewImage"

    const-string v8, "onResume"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 128
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v7, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v7, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v7, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v7, "file"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 134
    iget-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v3}, Lcom/sec/android/app/camera/ReviewImage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    const/4 v7, 0x4

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    .line 138
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

    .line 139
    .local v2, id:I
    iget-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 140
    .local v6, view:Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setPressed(Z)V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v2           #id:I
    .end local v6           #view:Landroid/view/View;
    :cond_0
    return-void

    .line 136
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
    .line 632
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 633
    const-string v0, "uri"

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 635
    const-string v0, "show_controls"

    iget-boolean v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mShowControls:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 636
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "ReviewImage"

    .line 640
    const-string v1, "ReviewImage"

    const-string v1, "onStart"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 642
    iput-boolean v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mPaused:Z

    .line 644
    iget-boolean v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mFullScreenInNormalMode:Z

    if-eqz v1, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/ReviewImage;->init(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 650
    const-string v1, "ReviewImage"

    const-string v1, "init failed "

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->finish()V

    .line 673
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v0

    .line 659
    .local v0, count:I
    if-nez v0, :cond_2

    .line 660
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->finish()V

    goto :goto_0

    .line 662
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    if-gt v0, v1, :cond_3

    .line 663
    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 666
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    if-nez v1, :cond_4

    .line 667
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->makeGetter()V

    .line 671
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    iget-boolean v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mShowControls:Z

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    .line 672
    iput-boolean v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mShowControls:Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 677
    const-string v0, "ReviewImage"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mPaused:Z

    .line 683
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageGetter;->cancelCurrent()V

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageGetter;->stop()V

    .line 686
    iput-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/GetterHandler;->removeAllGetterCallbacks()V

    .line 692
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v0, :cond_1

    .line 693
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->getCurrentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    .line 694
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 695
    iput-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageViewTouch2;->clear()V

    .line 699
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mCache:Lcom/sec/android/app/camera/BitmapCache;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/BitmapCache;->clear()V

    .line 706
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 792
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 807
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 794
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 798
    :pswitch_1
    move-object v0, p1

    .line 799
    .local v0, fv:Landroid/view/View;
    new-instance v1, Lcom/sec/android/app/camera/ReviewImage$9;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/camera/ReviewImage$9;-><init>(Lcom/sec/android/app/camera/ReviewImage;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 792
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

    .line 420
    iput p1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 422
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mCache:Lcom/sec/android/app/camera/BitmapCache;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/camera/BitmapCache;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 423
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 424
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v4, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    .line 425
    .local v3, image:Lcom/sec/android/app/camera/gallery/IImage;
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    new-instance v5, Lcom/sec/android/app/camera/RotateBitmap;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->getDegreesRotated()I

    move-result v6

    invoke-direct {v5, v0, v6}, Lcom/sec/android/app/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/ImageViewTouch2;->setImageRotateBitmapResetBase(Lcom/sec/android/app/camera/RotateBitmap;Z)V

    .line 427
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    .line 446
    :cond_0
    :goto_0
    new-instance v2, Lcom/sec/android/app/camera/ReviewImage$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/ReviewImage$8;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    .line 497
    .local v2, cb:Lcom/sec/android/app/camera/ImageGetterCallback;
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    if-eqz v4, :cond_1

    .line 498
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    iget-object v5, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget-object v6, p0, Lcom/sec/android/app/camera/ReviewImage;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    invoke-virtual {v4, p1, v2, v5, v6}, Lcom/sec/android/app/camera/ImageGetter;->setPosition(ILcom/sec/android/app/camera/ImageGetterCallback;Lcom/sec/android/app/camera/gallery/IImageList;Lcom/sec/android/app/camera/GetterHandler;)V

    .line 500
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateActionIcons()V

    .line 501
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->showOnScreenControls()V

    .line 502
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->scheduleDismissOnScreenControls()V

    .line 503
    return-void

    .line 429
    .end local v2           #cb:Lcom/sec/android/app/camera/ImageGetterCallback;
    .end local v3           #image:Lcom/sec/android/app/camera/gallery/IImage;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v4, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    .line 430
    .restart local v3       #image:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_0

    .line 432
    instance-of v4, v3, Lcom/sec/android/app/camera/gallery/VideoObject;

    if-eqz v4, :cond_3

    .line 433
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02003f

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 434
    .local v1, broken_bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    new-instance v5, Lcom/sec/android/app/camera/RotateBitmap;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->getDegreesRotated()I

    move-result v6

    invoke-direct {v5, v1, v6}, Lcom/sec/android/app/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/app/camera/ImageViewTouch2;->setImageRotateBitmapResetBase(Lcom/sec/android/app/camera/RotateBitmap;Z)V

    .line 436
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    goto :goto_0

    .line 438
    .end local v1           #broken_bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004a

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 439
    .restart local v1       #broken_bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    new-instance v5, Lcom/sec/android/app/camera/RotateBitmap;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->getDegreesRotated()I

    move-result v6

    invoke-direct {v5, v1, v6}, Lcom/sec/android/app/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/app/camera/ImageViewTouch2;->setImageRotateBitmapResetBase(Lcom/sec/android/app/camera/RotateBitmap;Z)V

    .line 441
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    goto :goto_0
.end method

.method protected updateZoomButtonsEnabled()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    .line 263
    .local v0, imageView:Lcom/sec/android/app/camera/ImageViewTouch2;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageViewTouch2;->getScale()F

    move-result v1

    .line 264
    .local v1, scale:F
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    iget v3, v0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mMaxZoom:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 265
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const/high16 v3, 0x3f80

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ZoomButtonsController;->setZoomOutEnabled(Z)V

    .line 266
    return-void

    :cond_0
    move v3, v4

    .line 264
    goto :goto_0

    :cond_1
    move v3, v4

    .line 265
    goto :goto_1
.end method
