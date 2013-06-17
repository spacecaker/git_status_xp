.class public Lcom/sec/android/app/camera/SmileShotView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "SmileShotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;
    }
.end annotation


# instance fields
.field private mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mIndicatorView:Landroid/view/ViewGroup;

.field private mIsDetecting:Z

.field protected mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;

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

    .line 43
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsDetecting:Z

    .line 45
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/SmileShotView;->setCaptureEnabled(Z)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/SmileShotView;->setTouchHandled(Z)V

    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/camera/SmileShotView;->init()V

    .line 48
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 51
    iget-object v1, p0, Lcom/sec/android/app/camera/SmileShotView;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000f

    iget-object v3, p0, Lcom/sec/android/app/camera/SmileShotView;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraSideMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/SmileShotView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 52
    iget-object v1, p0, Lcom/sec/android/app/camera/SmileShotView;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000a

    iget-object v3, p0, Lcom/sec/android/app/camera/SmileShotView;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v1, p0, Lcom/sec/android/app/camera/SmileShotView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 54
    iget-object v1, p0, Lcom/sec/android/app/camera/SmileShotView;->mBaseView:Landroid/view/ViewGroup;

    const v2, 0x7f0a00d4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/SmileShotView;->mIndicatorView:Landroid/view/ViewGroup;

    .line 57
    iget-object v1, p0, Lcom/sec/android/app/camera/SmileShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a00d5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    .local v0, blinkView:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 65
    return-void
.end method


# virtual methods
.method public hideMenu()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTextMessage()V

    .line 123
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 124
    return-void
.end method

.method public isDetecting()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsDetecting:Z

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsDetecting:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;->onSmileDetectingStopped()V

    .line 136
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 137
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;->onSmileDetectingStopped()V

    .line 107
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 140
    iget-object p0, p0, Lcom/sec/android/app/camera/SmileShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onSmileDetectingStopped()V

    .line 141
    return-void
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsDetecting:Z

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIndicatorView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    const v1, 0x7f07008d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setTextMessage(I)V

    .line 118
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 119
    return-void
.end method

.method public setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/camera/SmileShotView;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;

    .line 111
    return-void
.end method

.method public startDetect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/SmileShotView;->setTouchHandled(Z)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideMenu()V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTextMessage()V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIndicatorView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsDetecting:Z

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 81
    iget-object p0, p0, Lcom/sec/android/app/camera/SmileShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideTrayButton()V

    .line 82
    return-void
.end method

.method public stopDetect()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/SmileShotView;->setTouchHandled(Z)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/app/camera/SmileShotView;->showMenu()V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIndicatorView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsDetecting:Z

    .line 93
    return-void
.end method

.method public stopSmileShot()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    iget-boolean v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsDetecting:Z

    if-eq v0, v2, :cond_0

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsDetecting:Z

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIndicatorView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 100
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/SmileShotView;->setTouchHandled(Z)V

    goto :goto_0
.end method
