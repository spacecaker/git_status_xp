.class public Lcom/sec/android/app/camera/StopMotionPreview;
.super Lcom/sec/android/app/camera/MenuBase;
.source "StopMotionPreview.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/StopMotionPreview$OnStopMotionPreviewEventListener;
    }
.end annotation


# instance fields
.field private mAddThumbnailImage:Z

.field private mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mIndicatorView:Landroid/view/ViewGroup;

.field mListener:Lcom/sec/android/app/camera/StopMotionPreview$OnStopMotionPreviewEventListener;

.field private mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

.field mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

.field private mStopMotionProgressBar:Landroid/widget/ProgressBar;

.field private mStopMotionProgressLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 2
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mListener:Lcom/sec/android/app/camera/StopMotionPreview$OnStopMotionPreviewEventListener;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mAddThumbnailImage:Z

    .line 62
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/StopMotionPreview;->setCaptureEnabled(Z)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/StopMotionPreview;->setTouchHandled(Z)V

    .line 64
    invoke-direct {p0}, Lcom/sec/android/app/camera/StopMotionPreview;->init()V

    .line 65
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00d7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    iput-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->setTwStopMotionPreviewEventListener(Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00d8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionProgressLayout:Landroid/widget/RelativeLayout;

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00da

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionProgressBar:Landroid/widget/ProgressBar;

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/app/camera/StopMotionPreview;->hideStopMotionProgressLayout()V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03000f

    iget-object v2, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03000a

    iget-object v2, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mBaseView:Landroid/view/ViewGroup;

    const v1, 0x7f0a00d6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mIndicatorView:Landroid/view/ViewGroup;

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 89
    return-void
.end method


# virtual methods
.method public addThumbnailImage([B)V
    .locals 3
    .parameter "jpegData"

    .prologue
    const/4 v2, 0x0

    .line 92
    const-string v0, "StopMotionPreview"

    const-string v1, "addThumbnailImage"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->addThumbNailImage([B)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mAddThumbnailImage:Z

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideMenu()V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTextMessage()V

    .line 100
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/StopMotionPreview;->setTouchHandled(Z)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 102
    iget-object p0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideTrayButton()V

    .line 108
    :cond_0
    return-void
.end method

.method public hideStopMotionProgressLayout()V
    .locals 2

    .prologue
    .line 221
    const-string v0, "StopMotionPreview"

    const-string v1, "hideStopMotionProgressLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionProgressLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 223
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mAddThumbnailImage:Z

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "StopMotionPreview"

    const-string v1, "StopMotionPreview onBack 1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/camera/StopMotionPreview;->reset()V

    .line 171
    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 172
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 1
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 199
    packed-switch p1, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 201
    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->setButtonLocked()V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->setButtonUnlocked()V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 141
    :goto_0
    return v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 131
    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x43

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 137
    goto :goto_0

    :cond_3
    move v0, v1

    .line 141
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 145
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 160
    :goto_0
    return v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 150
    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x43

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 156
    goto :goto_0

    :cond_3
    move v0, v1

    .line 160
    goto :goto_0
.end method

.method public onTwStopMotionCaptureEditingStarted()V
    .locals 0

    .prologue
    .line 183
    iget-object p0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 184
    return-void
.end method

.method public onTwStopMotionPreviewEditingFinished([BZ)V
    .locals 2
    .parameter "jpegData"
    .parameter "chkAppendFrameComplete"

    .prologue
    const-string v1, "StopMotionPreview"

    .line 175
    const-string v0, "StopMotionPreview"

    const-string v0, "onTwStopMotionPreviewEditingFinished"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mListener:Lcom/sec/android/app/camera/StopMotionPreview$OnStopMotionPreviewEventListener;

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "StopMotionPreview"

    const-string v0, "onTwStopMotionPreviewEditingFinished : mListener != null"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mListener:Lcom/sec/android/app/camera/StopMotionPreview$OnStopMotionPreviewEventListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/StopMotionPreview$OnStopMotionPreviewEventListener;->onStopMotionPreviewEditingFinished([BZ)V

    .line 180
    :cond_0
    return-void
.end method

.method public onTwStopMotionPreviewEditingStarted()V
    .locals 0

    .prologue
    .line 187
    iget-object p0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideShutterButton()V

    .line 188
    return-void
.end method

.method public onTwStopMotionRestoreMenu()V
    .locals 2

    .prologue
    const-string v1, "StopMotionPreview"

    .line 191
    const-string v0, "StopMotionPreview"

    const-string v0, "onTwStopMotionRestoreMenu"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mListener:Lcom/sec/android/app/camera/StopMotionPreview$OnStopMotionPreviewEventListener;

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "StopMotionPreview"

    const-string v0, "onTwStopMotionRestoreMenu : mListener != null"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mListener:Lcom/sec/android/app/camera/StopMotionPreview$OnStopMotionPreviewEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/StopMotionPreview$OnStopMotionPreviewEventListener;->onStopMotionRestoreMenu()V

    .line 196
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->reset()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mAddThumbnailImage:Z

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->setVisibility(I)V

    .line 114
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/StopMotionPreview;->setTouchHandled(Z)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/app/camera/StopMotionPreview;->showMenu()V

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/camera/StopMotionPreview;->restoreMenu()V

    .line 123
    return-void
.end method

.method public setStopMotionPreviewEventListener(Lcom/sec/android/app/camera/StopMotionPreview$OnStopMotionPreviewEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mListener:Lcom/sec/android/app/camera/StopMotionPreview$OnStopMotionPreviewEventListener;

    .line 50
    return-void
.end method

.method public setStopMotionProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 216
    const-string v0, "StopMotionPreview"

    const-string v1, "setStopMotionProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 218
    return-void
.end method

.method public setStopMotionProgressMax(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 211
    const-string v0, "StopMotionPreview"

    const-string v1, "setStopMotionProgressMax"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 213
    return-void
.end method

.method public showMenu()V
    .locals 2

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mAddThumbnailImage:Z

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionPreview:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->setVisibility(I)V

    .line 233
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 234
    return-void
.end method

.method public showStopMotionProgressLayout()V
    .locals 2

    .prologue
    .line 226
    const-string v0, "StopMotionPreview"

    const-string v1, "showStopMotionProgressLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/StopMotionPreview;->mStopMotionProgressLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 228
    return-void
.end method
