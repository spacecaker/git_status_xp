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

.field protected mOnZoomValueChangedListener:Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;

.field private mSliderController:Lcom/sec/android/app/camera/SliderController;


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
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 48
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 34
    new-instance v0, Lcom/sec/android/app/camera/ZoomMenu$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/ZoomMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/ZoomMenu;Lcom/sec/android/app/camera/ZoomMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object v2, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    .line 50
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/ZoomMenu;->setCaptureEnabled(Z)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/ZoomMenu;->setTouchHandled(Z)V

    .line 52
    invoke-direct {p0}, Lcom/sec/android/app/camera/ZoomMenu;->init()V

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SliderController;->setCurrentSlider(I)V

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->stopZoomMenuTimer()V

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a00f7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSlider;

    .line 63
    .local v0, zoomSlider:Lcom/sec/android/app/camera/widget/TwSlider;
    new-instance v1, Lcom/sec/android/app/camera/SliderController;

    invoke-direct {v1, v3, v3, v0, p0}, Lcom/sec/android/app/camera/SliderController;-><init>(Lcom/sec/android/app/camera/widget/TwImageButton;Lcom/sec/android/app/camera/widget/TwImageButton;Lcom/sec/android/app/camera/widget/TwSlider;Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    .line 64
    return-void
.end method


# virtual methods
.method public OnSliderValueChange(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;->onZoomValueChanged(I)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->startZoomMenuTimer()V

    .line 72
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 161
    :goto_0
    return v0

    .line 154
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    move v0, v1

    .line 155
    goto :goto_0

    .line 158
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 152
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
    .line 143
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->stopZoomMenuTimer()V

    .line 144
    return-void
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->stopZoomMenuTimer()V

    .line 149
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 167
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 182
    :goto_0
    return v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->onHide()V

    .line 177
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->hideMenu()V

    move v0, v1

    .line 179
    goto :goto_0

    :cond_3
    move v0, v1

    .line 182
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 186
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 201
    :goto_0
    return v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    const/4 v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->onHide()V

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->hideMenu()V

    move v0, v1

    .line 198
    goto :goto_0

    :cond_3
    move v0, v1

    .line 201
    goto :goto_0
.end method

.method public setOnZoomValueChangedListener(Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/camera/ZoomMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;

    .line 76
    return-void
.end method

.method public startZoomMenuTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 81
    return-void
.end method

.method public stopZoomMenuTimer()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    return-void
.end method

.method public updateSlider()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SliderController;->setCurrentSlider(I)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SliderController;->setCurrentSlider(I)V

    goto :goto_0
.end method

.method public updateSliderMaxValue()V
    .locals 5

    .prologue
    const v4, 0x7f0700c3

    .line 119
    const-string v2, "2048x1536"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v2

    if-gez v2, :cond_0

    .line 140
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v3, 0x7f0a00f9

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 127
    .local v1, mRightText:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 128
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    .line 130
    .local v0, mResolution:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 131
    const v2, 0x7f0700c1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 132
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 133
    const v2, 0x7f0700c2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 138
    .end local v0           #mResolution:I
    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public zoomIn()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/SliderController;->doPlus()V

    .line 89
    return-void
.end method

.method public zoomOut()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/SliderController;->doMinus()V

    .line 93
    return-void
.end method
