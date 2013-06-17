.class public Lcom/sec/android/app/camera/CartoonShotView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CartoonShotView.java"


# instance fields
.field private mPostCaptureLayout:Landroid/widget/RelativeLayout;

.field private mPostCaptureProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 1
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CartoonShotView;->setCaptureEnabled(Z)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CartoonShotView;->setTouchHandled(Z)V

    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/camera/CartoonShotView;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0061

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CartoonShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0063

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/CartoonShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/CartoonShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/CartoonShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/CartoonShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 57
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 50
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 82
    :goto_0
    return v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 72
    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x43

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CartoonShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 78
    goto :goto_0

    :cond_3
    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 101
    :goto_0
    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 91
    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x43

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CartoonShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 97
    goto :goto_0

    :cond_3
    move v0, v1

    .line 101
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/CartoonShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CartoonShotView;->reset()V

    .line 113
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/CartoonShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CartoonShotView;->reset()V

    .line 119
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CartoonShotView;->hidePostCaptureLayout()V

    .line 64
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/CartoonShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CartoonShotView;->hidePostCaptureLayout()V

    .line 107
    return-void
.end method

.method public setRederingProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/CartoonShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 54
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/CartoonShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 60
    return-void
.end method
