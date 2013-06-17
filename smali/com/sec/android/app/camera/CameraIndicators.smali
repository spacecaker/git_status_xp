.class public Lcom/sec/android/app/camera/CameraIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CameraIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# instance fields
.field private mIndicatorAntiShake:Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

.field private mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

.field private mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

.field private mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

.field private mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

.field private mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

.field private mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

.field private mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;


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
    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraIndicators;->setTouchHandled(Z)V

    .line 52
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraIndicators;->init()V

    .line 53
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 58
    .local v0, camSettings:Lcom/sec/android/app/camera/CameraSettings;
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    .line 59
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a004d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    .line 60
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0031

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    .line 61
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    .line 62
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0032

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    .line 63
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a004f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorAntiShake:Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

    .line 64
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    .line 65
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0050

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    .line 67
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeResolution(I)V

    .line 68
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getISO()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeISO(I)V

    .line 69
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraWB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeWhiteBalance(I)V

    .line 70
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeter()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeMetering(I)V

    .line 71
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraTimer()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeTimer(I)V

    .line 76
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeFocusmode(I)V

    .line 78
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 79
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsUIChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 80
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGps()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeGPS(I)V

    .line 81
    return-void
.end method


# virtual methods
.method protected ChangeFocusmode(I)V
    .locals 2
    .parameter "modeid"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->setVisibility(I)V

    .line 270
    packed-switch p1, :pswitch_data_0

    .line 282
    :goto_0
    return-void

    .line 273
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->setVisibility(I)V

    goto :goto_0

    .line 276
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->setFocusmode(I)V

    goto :goto_0

    .line 279
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->setFocusmode(I)V

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected ChangeGPS(I)V
    .locals 2
    .parameter "modeid"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setVisibility(I)V

    .line 286
    packed-switch p1, :pswitch_data_0

    .line 294
    :goto_0
    return-void

    .line 288
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setVisibility(I)V

    goto :goto_0

    .line 291
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setGPS(I)V

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected ChangeISO(I)V
    .locals 3
    .parameter "modeid"

    .prologue
    const/16 v2, 0x8

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setVisibility(I)V

    .line 190
    packed-switch p1, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setVisibility(I)V

    goto :goto_0

    .line 195
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setVisibility(I)V

    goto :goto_0

    .line 198
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    .line 201
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    .line 204
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    .line 207
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    .line 210
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    .line 213
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    .line 216
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    .line 219
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected ChangeMetering(I)V
    .locals 2
    .parameter "modeid"

    .prologue
    .line 225
    packed-switch p1, :pswitch_data_0

    .line 236
    :goto_0
    return-void

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorMetering;->setMetering(I)V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorMetering;->setMetering(I)V

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorMetering;->setMetering(I)V

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected ChangeResolution(I)V
    .locals 2
    .parameter "modeid"

    .prologue
    .line 130
    packed-switch p1, :pswitch_data_0

    .line 165
    :goto_0
    :pswitch_0
    return-void

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 138
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 141
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 144
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 147
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 150
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 153
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 156
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 159
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 162
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected ChangeTimer(I)V
    .locals 2
    .parameter "modeid"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setVisibility(I)V

    .line 240
    packed-switch p1, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 242
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setVisibility(I)V

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_0

    .line 248
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_0

    .line 251
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected ChangeWhiteBalance(I)V
    .locals 2
    .parameter "modeid"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setVisibility(I)V

    .line 169
    packed-switch p1, :pswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setVisibility(I)V

    goto :goto_0

    .line 174
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    .line 180
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    .line 183
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->clear()V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 86
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 93
    packed-switch p1, :pswitch_data_0

    .line 127
    :goto_0
    :pswitch_0
    return-void

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 96
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeResolution(I)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeResolution(I)V

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeWhiteBalance(I)V

    goto :goto_0

    .line 105
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeISO(I)V

    goto :goto_0

    .line 108
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeMetering(I)V

    goto :goto_0

    .line 111
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeTimer(I)V

    goto :goto_0

    .line 120
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeFocusmode(I)V

    goto :goto_0

    .line 124
    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeGPS(I)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 319
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 322
    :cond_0
    const/4 v0, 0x1

    .line 325
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
    .line 329
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 332
    :cond_0
    const/4 v0, 0x1

    .line 335
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->pause()V

    .line 90
    return-void
.end method

.method public setConnectingStateGPS(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGps()I

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setVisibility(I)V

    .line 316
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setVisibility(I)V

    .line 304
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 306
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setGPS(I)V

    .line 308
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setGPS(I)V

    goto :goto_0

    .line 311
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setGPS(I)V

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
