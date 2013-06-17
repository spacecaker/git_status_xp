.class public Lcom/sec/android/app/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;,
        Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
    }
.end annotation


# static fields
.field protected static final MMS_VIDEO_DURATION:I


# instance fields
.field protected mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mAntishake:I

.field private mAttachMMSMode:Z

.field private mAttachMode:Z

.field private mAutocontrast:I

.field private mBlinkdetection:I

.field private mCamcorderAudioRecording:Z

.field private mCamcorderAutocontrast:I

.field private mCamcorderContrast:I

.field private mCamcorderEffect:I

.field private mCamcorderExposureValue:I

.field private mCamcorderFlashMode:I

.field private mCamcorderQuality:I

.field private mCamcorderResolution:I

.field private mCamcorderReview:I

.field private mCamcorderSaturation:I

.field private mCamcorderSharpness:I

.field private mCamcorderTimer:I

.field private mCamcorderWB:I

.field private mCamcorderZoomValue:I

.field private mContrast:I

.field private mEffect:I

.field private mExposureValue:I

.field private mExposuremeter:I

.field private mFlashMode:I

.field private mFocusMode:I

.field private mFrame:I

.field private mGps:I

.field private mGuideline:I

.field private mISO:I

.field private mLock:I

.field private mMainCameraSelected:Z

.field private mMode:I

.field private mMosaic:I

.field protected mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

.field private mNumberOfCsShotCaptured:I

.field private mNumberOfCsShotSaved:I

.field private mObjecttracking:I

.field protected mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreferences:Landroid/content/SharedPreferences;

.field private mQuality:I

.field private mRecordingMode:I

.field private mResolution:I

.field private mReview:I

.field private mSaturation:I

.field private mSceneMode:I

.field private mSharpness:I

.field private mShootingMode:I

.field private mShootingVintageMode:I

.field private mShutterSound:I

.field private mStorage:I

.field private mTimer:I

.field protected mUIObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoDuration:I

.field private mWB:I

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 446
    const-string v0, "ro.media.enc.lprof.duration"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 4
    .parameter "activityContext"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mUIObservers:Ljava/util/List;

    .line 90
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 108
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 116
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    .line 133
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 152
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 169
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    .line 179
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 191
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 271
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    .line 272
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    .line 273
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    .line 275
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 303
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 356
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    .line 359
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 360
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    .line 362
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    .line 363
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    .line 366
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    .line 367
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    .line 368
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    .line 369
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 370
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:Z

    .line 371
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    .line 372
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    .line 373
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotSaved:I

    .line 374
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mMainCameraSelected:Z

    .line 376
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMode:Z

    .line 377
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    .line 379
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 484
    new-instance v0, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;-><init>(Lcom/sec/android/app/camera/CameraSettings;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    .line 487
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 488
    return-void
.end method

.method public static getBeautyString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1485
    const-string v0, "face_beauty"

    return-object v0
.end method

.method public static getEffectString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "none"

    .line 1573
    packed-switch p0, :pswitch_data_0

    .line 1583
    const-string v0, "none"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1575
    :pswitch_0
    const-string v0, "none"

    move-object v0, v1

    goto :goto_0

    .line 1577
    :pswitch_1
    const-string v0, "negative"

    goto :goto_0

    .line 1579
    :pswitch_2
    const-string v0, "mono"

    goto :goto_0

    .line 1581
    :pswitch_3
    const-string v0, "sepia"

    goto :goto_0

    .line 1573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getExposuremeterString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "center-weighted"

    .line 1632
    packed-switch p0, :pswitch_data_0

    .line 1640
    const-string v0, "center-weighted"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1634
    :pswitch_0
    const-string v0, "center-weighted"

    move-object v0, v1

    goto :goto_0

    .line 1636
    :pswitch_1
    const-string v0, "spot-metering"

    goto :goto_0

    .line 1638
    :pswitch_2
    const-string v0, "frame-average"

    goto :goto_0

    .line 1632
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getFlashModeString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "auto"

    .line 1544
    packed-switch p0, :pswitch_data_0

    .line 1552
    const-string v0, "auto"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1546
    :pswitch_0
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1548
    :pswitch_1
    const-string v0, "on"

    goto :goto_0

    .line 1550
    :pswitch_2
    const-string v0, "off"

    goto :goto_0

    .line 1544
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFocusModeString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "auto"

    .line 1558
    packed-switch p0, :pswitch_data_0

    .line 1568
    const-string v0, "auto"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1560
    :pswitch_0
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1562
    :pswitch_1
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1564
    :pswitch_2
    const-string v0, "macro"

    goto :goto_0

    .line 1566
    :pswitch_3
    const-string v0, "facedetect"

    goto :goto_0

    .line 1558
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getIntPreference(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 581
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 583
    :goto_0
    return v1

    .line 582
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ClassCastException;
    move v1, p2

    .line 583
    goto :goto_0
.end method

.method public static getIsoString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "auto"

    .line 1605
    packed-switch p0, :pswitch_data_0

    .line 1627
    :pswitch_0
    const-string v0, "auto"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1607
    :pswitch_1
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1609
    :pswitch_2
    const-string v0, "ISO50"

    goto :goto_0

    .line 1611
    :pswitch_3
    const-string v0, "ISO100"

    goto :goto_0

    .line 1613
    :pswitch_4
    const-string v0, "ISO200"

    goto :goto_0

    .line 1615
    :pswitch_5
    const-string v0, "ISO400"

    goto :goto_0

    .line 1617
    :pswitch_6
    const-string v0, "ISO800"

    goto :goto_0

    .line 1619
    :pswitch_7
    const-string v0, "ISO1600"

    goto :goto_0

    .line 1621
    :pswitch_8
    const-string v0, "ISO3200"

    goto :goto_0

    .line 1623
    :pswitch_9
    const-string v0, "sports"

    goto :goto_0

    .line 1625
    :pswitch_a
    const-string v0, "night"

    goto :goto_0

    .line 1605
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static getModeString(I)Ljava/lang/String;
    .locals 6
    .parameter "key"

    .prologue
    const-string v5, "flash-mode"

    const-string v4, "exposure-compensation"

    const-string v3, "effect"

    const-string v2, "contrast"

    const-string v1, "wdr"

    .line 1409
    sparse-switch p0, :sswitch_data_0

    .line 1480
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 1411
    :sswitch_0
    const-string v0, "scene-mode"

    goto :goto_0

    .line 1413
    :sswitch_1
    const-string v0, "flash-mode"

    move-object v0, v5

    goto :goto_0

    .line 1415
    :sswitch_2
    const-string v0, "picture-size"

    goto :goto_0

    .line 1417
    :sswitch_3
    const-string v0, "focus-mode"

    goto :goto_0

    .line 1419
    :sswitch_4
    const-string v0, "exposure-compensation"

    move-object v0, v4

    goto :goto_0

    .line 1421
    :sswitch_5
    const-string v0, "effect"

    move-object v0, v3

    goto :goto_0

    .line 1423
    :sswitch_6
    const-string v0, "whitebalance"

    goto :goto_0

    .line 1425
    :sswitch_7
    const-string v0, "iso"

    goto :goto_0

    .line 1427
    :sswitch_8
    const-string v0, "jpeg-quality"

    goto :goto_0

    .line 1429
    :sswitch_9
    const-string v0, "zoom"

    goto :goto_0

    .line 1431
    :sswitch_a
    const-string v0, "auto-exposure"

    goto :goto_0

    .line 1433
    :sswitch_b
    const-string v0, "anti-shake"

    goto :goto_0

    .line 1435
    :sswitch_c
    const-string v0, "wdr"

    move-object v0, v1

    goto :goto_0

    .line 1437
    :sswitch_d
    const-string v0, "wdr"

    move-object v0, v1

    goto :goto_0

    .line 1439
    :sswitch_e
    const-string v0, "obj-tracking"

    goto :goto_0

    .line 1441
    :sswitch_f
    const-string v0, "contrast"

    move-object v0, v2

    goto :goto_0

    .line 1443
    :sswitch_10
    const-string v0, "saturation"

    goto :goto_0

    .line 1445
    :sswitch_11
    const-string v0, "sharpness"

    goto :goto_0

    .line 1447
    :sswitch_12
    const-string v0, "flash-mode"

    move-object v0, v5

    goto :goto_0

    .line 1449
    :sswitch_13
    const-string v0, "picture-size"

    goto :goto_0

    .line 1451
    :sswitch_14
    const-string v0, "exposure-compensation"

    move-object v0, v4

    goto :goto_0

    .line 1453
    :sswitch_15
    const-string v0, "effect"

    move-object v0, v3

    goto :goto_0

    .line 1455
    :sswitch_16
    const-string v0, "whitebalance"

    goto :goto_0

    .line 1457
    :sswitch_17
    const-string v0, "wdr"

    move-object v0, v1

    goto :goto_0

    .line 1459
    :sswitch_18
    const-string v0, "jpeg-quality"

    goto :goto_0

    .line 1461
    :sswitch_19
    const-string v0, "zoom"

    goto :goto_0

    .line 1463
    :sswitch_1a
    const-string v0, "contrast"

    move-object v0, v2

    goto :goto_0

    .line 1465
    :sswitch_1b
    const-string v0, "saturation"

    goto :goto_0

    .line 1467
    :sswitch_1c
    const-string v0, "sharpness"

    goto :goto_0

    .line 1470
    :sswitch_1d
    const-string v0, "mode"

    goto :goto_0

    .line 1409
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1d
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_a
        0xc -> :sswitch_e
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x10 -> :sswitch_8
        0x12 -> :sswitch_9
        0x18 -> :sswitch_f
        0x19 -> :sswitch_10
        0x1a -> :sswitch_11
        0x64 -> :sswitch_1d
        0x67 -> :sswitch_12
        0x68 -> :sswitch_13
        0x6b -> :sswitch_16
        0x6c -> :sswitch_15
        0x6d -> :sswitch_14
        0x6e -> :sswitch_17
        0x6f -> :sswitch_18
        0x70 -> :sswitch_19
        0x72 -> :sswitch_1a
        0x73 -> :sswitch_1b
        0x74 -> :sswitch_1c
    .end sparse-switch
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Landroid/content/SharedPreferences;

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getQualityString(I)I
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x64

    .line 1645
    packed-switch p0, :pswitch_data_0

    .line 1653
    :goto_0
    :pswitch_0
    return v0

    .line 1649
    :pswitch_1
    const/16 v0, 0x46

    goto :goto_0

    .line 1651
    :pswitch_2
    const/16 v0, 0x28

    goto :goto_0

    .line 1645
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getSceneModeString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "auto"

    .line 1509
    packed-switch p0, :pswitch_data_0

    .line 1539
    const-string v0, "auto"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1511
    :pswitch_0
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1513
    :pswitch_1
    const-string v0, "portrait"

    goto :goto_0

    .line 1515
    :pswitch_2
    const-string v0, "landscape"

    goto :goto_0

    .line 1517
    :pswitch_3
    const-string v0, "sports"

    goto :goto_0

    .line 1519
    :pswitch_4
    const-string v0, "sunset"

    goto :goto_0

    .line 1521
    :pswitch_5
    const-string v0, "dusk-dawn"

    goto :goto_0

    .line 1523
    :pswitch_6
    const-string v0, "fireworks"

    goto :goto_0

    .line 1525
    :pswitch_7
    const-string v0, "beach"

    goto :goto_0

    .line 1527
    :pswitch_8
    const-string v0, "party"

    goto :goto_0

    .line 1529
    :pswitch_9
    const-string v0, "night"

    goto :goto_0

    .line 1531
    :pswitch_a
    const-string v0, "fall-color"

    goto :goto_0

    .line 1533
    :pswitch_b
    const-string v0, "text"

    goto :goto_0

    .line 1535
    :pswitch_c
    const-string v0, "candlelight"

    goto :goto_0

    .line 1537
    :pswitch_d
    const-string v0, "backlight"

    goto :goto_0

    .line 1509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static getVintageModeString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "normal"

    .line 1493
    packed-switch p0, :pswitch_data_0

    .line 1505
    const-string v0, "normal"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1495
    :pswitch_0
    const-string v0, "normal"

    move-object v0, v1

    goto :goto_0

    .line 1497
    :pswitch_1
    const-string v0, "warm"

    goto :goto_0

    .line 1499
    :pswitch_2
    const-string v0, "cool"

    goto :goto_0

    .line 1501
    :pswitch_3
    const-string v0, "bnw"

    goto :goto_0

    .line 1503
    :pswitch_4
    const-string v0, "off"

    goto :goto_0

    .line 1493
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getVintageString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1489
    const-string v0, "vintagemode"

    return-object v0
.end method

.method public static getWhitebalanceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "auto"

    .line 1588
    packed-switch p0, :pswitch_data_0

    .line 1600
    const-string v0, "auto"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1590
    :pswitch_0
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1592
    :pswitch_1
    const-string v0, "daylight"

    goto :goto_0

    .line 1594
    :pswitch_2
    const-string v0, "cloudy-daylight"

    goto :goto_0

    .line 1596
    :pswitch_3
    const-string v0, "incandescent"

    goto :goto_0

    .line 1598
    :pswitch_4
    const-string v0, "fluorescent"

    goto :goto_0

    .line 1588
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1770
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mUIObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1771
    return-void
.end method

.method public getAndSetLock()V
    .locals 3

    .prologue
    .line 1319
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_lock_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    .line 1321
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1322
    const/16 v0, 0x22

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1324
    :cond_0
    return-void
.end method

.method public getAntishake()I
    .locals 3

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_antishake_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttachMMSMode()Z
    .locals 1

    .prologue
    .line 1335
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    return v0
.end method

.method public getAttachMode()Z
    .locals 1

    .prologue
    .line 1327
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMode:Z

    return v0
.end method

.method public getBlinkdetection()I
    .locals 3

    .prologue
    .line 878
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_blinkdetection_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderAudioRecording()Z
    .locals 1

    .prologue
    .line 1232
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:Z

    return v0
.end method

.method public getCamcorderAutocontrast()I
    .locals 3

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_autocontrast_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderContrast()I
    .locals 1

    .prologue
    .line 1196
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    return v0
.end method

.method public getCamcorderEffect()I
    .locals 1

    .prologue
    .line 1154
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    return v0
.end method

.method public getCamcorderExposureValue()I
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    return v0
.end method

.method public getCamcorderFlashMode()I
    .locals 3

    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_flash_key"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderQuality()I
    .locals 3

    .prologue
    .line 1119
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_videoquality_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderResolution()I
    .locals 3

    .prologue
    .line 1094
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderReview()I
    .locals 3

    .prologue
    .line 1245
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setup_camcorder_review_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderSaturation()I
    .locals 1

    .prologue
    .line 1208
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    return v0
.end method

.method public getCamcorderSharpness()I
    .locals 1

    .prologue
    .line 1220
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    return v0
.end method

.method public getCamcorderTimer()I
    .locals 1

    .prologue
    .line 1082
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    return v0
.end method

.method public getCamcorderWB()I
    .locals 1

    .prologue
    .line 1136
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    return v0
.end method

.method public getCamcorderZoomValue()I
    .locals 1

    .prologue
    .line 1031
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    return v0
.end method

.method public getCameraAutocontrast()I
    .locals 3

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_autocontrast_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraContrast()I
    .locals 1

    .prologue
    .line 982
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    return v0
.end method

.method public getCameraEffect()I
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    return v0
.end method

.method public getCameraExposureValue()I
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    return v0
.end method

.method public getCameraFlashMode()I
    .locals 3

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_flash_key"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraQuality()I
    .locals 3

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_quality_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraResolution()I
    .locals 3

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraSaturation()I
    .locals 1

    .prologue
    .line 994
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    return v0
.end method

.method public getCameraSharpness()I
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    return v0
.end method

.method public getCameraTimer()I
    .locals 1

    .prologue
    .line 709
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    return v0
.end method

.method public getCameraWB()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    return v0
.end method

.method public getCameraZoomValue()I
    .locals 1

    .prologue
    .line 1019
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    return v0
.end method

.method public getDefaultCamcorderResolution()I
    .locals 1

    .prologue
    .line 1098
    const-string v0, "320x240"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDefaultCameraResolution()I
    .locals 1

    .prologue
    .line 725
    const-string v0, "2048x1536"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEVFromSceneMode(I)I
    .locals 1
    .parameter "sceneMode"

    .prologue
    .line 1860
    const/4 v0, 0x0

    .line 1862
    .local v0, nEV:I
    packed-switch p1, :pswitch_data_0

    .line 1882
    :goto_0
    :pswitch_0
    return v0

    .line 1877
    :pswitch_1
    const/4 v0, 0x2

    .line 1878
    goto :goto_0

    .line 1862
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getExposuremeter()I
    .locals 3

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_exposuremeter_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getExposuremeterFromSceneMode(I)I
    .locals 1
    .parameter "sceneMode"

    .prologue
    .line 1774
    const/4 v0, 0x0

    .line 1776
    .local v0, nExposuremeter:I
    packed-switch p1, :pswitch_data_0

    .line 1798
    :goto_0
    :pswitch_0
    return v0

    .line 1790
    :pswitch_1
    const/4 v0, 0x2

    .line 1791
    goto :goto_0

    .line 1793
    :pswitch_2
    const/4 v0, 0x1

    .line 1794
    goto :goto_0

    .line 1776
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getFocusMode()I
    .locals 3

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFrame()I
    .locals 1

    .prologue
    .line 1262
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrame:I

    return v0
.end method

.method public getGps()I
    .locals 3

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setup_gps_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGuideline()I
    .locals 3

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setup_guideline_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getISO()I
    .locals 3

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_iso_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getISOFromSceneMode(I)I
    .locals 1
    .parameter "sceneMode"

    .prologue
    .line 1830
    const/4 v0, 0x0

    .line 1832
    .local v0, nISO:I
    packed-switch p1, :pswitch_data_0

    .line 1856
    :goto_0
    :pswitch_0
    return v0

    .line 1845
    :pswitch_1
    const/4 v0, 0x3

    .line 1846
    goto :goto_0

    .line 1848
    :pswitch_2
    const/4 v0, 0x1

    .line 1849
    goto :goto_0

    .line 1851
    :pswitch_3
    const/4 v0, 0x1

    .line 1852
    goto :goto_0

    .line 1832
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getLock()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1290
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_lock_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    .line 1291
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public getMaxVideoDurationInMs()I
    .locals 3

    .prologue
    .line 540
    const-string v1, "pref_camera_video_duration_key"

    const/16 v2, 0x3c

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    .line 542
    .local v0, microsec:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 546
    sget v1, Lcom/sec/android/app/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    mul-int/lit16 v1, v1, 0x3e8

    .line 549
    :goto_0
    return v1

    :cond_0
    const v1, 0xea60

    mul-int/2addr v1, v0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    return v0
.end method

.method public getNumberOfCsShotCaptured()I
    .locals 1

    .prologue
    .line 1749
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    return v0
.end method

.method public getNumberOfCsShotSaved()I
    .locals 1

    .prologue
    .line 1757
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotSaved:I

    return v0
.end method

.method public getObjecttracking()I
    .locals 3

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_objecttracking_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRecordingMode()I
    .locals 1

    .prologue
    .line 1044
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    return v0
.end method

.method public getReview()I
    .locals 3

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setup_review_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSceneMode()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    return v0
.end method

.method public getShootingMode()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    return v0
.end method

.method public getShootingVintageMode()I
    .locals 1

    .prologue
    .line 1278
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    return v0
.end method

.method public getShutterSound()I
    .locals 3

    .prologue
    .line 965
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setup_shuttersound_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStorage()I
    .locals 3

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setup_storage_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWhiteBalanceFromSceneMode(I)I
    .locals 1
    .parameter "sceneMode"

    .prologue
    .line 1802
    const/4 v0, 0x0

    .line 1804
    .local v0, nWB:I
    packed-switch p1, :pswitch_data_0

    .line 1826
    :goto_0
    :pswitch_0
    return v0

    .line 1818
    :pswitch_1
    const/4 v0, 0x1

    .line 1819
    goto :goto_0

    .line 1821
    :pswitch_2
    const/4 v0, 0x4

    .line 1822
    goto :goto_0

    .line 1804
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleNotification(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 1401
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1403
    .end local p0
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1404
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;->onCameraSettingsChanged(II)V

    goto :goto_0

    .line 1406
    :cond_0
    return-void
.end method

.method protected handleUINotification(II)V
    .locals 4
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 1355
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mUIObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1357
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;>;"
    packed-switch p1, :pswitch_data_0

    .line 1383
    .end local p0
    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1384
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;->onCameraSettingsChanged(II)V

    goto :goto_0

    .line 1361
    .restart local p0
    :pswitch_1
    iput p2, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposuremeter:I

    .line 1362
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1363
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_exposuremeter_key"

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposuremeter:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1364
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1368
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_2
    iput p2, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    goto :goto_0

    .line 1371
    :pswitch_3
    iput p2, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    .line 1373
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1374
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_iso_key"

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1375
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1379
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_4
    iput p2, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    goto :goto_0

    .line 1386
    .end local p0
    :cond_0
    return-void

    .line 1357
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public initializeCamcorder()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 515
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 516
    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 517
    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 518
    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    .line 519
    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    .line 520
    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    .line 521
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    .line 522
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    .line 523
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    .line 524
    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 525
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:Z

    .line 526
    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    .line 527
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 528
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    .line 530
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 532
    return-void
.end method

.method public initializeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 491
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 492
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 493
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    .line 494
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 495
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 496
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    .line 497
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 498
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 499
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    .line 500
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    .line 501
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    .line 502
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 503
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutocontrast()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCameraAutocontrastChanged(I)V

    .line 507
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 512
    return-void
.end method

.method public isMainCameraSelected()Z
    .locals 1

    .prologue
    .line 1765
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMainCameraSelected:Z

    return v0
.end method

.method protected notifyCameraSettingsChanged(II)V
    .locals 3
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1390
    return-void
.end method

.method protected notifyCameraSettingsChanged(IIZ)V
    .locals 0
    .parameter "menuid"
    .parameter "modeid"
    .parameter "syncmode"

    .prologue
    .line 1393
    if-eqz p3, :cond_0

    .line 1394
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings;->handleNotification(II)V

    .line 1398
    :goto_0
    return-void

    .line 1396
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public notifyUIChange(II)V
    .locals 3
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1352
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 537
    return-void
.end method

.method public registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1344
    return-void
.end method

.method public registerCameraSettingsUIChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mUIObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1348
    return-void
.end method

.method public resetCamcorderSettingsToDefault()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1712
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1713
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1720
    :goto_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setRecordingMode(I)V

    .line 1721
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 1722
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderExposureValue(I)V

    .line 1724
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderTimer(I)V

    .line 1725
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderWB(I)V

    .line 1726
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    .line 1727
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAutocontrast(I)V

    .line 1728
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderQuality(I)V

    .line 1730
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderContrast(I)V

    .line 1731
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSaturation(I)V

    .line 1732
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSharpness(I)V

    .line 1733
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(Z)V

    .line 1735
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 1736
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    .line 1737
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderReview(I)V

    .line 1741
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(Z)V

    .line 1742
    return-void

    .line 1715
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1716
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1717
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public resetCameraSettingsToDefault()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v6, "pref_camera_resolution_key"

    .line 1665
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 1666
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 1667
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1668
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 1669
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1670
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_resolution_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1671
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1673
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->setResolutionAndShootingModeToDefault()V

    .line 1674
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1675
    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1678
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraWB(I)V

    .line 1679
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    .line 1680
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1681
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 1683
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 1685
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraTimer(I)V

    .line 1688
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 1689
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    .line 1690
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    .line 1691
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setObjecttracking(I)V

    .line 1692
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    .line 1693
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutocontrast(I)V

    .line 1694
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setBlinkdetection(I)V

    .line 1695
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 1697
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 1698
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 1699
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    .line 1701
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 1702
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    .line 1703
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setGps(I)V

    .line 1704
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setShutterSound(I)V

    .line 1705
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 1708
    return-void
.end method

.method public resetMaxVideoDuration(I)V
    .locals 1
    .parameter "recordingMode"

    .prologue
    .line 1057
    if-nez p1, :cond_1

    .line 1058
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setMaxVideoDurationInMs(I)V

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1060
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setMaxVideoDurationInMs(I)V

    goto :goto_0
.end method

.method public setAntishake(I)V
    .locals 5
    .parameter "antishake"

    .prologue
    const-string v4, "pref_camera_antishake_key"

    .line 831
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_antishake_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntishake:I

    .line 832
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntishake:I

    if-eq v1, p1, :cond_0

    .line 833
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAntishake "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntishake:I

    .line 835
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 836
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_antishake_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntishake:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 837
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 839
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 841
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setAttachMMSMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1339
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    .line 1340
    return-void
.end method

.method public setAttachMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1331
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMode:Z

    .line 1332
    return-void
.end method

.method public setBlinkdetection(I)V
    .locals 5
    .parameter "blinkdetection"

    .prologue
    const-string v4, "pref_camera_blinkdetection_key"

    .line 882
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_blinkdetection_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBlinkdetection:I

    .line 883
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBlinkdetection:I

    if-eq v1, p1, :cond_0

    .line 884
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBlinkdetection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBlinkdetection:I

    .line 886
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 887
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_blinkdetection_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBlinkdetection:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 888
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 890
    const/16 v1, 0xf

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 892
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderAudioRecording(Z)V
    .locals 3
    .parameter "audioRecording"

    .prologue
    .line 1236
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:Z

    if-eq v0, p1, :cond_0

    .line 1237
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAudioRecording "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:Z

    .line 1240
    const/16 v0, 0x76

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1242
    :cond_0
    return-void

    .line 1240
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCamcorderAutocontrast(I)V
    .locals 5
    .parameter "autocontrast"

    .prologue
    const-string v4, "pref_camera_autocontrast_key"

    .line 865
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_autocontrast_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutocontrast:I

    .line 866
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutocontrast:I

    if-eq v1, p1, :cond_0

    .line 867
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderAutocontrast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutocontrast:I

    .line 869
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 870
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_autocontrast_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutocontrast:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 871
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 873
    const/16 v1, 0xe

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 875
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderContrast(I)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 1200
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    if-eq v0, p1, :cond_0

    .line 1201
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    .line 1203
    const/16 v0, 0x72

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1205
    :cond_0
    return-void
.end method

.method public setCamcorderEffect(I)V
    .locals 4
    .parameter "effect"

    .prologue
    const/4 v3, 0x0

    .line 1158
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    if-eq v0, p1, :cond_0

    .line 1159
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    .line 1161
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1164
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    if-eqz v0, :cond_0

    .line 1165
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    .line 1166
    const/16 v0, 0x6b

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1169
    :cond_0
    return-void
.end method

.method public setCamcorderExposureValue(I)V
    .locals 3
    .parameter "exposurevalue"

    .prologue
    .line 675
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    if-eq v0, p1, :cond_0

    .line 676
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderExposureValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 678
    const/16 v0, 0x6d

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 680
    :cond_0
    return-void
.end method

.method public setCamcorderFlashMode(I)V
    .locals 5
    .parameter "flashMode"

    .prologue
    const-string v4, "pref_camcorder_flash_key"

    .line 1069
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_flash_key"

    const/4 v2, 0x2

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    .line 1070
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    if-eq v1, p1, :cond_0

    .line 1071
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderFlashMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    .line 1073
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1074
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_flash_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1075
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1077
    const/16 v1, 0x67

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1079
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderQuality(I)V
    .locals 5
    .parameter "quality"

    .prologue
    const-string v4, "pref_camera_videoquality_key"

    .line 1123
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_videoquality_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    .line 1124
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    if-eq v1, p1, :cond_0

    .line 1125
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderQuality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    .line 1127
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1128
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_videoquality_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1129
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1131
    const/16 v1, 0x6f

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1133
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderResolution(I)Z
    .locals 6
    .parameter "resolution"

    .prologue
    const/4 v4, 0x1

    const-string v5, "pref_camcorder_resolution_key"

    .line 1103
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 1104
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    if-eq v1, p1, :cond_0

    .line 1105
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderResolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 1107
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1108
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_resolution_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1111
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, p1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleResolutionChanged(IZ)V

    .line 1112
    const/16 v1, 0x68

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    move v1, v4

    .line 1115
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCamcorderReview(I)V
    .locals 5
    .parameter "review"

    .prologue
    const-string v4, "pref_setup_camcorder_review_key"

    .line 1249
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_camcorder_review_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    .line 1250
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    if-eq v1, p1, :cond_0

    .line 1251
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderReview "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    .line 1253
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1254
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_camcorder_review_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1257
    const/16 v1, 0x77

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1259
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderSaturation(I)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 1212
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    if-eq v0, p1, :cond_0

    .line 1213
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderSaturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    .line 1215
    const/16 v0, 0x73

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1217
    :cond_0
    return-void
.end method

.method public setCamcorderSharpness(I)V
    .locals 3
    .parameter "sharpness"

    .prologue
    .line 1224
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    if-eq v0, p1, :cond_0

    .line 1225
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderSharpness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    .line 1227
    const/16 v0, 0x74

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1229
    :cond_0
    return-void
.end method

.method public setCamcorderTimer(I)V
    .locals 3
    .parameter "timer"

    .prologue
    .line 1086
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    if-eq v0, p1, :cond_0

    .line 1087
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    .line 1089
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1091
    :cond_0
    return-void
.end method

.method public setCamcorderWB(I)V
    .locals 4
    .parameter "whitebalance"

    .prologue
    const/4 v3, 0x0

    .line 1140
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    if-eq v0, p1, :cond_0

    .line 1141
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderWB "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    .line 1143
    const/16 v0, 0x6b

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1146
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    if-eqz v0, :cond_0

    .line 1147
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    .line 1148
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1151
    :cond_0
    return-void
.end method

.method public setCamcorderZoomValue(I)V
    .locals 3
    .parameter "zoomvalue"

    .prologue
    .line 1035
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    if-eq v0, p1, :cond_0

    .line 1036
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderZoomValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 1038
    const/16 v0, 0x70

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1040
    :cond_0
    return-void
.end method

.method public setCameraAutocontrast(I)V
    .locals 5
    .parameter "autocontrast"

    .prologue
    const-string v4, "pref_camera_autocontrast_key"

    .line 848
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_autocontrast_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutocontrast:I

    .line 849
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutocontrast:I

    if-eq v1, p1, :cond_0

    .line 850
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraAutocontrast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutocontrast:I

    .line 852
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 853
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_autocontrast_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutocontrast:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 854
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 856
    const/16 v1, 0xe

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 858
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraContrast(I)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 986
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    if-eq v0, p1, :cond_0

    .line 987
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    .line 989
    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 991
    :cond_0
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 766
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    if-eq v0, p1, :cond_0

    .line 767
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 769
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 771
    :cond_0
    return-void
.end method

.method public setCameraExposureValue(I)V
    .locals 3
    .parameter "exposurevalue"

    .prologue
    .line 663
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    if-eq v0, p1, :cond_0

    .line 664
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraExposureValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 666
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 668
    :cond_0
    return-void
.end method

.method public setCameraFlashMode(I)V
    .locals 5
    .parameter "flashMode"

    .prologue
    const-string v4, "pref_camera_flash_key"

    .line 646
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_flash_key"

    const/4 v2, 0x2

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    .line 647
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    if-eq v1, p1, :cond_0

    .line 648
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraFlashMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    .line 650
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 651
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_flash_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 652
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 654
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 656
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraQuality(I)V
    .locals 5
    .parameter "quality"

    .prologue
    const-string v4, "pref_camera_quality_key"

    .line 899
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_quality_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    .line 900
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    if-eq v1, p1, :cond_0

    .line 901
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraQuality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    .line 903
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 904
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_quality_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 905
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 907
    const/16 v1, 0x10

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 909
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraResolution(I)Z
    .locals 1
    .parameter "resolution"

    .prologue
    .line 746
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(IZ)Z

    move-result v0

    return v0
.end method

.method public setCameraResolution(IZ)Z
    .locals 5
    .parameter "resolution"
    .parameter "restartPreview"

    .prologue
    const-string v4, "pref_camera_resolution_key"

    .line 730
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 731
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    if-eq v1, p1, :cond_0

    .line 732
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraResolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 734
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 735
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_resolution_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 736
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 738
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleResolutionChanged(IZ)V

    .line 739
    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 740
    const/4 v1, 0x1

    .line 742
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCameraSaturation(I)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 998
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    if-eq v0, p1, :cond_0

    .line 999
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraSaturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    .line 1001
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1003
    :cond_0
    return-void
.end method

.method public setCameraSharpness(I)V
    .locals 3
    .parameter "sharpness"

    .prologue
    .line 1010
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    if-eq v0, p1, :cond_0

    .line 1011
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraSharpness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    .line 1013
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1015
    :cond_0
    return-void
.end method

.method public setCameraTimer(I)V
    .locals 3
    .parameter "timer"

    .prologue
    .line 713
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    if-eq v0, p1, :cond_0

    .line 714
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    .line 716
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 718
    :cond_0
    return-void
.end method

.method public setCameraWB(I)V
    .locals 3
    .parameter "whitebalance"

    .prologue
    .line 754
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    if-eq v0, p1, :cond_0

    .line 755
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraWB "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 757
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 759
    :cond_0
    return-void
.end method

.method public setCameraZoomValue(I)V
    .locals 3
    .parameter "zoomvalue"

    .prologue
    .line 1023
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    if-eq v0, p1, :cond_0

    .line 1024
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraZoomValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 1026
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1028
    :cond_0
    return-void
.end method

.method public setExposuremeter(I)V
    .locals 5
    .parameter "exposuremeter"

    .prologue
    const-string v4, "pref_camera_exposuremeter_key"

    .line 796
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_exposuremeter_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposuremeter:I

    .line 798
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposuremeter:I

    if-eq v1, p1, :cond_0

    .line 799
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExposuremeter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposuremeter:I

    .line 801
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 802
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_exposuremeter_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposuremeter:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 803
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 805
    const/16 v1, 0xb

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 807
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setFocusMode(I)V
    .locals 5
    .parameter "focusMode"

    .prologue
    const-string v4, "pref_camera_focus_key"

    .line 693
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_focus_key"

    const/4 v2, 0x1

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 694
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    if-eq v1, p1, :cond_0

    .line 695
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFocusMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 697
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 698
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_focus_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 699
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 701
    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 706
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setFrame(I)V
    .locals 0
    .parameter "frame"

    .prologue
    .line 1266
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrame:I

    .line 1267
    return-void
.end method

.method public setGps(I)V
    .locals 6
    .parameter "gps"

    .prologue
    const/16 v4, 0x14

    const-string v5, "pref_setup_gps_key"

    .line 950
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_gps_key"

    const/4 v2, 0x0

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGps:I

    .line 951
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGps:I

    if-eq v1, p1, :cond_0

    .line 952
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGps:I

    .line 954
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 955
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_gps_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGps:I

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 956
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 958
    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 962
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 960
    :cond_0
    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setGuideline(I)V
    .locals 5
    .parameter "guideline"

    .prologue
    const-string v4, "pref_setup_guideline_key"

    .line 916
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_guideline_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideline:I

    .line 917
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideline:I

    if-eq v1, p1, :cond_0

    .line 918
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGuideline "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideline:I

    .line 920
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 921
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_guideline_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideline:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 922
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 924
    const/16 v1, 0x13

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 926
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setISO(I)V
    .locals 5
    .parameter "iso"

    .prologue
    const-string v4, "pref_camera_iso_key"

    .line 778
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_iso_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    .line 780
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    if-eq v1, p1, :cond_0

    .line 781
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setISO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    .line 783
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 784
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_iso_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 785
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 787
    const/16 v1, 0xa

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 789
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setLock(Z)V
    .locals 5
    .parameter "lock"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1295
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    if-eq v1, v2, :cond_0

    .line 1296
    if-eqz p1, :cond_2

    move v1, v3

    :goto_1
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    .line 1298
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1299
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_lock_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1300
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1302
    const/16 v1, 0x22

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1304
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 1295
    goto :goto_0

    :cond_2
    move v1, v4

    .line 1296
    goto :goto_1
.end method

.method public setLockForResume(Z)V
    .locals 3
    .parameter "lock"

    .prologue
    .line 1308
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    .line 1310
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1311
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_lock_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1312
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1314
    const/16 v1, 0x22

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1316
    return-void

    .line 1308
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public setMainCameraSelected(Z)V
    .locals 0
    .parameter "mMainCameraSelected"

    .prologue
    .line 1761
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMainCameraSelected:Z

    .line 1762
    return-void
.end method

.method public setMaxVideoDurationInMs(I)V
    .locals 5
    .parameter "videoDuration"

    .prologue
    const-string v4, "pref_camera_video_duration_key"

    .line 554
    const-string v1, "pref_camera_video_duration_key"

    const/16 v1, 0x3c

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 555
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    if-eq v1, p1, :cond_0

    .line 556
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxVideoDurationInMs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 558
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 559
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_video_duration_key"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 560
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 562
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 592
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-eq v0, p1, :cond_0

    .line 593
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 595
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 597
    :cond_0
    return-void
.end method

.method public setMosaicFrame(I)V
    .locals 0
    .parameter "frame"

    .prologue
    .line 1274
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMosaic:I

    .line 1275
    return-void
.end method

.method public setNumberOfCsShotCaptured(I)V
    .locals 0
    .parameter "mNumberOfCsShotCaptured"

    .prologue
    .line 1745
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    .line 1746
    return-void
.end method

.method public setNumberOfCsShotSaved(I)V
    .locals 0
    .parameter "mNumberOfCsShotSaved"

    .prologue
    .line 1753
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotSaved:I

    .line 1754
    return-void
.end method

.method public setObjecttracking(I)V
    .locals 5
    .parameter "objecttracking"

    .prologue
    const-string v4, "pref_camera_objecttracking_key"

    .line 814
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_objecttracking_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObjecttracking:I

    .line 815
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObjecttracking:I

    if-eq v1, p1, :cond_0

    .line 816
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setObjecttracking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObjecttracking:I

    .line 818
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 819
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_objecttracking_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObjecttracking:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 820
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 822
    const/16 v1, 0xc

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 824
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setRecordingMode(I)V
    .locals 3
    .parameter "recordingMode"

    .prologue
    .line 1048
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-eq v0, p1, :cond_0

    .line 1049
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 1051
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetMaxVideoDuration(I)V

    .line 1052
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1054
    :cond_0
    return-void
.end method

.method public setReview(I)V
    .locals 5
    .parameter "review"

    .prologue
    const-string v4, "pref_setup_review_key"

    .line 933
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_review_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    .line 934
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    if-eq v1, p1, :cond_0

    .line 935
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReview "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    .line 937
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 938
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_review_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 939
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 941
    const/16 v1, 0x11

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 943
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSceneMode(I)V
    .locals 3
    .parameter "sceneMode"

    .prologue
    .line 626
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    if-eq v0, p1, :cond_0

    .line 627
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSceneMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 629
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 631
    :cond_0
    return-void
.end method

.method public setSceneModeforResume(I)V
    .locals 3
    .parameter "sceneMode"

    .prologue
    .line 635
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSceneMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 637
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 639
    return-void
.end method

.method public setShootingMode(I)V
    .locals 3
    .parameter "shootingMode"

    .prologue
    .line 604
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    if-eq v0, p1, :cond_0

    .line 605
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShootingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 607
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 608
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->handleShootingModeChanged(I)V

    .line 610
    :cond_0
    return-void
.end method

.method public setShootingModeforResume(I)V
    .locals 3
    .parameter "shootingMode"

    .prologue
    .line 614
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShootingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 616
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 617
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->handleShootingModeChanged(I)V

    .line 619
    return-void
.end method

.method public setShootingVintageMode(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1282
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    if-eq v0, p1, :cond_0

    .line 1283
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShootingVintageMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    .line 1285
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1287
    :cond_0
    return-void
.end method

.method public setShutterSound(I)V
    .locals 5
    .parameter "shuttersound"

    .prologue
    const-string v4, "pref_setup_shuttersound_key"

    .line 969
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_shuttersound_key"

    const/4 v2, 0x1

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    .line 970
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    if-eq v1, p1, :cond_0

    .line 971
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShutterSound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    .line 973
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 974
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_shuttersound_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 975
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 977
    const/16 v1, 0x15

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 979
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setStorage(I)V
    .locals 5
    .parameter "storage"

    .prologue
    const-string v4, "pref_setup_storage_key"

    .line 1176
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_storage_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    .line 1177
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    if-eq v1, p1, :cond_0

    .line 1178
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStorage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    .line 1180
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1181
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_storage_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1184
    const/16 v1, 0x16

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1185
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setDefaultStorageStatus()V

    .line 1186
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateRemainStorageIndicator()V

    .line 1193
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
