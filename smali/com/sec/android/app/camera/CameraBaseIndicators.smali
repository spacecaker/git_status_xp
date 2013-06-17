.class public Lcom/sec/android/app/camera/CameraBaseIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CameraBaseIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# instance fields
.field private mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

.field private mHideLaunchIconHandler:Landroid/os/Handler;

.field private mHideLaunchIconRunnable:Ljava/lang/Runnable;

.field private mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

.field private mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

.field private mIndicatorLock:Landroid/widget/ImageView;

.field private mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

.field private mIndicatorsRemainCount:Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;

.field private mLaunchIcon:Landroid/widget/RelativeLayout;

.field private mRemainCount:I

.field private mTextMessage:Landroid/widget/TextView;

.field private mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;


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
    .line 81
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRemainCount:I

    .line 58
    new-instance v0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraBaseIndicators$1;-><init>(Lcom/sec/android/app/camera/CameraBaseIndicators;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideLaunchIconRunnable:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideLaunchIconHandler:Landroid/os/Handler;

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setTouchHandled(Z)V

    .line 84
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->init()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraBaseIndicators;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLaunchIcon:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CameraBaseIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorFocus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0048

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setFocusIndicator(I)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0047

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorsRemainCount:Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0049

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorLock:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorLock:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a004b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->setSurfaceView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    const v1, 0x7f0a004a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLaunchIcon:Landroid/widget/RelativeLayout;

    .line 110
    return-void
.end method


# virtual methods
.method public getRemainCount()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRemainCount:I

    return v0
.end method

.method public hideLaunchIcon()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideLaunchIconHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideLaunchIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    return-void
.end method

.method public hideTextMessage()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    return-void
.end method

.method public hideTouchFocusIndicator()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->setVisibility(I)V

    .line 220
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 118
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 6
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    sparse-switch p1, :sswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 123
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    goto :goto_0

    .line 126
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    goto :goto_0

    .line 132
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v5, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 137
    :cond_0
    const/4 v0, 0x1

    .line 146
    .local v0, bHideFocus:Z
    :goto_1
    if-eqz v0, :cond_3

    .line 147
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setVisibility(I)V

    goto :goto_0

    .line 138
    .end local v0           #bHideFocus:Z
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 139
    const/4 v0, 0x0

    .restart local v0       #bHideFocus:Z
    goto :goto_1

    .line 143
    .end local v0           #bHideFocus:Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #bHideFocus:Z
    goto :goto_1

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setVisibility(I)V

    goto :goto_0

    .line 153
    .end local v0           #bHideFocus:Z
    :sswitch_3
    if-ne p2, v4, :cond_4

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorLock:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorLock:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x5 -> :sswitch_2
        0x13 -> :sswitch_0
        0x16 -> :sswitch_1
        0x22 -> :sswitch_3
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideLaunchIconHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideLaunchIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 288
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 291
    :cond_0
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 298
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 301
    :cond_0
    const/4 v0, 0x1

    .line 304
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public setBatteryCharging()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 174
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 4
    .parameter "level"

    .prologue
    const/16 v3, 0x45

    const/16 v2, 0x31

    const/16 v1, 0x1d

    const/16 v0, 0xe

    .line 177
    if-gt p1, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 190
    :goto_0
    return-void

    .line 179
    :cond_0
    if-le p1, v0, :cond_1

    if-gt p1, v1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    .line 181
    :cond_1
    if-le p1, v1, :cond_2

    if-gt p1, v2, :cond_2

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    .line 183
    :cond_2
    if-le p1, v2, :cond_3

    if-gt p1, v3, :cond_3

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    .line 185
    :cond_3
    if-le p1, v3, :cond_4

    const/16 v0, 0x59

    if-gt p1, v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    .line 188
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0
.end method

.method public setFocusIndicator(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setFocusIndicator(I)V

    .line 206
    return-void
.end method

.method public setRemainCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 168
    iput p1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRemainCount:I

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorsRemainCount:Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;

    iget v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRemainCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->setRemainCount(I)V

    .line 170
    return-void
.end method

.method public setTextMessage(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    return-void
.end method

.method public showFocusIndicator()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setVisibility(I)V

    .line 216
    :cond_0
    return-void
.end method
