.class public Lcom/sec/android/app/camera/ActionShotView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "ActionShotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;
    }
.end annotation


# instance fields
.field private mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mCaptureLayout:Landroid/widget/RelativeLayout;

.field private mCaptureProgressBar:Landroid/widget/ProgressBar;

.field private mListener:Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;

.field private mPostCaptureLayout:Landroid/widget/RelativeLayout;

.field private mPostCaptureProgressBar:Landroid/widget/ProgressBar;

.field private mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

.field private mSideMenuHidden:Z


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

    .line 54
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mSideMenuHidden:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mListener:Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;

    .line 57
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/ActionShotView;->setCaptureEnabled(Z)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/ActionShotView;->setTouchHandled(Z)V

    .line 59
    invoke-direct {p0}, Lcom/sec/android/app/camera/ActionShotView;->init()V

    .line 60
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 65
    iget-object v1, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureLayout:Landroid/widget/RelativeLayout;

    .line 68
    iget-object v1, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 72
    iget-object v1, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/camera/ActionShotView;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000f

    iget-object v3, p0, Lcom/sec/android/app/camera/ActionShotView;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraSideMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/ActionShotView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 78
    iget-object v1, p0, Lcom/sec/android/app/camera/ActionShotView;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000a

    iget-object v3, p0, Lcom/sec/android/app/camera/ActionShotView;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v1, p0, Lcom/sec/android/app/camera/ActionShotView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 80
    iget-object v1, p0, Lcom/sec/android/app/camera/ActionShotView;->mBaseView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 88
    .local v0, mIndicatorView:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->resetAcquisitionProgress()V

    .line 89
    return-void
.end method


# virtual methods
.method public hideCaptureLayout()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mListener:Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;->onActionShotCaptureCancelled()V

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->resetAcquisitionProgress()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 166
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 186
    :goto_0
    return v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 171
    goto :goto_0

    .line 174
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

    .line 176
    goto :goto_0

    .line 179
    :cond_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x43

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    .line 181
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 182
    goto :goto_0

    :cond_5
    move v0, v2

    .line 186
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 190
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 210
    :goto_0
    return v0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 195
    goto :goto_0

    .line 198
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

    .line 200
    goto :goto_0

    .line 203
    :cond_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x43

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 206
    goto :goto_0

    :cond_5
    move v0, v2

    .line 210
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onActionShotCaptureCancelled()V

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->resetAcquisitionProgress()V

    .line 218
    :cond_0
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->showMenu()V

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->restoreMenu()V

    .line 110
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ActionShotView;->setTouchHandled(Z)V

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/app/camera/ActionShotView;->mSideMenuHidden:Z

    .line 112
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .parameter "nProgress"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 118
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mSideMenuHidden:Z

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ActionShotView;->setTouchHandled(Z)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideMenu()V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTextMessage()V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 125
    iget-object p0, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideTrayButton()V

    .line 131
    :cond_0
    return-void
.end method

.method public setActionShotCancelListener(Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/camera/ActionShotView;->mListener:Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;

    .line 162
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 135
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 139
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    return-void
.end method
