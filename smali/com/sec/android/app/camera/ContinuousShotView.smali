.class public Lcom/sec/android/app/camera/ContinuousShotView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "ContinuousShotView.java"


# instance fields
.field private mCaptureProgressBar:Landroid/widget/ProgressBar;

.field private mCaptureProgressText:Landroid/widget/TextView;

.field private mContinuousCaptureLayout:Landroid/widget/RelativeLayout;

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
    .parameter "order"

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ContinuousShotView;->setCaptureEnabled(Z)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ContinuousShotView;->setTouchHandled(Z)V

    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/camera/ContinuousShotView;->init()V

    .line 52
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mContinuousCaptureLayout:Landroid/widget/RelativeLayout;

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0068

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0067

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mCaptureProgressText:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a006a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public getPostCaptureProgress()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mContinuousCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 119
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 109
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgressMax(I)V

    .line 110
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgress(I)V

    .line 111
    return-void
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isContinuousShotInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->doTerminateContinuous()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 82
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 136
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 151
    :goto_0
    return v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 141
    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x43

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 147
    goto :goto_0

    :cond_3
    move v0, v1

    .line 151
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 155
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 170
    :goto_0
    return v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 160
    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x43

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 166
    goto :goto_0

    :cond_3
    move v0, v1

    .line 170
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isContinuousShotInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->doTerminateContinuous()V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ContinuousShotView;->resetCapture()V

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ContinuousShotView;->showCaptureLayout()V

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ContinuousShotView;->hidePostCaptureLayout()V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetContinuousShot()V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setNumberOfCsShotSaved(I)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setNumberOfCsShotCaptured(I)V

    .line 185
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ContinuousShotView;->resetCapture()V

    .line 189
    return-void
.end method

.method public resetCapture()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mCaptureProgressText:Landroid/widget/TextView;

    const-string v1, "0/9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ContinuousShotView;->setTouchHandled(Z)V

    .line 89
    return-void
.end method

.method public setCaptureProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 97
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 101
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 105
    return-void
.end method

.method public setProgressText(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mCaptureProgressText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mContinuousCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/ContinuousShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    return-void
.end method
