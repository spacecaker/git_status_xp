.class public Lcom/sec/android/app/camera/CamcorderRecordingMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CamcorderRecordingMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# instance fields
.field private final MAX_MMS_SIZE:J

.field private final MAX_RECORDING_TIME:I

.field private final MILLIS_IN_A_SEC:I

.field private final PAUSE_ANIM_DELAY:I

.field private final PROGRESSBAR_MAX:I

.field private final REC_ANIM_DELAY:I

.field private final SECONDS_IN_AN_HOUR:I

.field private final SECONDS_IN_A_DAY:I

.field private final SECONDS_IN_A_MINUTE:I

.field private bIsRecordingMenuShown:Z

.field private isMMSMode:Z

.field private mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

.field private mHMS:Ljava/lang/String;

.field private mLockIndicator:Landroid/widget/ImageView;

.field private mMMSLayout:Landroid/widget/RelativeLayout;

.field private mPauseAnimHandler:Landroid/os/Handler;

.field private mPauseAnimRunnable:Ljava/lang/Runnable;

.field private mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private final mPauseImageId:I

.field private mPreClick:J

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRecAnimHandler:Landroid/os/Handler;

.field private mRecAnimRunnable:Ljava/lang/Runnable;

.field private mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mRecIcon:Landroid/widget/ImageView;

.field private final mRecImageId:I

.field private mRecSizeText:Landroid/widget/TextView;

.field private mRecTimeText:Landroid/widget/TextView;

.field private mRecordingProgressHandler:Landroid/os/Handler;

.field private mRecordingState:I

.field private mRecordingTime:I

.field private mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mStopping:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 3
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 114
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 38
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->SECONDS_IN_A_MINUTE:I

    .line 39
    const/16 v0, 0xe10

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->SECONDS_IN_AN_HOUR:I

    .line 41
    const v0, 0x15180

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->SECONDS_IN_A_DAY:I

    .line 42
    const v0, 0x1517f

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->MAX_RECORDING_TIME:I

    .line 44
    iput v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->MILLIS_IN_A_SEC:I

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    .line 58
    iput v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->PROGRESSBAR_MAX:I

    .line 59
    const-wide/32 v0, 0x49c00

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->MAX_MMS_SIZE:J

    .line 61
    const/16 v0, 0xfa

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->PAUSE_ANIM_DELAY:I

    .line 62
    const/16 v0, 0x258

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->REC_ANIM_DELAY:I

    .line 74
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 75
    iput v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    .line 77
    const v0, 0x7f0200db

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecImageId:I

    .line 78
    const v0, 0x7f0200da

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseImageId:I

    .line 79
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    .line 80
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    .line 81
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->bIsRecordingMenuShown:Z

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPreClick:J

    .line 88
    new-instance v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu$1;-><init>(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu$2;-><init>(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimRunnable:Ljava/lang/Runnable;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu$3;-><init>(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimRunnable:Ljava/lang/Runnable;

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimHandler:Landroid/os/Handler;

    .line 116
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->init()V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startPauseAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doRecAnim()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CamcorderRecordingMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startRecAnim()V

    return-void
.end method

.method private disableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 506
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    .line 507
    return-void
.end method

.method private doCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 247
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 248
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 249
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopRecAnim()V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 252
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->disableButtons()V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    .line 255
    iput v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    .line 256
    return-void
.end method

.method private doPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 259
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    if-ge v0, v2, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x5f

    if-gt v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->pauseTimer()V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopRecAnim()V

    .line 273
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startPauseAnim()V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 279
    iput v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    goto :goto_0
.end method

.method private doPauseAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 467
    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private doRecAnim()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 479
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private doStart()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startTimer()V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 215
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startRecAnim()V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private doStop()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 232
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 237
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 238
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopRecAnim()V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 241
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->disableButtons()V

    .line 243
    iput v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    goto :goto_0
.end method

.method private enableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 510
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 516
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    .line 517
    return-void
.end method

.method private hmsConvert(I)V
    .locals 11
    .parameter "seconds"

    .prologue
    const/16 v8, 0xa

    const-string v10, ":"

    const-string v9, "0"

    .line 409
    const v6, 0x1517f

    if-le p1, v6, :cond_0

    .line 410
    const p1, 0x1517f

    .line 413
    :cond_0
    rem-int/lit8 v4, p1, 0x3c

    .line 414
    .local v4, sec:I
    div-int/lit16 v0, p1, 0xe10

    .line 415
    .local v0, hr:I
    div-int/lit8 v6, p1, 0x3c

    mul-int/lit8 v7, v0, 0x3c

    sub-int v2, v6, v7

    .line 418
    .local v2, min:I
    if-ge v4, v8, :cond_1

    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 424
    .local v5, secString:Ljava/lang/String;
    :goto_0
    if-ge v2, v8, :cond_2

    .line 425
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, minString:Ljava/lang/String;
    :goto_1
    if-ge v0, v8, :cond_3

    .line 431
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, hrString:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 437
    return-void

    .line 421
    .end local v1           #hrString:Ljava/lang/String;
    .end local v3           #minString:Ljava/lang/String;
    .end local v5           #secString:Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #secString:Ljava/lang/String;
    goto :goto_0

    .line 427
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #minString:Ljava/lang/String;
    goto :goto_1

    .line 433
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #hrString:Ljava/lang/String;
    goto :goto_2
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00e2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00e3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    .line 125
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->hmsConvert(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00e4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00e5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00e6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00ea

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00e8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00e9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00e1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->setSurfaceView(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00ec

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLockIndicator:Landroid/widget/ImageView;

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLockIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 170
    return-void
.end method

.method private isClickable()Z
    .locals 7

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, bClickable:Z
    const-wide/16 v1, 0x0

    .line 197
    .local v1, lCurClick:J
    iget-wide v3, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPreClick:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 199
    iget-wide v3, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPreClick:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x320

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 200
    iput-wide v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPreClick:J

    .line 201
    const/4 v0, 0x1

    .line 204
    :cond_0
    return v0
.end method

.method private lockButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 526
    return-void
.end method

.method private startPauseAnim()V
    .locals 4

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doPauseAnim()V

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 442
    return-void
.end method

.method private startRecAnim()V
    .locals 4

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    return-void
.end method

.method private stopPauseAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    return-void
.end method

.method private stopRecAnim()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 456
    return-void
.end method

.method private unlockButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 535
    return-void
.end method


# virtual methods
.method public changeUIToStop()V
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 225
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 226
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopRecAnim()V

    .line 227
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->disableButtons()V

    .line 228
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    .line 229
    return-void
.end method

.method public getRecordingState()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    return v0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 482
    sparse-switch p1, :sswitch_data_0

    .line 497
    :goto_0
    return-void

    .line 484
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    goto :goto_0

    .line 488
    :sswitch_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLockIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->lockButtons()V

    goto :goto_0

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLockIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->unlockButtons()V

    goto :goto_0

    .line 482
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x22 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 178
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doPause()V

    goto :goto_1

    .line 181
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doStart()V

    goto :goto_1

    .line 184
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doStop()V

    goto :goto_1

    .line 187
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doCancel()V

    goto :goto_1

    .line 176
    :pswitch_data_0
    .packed-switch 0x7f0a00e4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 316
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPreClick:J

    .line 318
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 320
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->unlockButtons()V

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->IsShutterButtonHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->ShutterButtonIsRestored()V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->hideSideMenu()V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 332
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 333
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 542
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 554
    :goto_0
    return v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 547
    goto :goto_0

    .line 550
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x43

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 551
    goto :goto_0

    .line 554
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 558
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 561
    iget-object p0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/camera/Camcorder;->requestSystemKeyEvent(IZ)Z

    :goto_0
    move v0, v1

    .line 590
    :goto_1
    return v0

    .line 564
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 565
    iget-object p0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/camera/Camcorder;->requestSystemKeyEvent(IZ)Z

    goto :goto_0

    .line 571
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 572
    goto :goto_1

    .line 575
    :cond_2
    if-eq p1, v3, :cond_3

    const/16 v0, 0x43

    if-ne p1, v0, :cond_6

    .line 576
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mStopping:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    if-ge v0, v1, :cond_5

    :cond_4
    move v0, v1

    .line 577
    goto :goto_1

    .line 580
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 581
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 582
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopRecAnim()V

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 585
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->disableButtons()V

    .line 586
    iput v3, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    move v0, v1

    .line 587
    goto :goto_1

    :cond_6
    move v0, v2

    .line 590
    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mLockIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->unlockButtons()V

    .line 374
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopTimer()V

    .line 375
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopPauseAnim()V

    .line 376
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stopRecAnim()V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 381
    return-void
.end method

.method protected onShow()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 337
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->bIsRecordingMenuShown:Z

    if-nez v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 341
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 348
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    if-eq v0, v1, :cond_1

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startRecAnim()V

    .line 360
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->enableButtons()V

    .line 361
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->bIsRecordingMenuShown:Z

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mPreClick:J

    .line 365
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    goto :goto_0

    .line 344
    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mMMSLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public pauseTimer()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    return-void
.end method

.method public setRecordingMode(I)V
    .locals 1
    .parameter "nMode"

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->getRecordingState()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 600
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 602
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doPause()V

    goto :goto_0

    .line 605
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doStart()V

    goto :goto_0

    .line 608
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->doCancel()V

    goto :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showRecordingMenu(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 538
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->bIsRecordingMenuShown:Z

    .line 539
    return-void
.end method

.method public startTimer()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 291
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingState:I

    .line 293
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->stepSecond()V

    .line 294
    return-void
.end method

.method public stepSecond()V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingTimerElapsed()V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 301
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 308
    return-void
.end method

.method public updateProgressBarText(J)V
    .locals 5
    .parameter "bytes"

    .prologue
    .line 384
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->isMMSMode:Z

    if-eqz v1, :cond_0

    .line 385
    const-wide/16 v1, 0x64

    mul-long/2addr v1, p1

    const-wide/32 v3, 0x49c00

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 386
    .local v0, progress:I
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 394
    .end local v0           #progress:I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecSizeText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x400

    div-long v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    return-void
.end method

.method public updateRecordingTime(I)V
    .locals 2
    .parameter "second"

    .prologue
    .line 398
    iput p1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecordingTime:I

    .line 399
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->hmsConvert(I)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mRecTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    return-void
.end method
