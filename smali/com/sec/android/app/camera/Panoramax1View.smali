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

    .line 73
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    .line 53
    new-instance v0, Lcom/sec/android/app/camera/Panoramax1View$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Panoramax1View$1;-><init>(Lcom/sec/android/app/camera/Panoramax1View;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    .line 75
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Panoramax1View;->setCaptureEnabled(Z)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Panoramax1View;->setTouchHandled(Z)V

    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/camera/Panoramax1View;->init()V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/Panoramax1View;)Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mListener:Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00b3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureLayout:Landroid/widget/RelativeLayout;

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00b6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00b4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressText:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00b8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03000f

    iget-object v2, p0, Lcom/sec/android/app/camera/Panoramax1View;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03000a

    iget-object v2, p0, Lcom/sec/android/app/camera/Panoramax1View;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mBaseView:Landroid/view/ViewGroup;

    const v1, 0x7f0a00b2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mIndicatorView:Landroid/view/ViewGroup;

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->reset()V

    .line 109
    return-void
.end method


# virtual methods
.method public getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 204
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 192
    return-void
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mIsPanoramaCapturing:Z

    return v0
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    .prologue
    .line 199
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
    .line 113
    iget v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mListener:Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;->onPanoramaCaptureCancelled()V

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->reset()V

    .line 119
    :goto_0
    return-void

    .line 117
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

    .line 215
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 235
    :goto_0
    return v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 220
    goto :goto_0

    .line 223
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

    .line 225
    goto :goto_0

    .line 228
    :cond_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x43

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 231
    goto :goto_0

    :cond_5
    move v0, v2

    .line 235
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 239
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 259
    :goto_0
    return v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 244
    goto :goto_0

    .line 247
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

    .line 249
    goto :goto_0

    .line 252
    :cond_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x43

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 255
    goto :goto_0

    :cond_5
    move v0, v2

    .line 259
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 263
    const-string v0, "Panoramax1View"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    .line 266
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->reset()V

    .line 268
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 271
    const-string v0, "Panoramax1View"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->stopCancelTimer()V

    .line 273
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Panoramax1View;->mIsPanoramaCapturing:Z

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressText:Landroid/widget/TextView;

    const-string v1, "0/8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iput v2, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    .line 126
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Panoramax1View;->setTouchHandled(Z)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    .line 129
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->showMenu()V

    .line 130
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->restoreMenu()V

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->stopCancelTimer()V

    .line 136
    return-void
.end method

.method public restartCancelTimer()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "Panoramax1View"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->stopCancelTimer()V

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->startCancelTimer()V

    .line 150
    return-void
.end method

.method public setCaptureProgressIncreased()V
    .locals 3

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mIsPanoramaCapturing:Z

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 161
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

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideMenu()V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTextMessage()V

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Panoramax1View;->setTouchHandled(Z)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 167
    iget-object p0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideTrayButton()V

    .line 172
    return-void
.end method

.method public setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sec/android/app/camera/Panoramax1View;->mListener:Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;

    .line 212
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 180
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 188
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 208
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 196
    return-void
.end method

.method public startCancelTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 144
    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 153
    const-string v0, "Panoramax1View"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    :cond_0
    return-void
.end method
