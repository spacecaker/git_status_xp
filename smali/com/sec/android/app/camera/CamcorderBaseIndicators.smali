.class public Lcom/sec/android/app/camera/CamcorderBaseIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CamcorderBaseIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# instance fields
.field private mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

.field private mHideLaunchIconHandler:Landroid/os/Handler;

.field private mHideLaunchIconRunnable:Ljava/lang/Runnable;

.field private mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

.field private mIndicatorLock:Landroid/widget/ImageView;

.field private mIndicatorRemainTime:Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;

.field private mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

.field private mLaunchIcon:Landroid/widget/RelativeLayout;


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

    .line 56
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 46
    new-instance v0, Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators$1;-><init>(Lcom/sec/android/app/camera/CamcorderBaseIndicators;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHideLaunchIconRunnable:Ljava/lang/Runnable;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHideLaunchIconHandler:Landroid/os/Handler;

    .line 58
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->setCaptureEnabled(Z)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->setTouchHandled(Z)V

    .line 60
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->init()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CamcorderBaseIndicators;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLaunchIcon:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorRemainTime:Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorLock:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorLock:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->setSurfaceView(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mLaunchIcon:Landroid/widget/RelativeLayout;

    .line 78
    return-void
.end method


# virtual methods
.method public hideLaunchIcon()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHideLaunchIconHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHideLaunchIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 82
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 85
    sparse-switch p1, :sswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 87
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    goto :goto_0

    .line 90
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    goto :goto_0

    .line 93
    :sswitch_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorLock:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorLock:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x16 -> :sswitch_1
        0x22 -> :sswitch_2
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHideLaunchIconHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mHideLaunchIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public setBatteryCharging()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 109
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

    .line 112
    if-gt p1, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 125
    :goto_0
    return-void

    .line 114
    :cond_0
    if-le p1, v0, :cond_1

    if-gt p1, v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    .line 116
    :cond_1
    if-le p1, v1, :cond_2

    if-gt p1, v2, :cond_2

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    .line 118
    :cond_2
    if-le p1, v2, :cond_3

    if-gt p1, v3, :cond_3

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    .line 120
    :cond_3
    if-le p1, v3, :cond_4

    const/16 v0, 0x59

    if-gt p1, v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0
.end method

.method public setRemainTime(I)V
    .locals 1
    .parameter "seconds"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->mIndicatorRemainTime:Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/TwIndicatorRemainingTime;->setRemainTime(I)V

    .line 105
    return-void
.end method
