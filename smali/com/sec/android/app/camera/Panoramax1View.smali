.class public Lcom/sec/android/app/camera/Panoramax1View;
.super Lcom/sec/android/app/camera/MenuBase;
.source "Panoramax1View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;
    }
.end annotation


# instance fields
.field private mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mCaptureCount:I

.field private mCaptureLayout:Landroid/widget/RelativeLayout;

.field private mCaptureProgressBar:Landroid/widget/ProgressBar;

.field private mCaptureProgressText:Landroid/widget/TextView;

.field private mIndicatorView:Landroid/view/ViewGroup;

.field private mIsPanoramaCapturing:Z

.field private mListener:Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mPostCaptureLayout:Landroid/widget/RelativeLayout;

.field private mPostCaptureProgressBar:Landroid/widget/ProgressBar;

.field private mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 2
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "order"

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    .line 54
    new-instance v0, Lcom/sec/android/app/camera/Panoramax1View$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Panoramax1View$1;-><init>(Lcom/sec/android/app/camera/Panoramax1View;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    .line 76
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Panoramax1View;->setCaptureEnabled(Z)V

    .line 77
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Panoramax1View;->setTouchHandled(Z)V

    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/camera/Panoramax1View;->init()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/Panoramax1View;)Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mListener:Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00b3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureLayout:Landroid/widget/RelativeLayout;

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00b6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00b4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressText:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00b8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03000f

    iget-object v2, p0, Lcom/sec/android/app/camera/Panoramax1View;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03000a

    iget-object v2, p0, Lcom/sec/android/app/camera/Panoramax1View;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mBaseView:Landroid/view/ViewGroup;

    const v1, 0x7f0a00b2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mIndicatorView:Landroid/view/ViewGroup;

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->reset()V

    .line 110
    return-void
.end method


# virtual methods
.method public getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 205
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 193
    return-void
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mIsPanoramaCapturing:Z

    return v0
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    if-lez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mListener:Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;->onPanoramaCaptureCancelled()V

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->reset()V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 216
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 236
    :goto_0
    return v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 221
    goto :goto_0

    .line 224
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 226
    goto :goto_0

    .line 229
    :cond_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x43

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 232
    goto :goto_0

    :cond_5
    move v0, v2

    .line 236
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 240
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 260
    :goto_0
    return v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 245
    goto :goto_0

    .line 248
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 250
    goto :goto_0

    .line 253
    :cond_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x43

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 256
    goto :goto_0

    :cond_5
    move v0, v2

    .line 260
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "Panoramax1View"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    .line 267
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->reset()V

    .line 269
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 272
    const-string v0, "Panoramax1View"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->stopCancelTimer()V

    .line 274
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Panoramax1View;->mIsPanoramaCapturing:Z

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressText:Landroid/widget/TextView;

    const-string v1, "0/8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iput v2, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    .line 127
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Panoramax1View;->setTouchHandled(Z)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    .line 130
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->showMenu()V

    .line 131
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->restoreMenu()V

    .line 133
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->stopCancelTimer()V

    .line 137
    return-void
.end method

.method public restartCancelTimer()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "Panoramax1View"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->stopCancelTimer()V

    .line 150
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->startCancelTimer()V

    .line 151
    return-void
.end method

.method public setCaptureProgressIncreased()V
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mIsPanoramaCapturing:Z

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideMenu()V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTextMessage()V

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Panoramax1View;->setTouchHandled(Z)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 168
    iget-object p0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideTrayButton()V

    .line 173
    return-void
.end method

.method public setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/sec/android/app/camera/Panoramax1View;->mListener:Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;

    .line 213
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 181
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 189
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 209
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 197
    return-void
.end method

.method public startCancelTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 145
    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 154
    const-string v0, "Panoramax1View"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    :cond_0
    return-void
.end method
