.class public Lcom/sec/android/app/camera/ZoomMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "ZoomMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ZoomMenu$1;,
        Lcom/sec/android/app/camera/ZoomMenu$MainHandler;,
        Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field public mMaxResolution:Z

.field protected mOnZoomValueChangedListener:Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;

.field private mSliderController:Lcom/sec/android/app/camera/SliderController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 4
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 34
    new-instance v0, Lcom/sec/android/app/camera/ZoomMenu$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/camera/ZoomMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/ZoomMenu;Lcom/sec/android/app/camera/ZoomMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mHandler:Landroid/os/Handler;

    .line 37
    iput-boolean v1, p0, Lcom/sec/android/app/camera/ZoomMenu;->mMaxResolution:Z

    .line 45
    iput-object v3, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    .line 51
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ZoomMenu;->setCaptureEnabled(Z)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ZoomMenu;->setTouchHandled(Z)V

    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/camera/ZoomMenu;->init()V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SliderController;->setCurrentSlider(I)V

    .line 59
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->stopZoomMenuTimer()V

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a00f7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSlider;

    .line 64
    .local v0, zoomSlider:Lcom/sec/android/app/camera/widget/TwSlider;
    iget-boolean v1, p0, Lcom/sec/android/app/camera/ZoomMenu;->mMaxResolution:Z

    sput-boolean v1, Lcom/sec/android/app/camera/widget/TwSlider;->mResolutionMax:Z

    .line 66
    new-instance v1, Lcom/sec/android/app/camera/SliderController;

    invoke-direct {v1, v3, v3, v0, p0}, Lcom/sec/android/app/camera/SliderController;-><init>(Lcom/sec/android/app/camera/widget/TwImageButton;Lcom/sec/android/app/camera/widget/TwImageButton;Lcom/sec/android/app/camera/widget/TwSlider;Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    .line 67
    return-void
.end method


# virtual methods
.method public OnSliderValueChange(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;->onZoomValueChanged(I)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->startZoomMenuTimer()V

    .line 75
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 156
    :goto_0
    return v0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    move v0, v1

    .line 150
    goto :goto_0

    .line 153
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onBack()V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->stopZoomMenuTimer()V

    .line 139
    return-void
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->stopZoomMenuTimer()V

    .line 144
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 162
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 177
    :goto_0
    return v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    const/4 v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->onHide()V

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->hideMenu()V

    move v0, v1

    .line 174
    goto :goto_0

    :cond_3
    move v0, v1

    .line 177
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 181
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 196
    :goto_0
    return v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const/4 v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->onHide()V

    .line 191
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->hideMenu()V

    move v0, v1

    .line 193
    goto :goto_0

    :cond_3
    move v0, v1

    .line 196
    goto :goto_0
.end method

.method public setOnZoomValueChangedListener(Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/camera/ZoomMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;

    .line 79
    return-void
.end method

.method public startZoomMenuTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 84
    return-void
.end method

.method public stopZoomMenuTimer()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    return-void
.end method

.method public updateSlider()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SliderController;->setMaxResolution(Z)V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getZoomLevelReset()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SliderController;->setZoomReset(Z)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SliderController;->setCurrentSlider(I)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setZoomLevelReset(Z)V

    .line 135
    :goto_1
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/SliderController;->setMaxResolution(Z)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getZoomLevelReset()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SliderController;->setZoomReset(Z)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SliderController;->setCurrentSlider(I)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setZoomLevelReset(Z)V

    goto :goto_1
.end method

.method public zoomIn()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/SliderController;->doPlus()V

    .line 92
    return-void
.end method

.method public zoomOut()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/SliderController;->doMinus()V

    .line 96
    return-void
.end method
