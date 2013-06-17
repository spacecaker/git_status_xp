.class Lcom/sec/android/app/camera/MenuDimController$DimArray;
.super Ljava/lang/Object;
.source "MenuDimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/MenuDimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimArray"
.end annotation


# instance fields
.field private mChangeArray:[Z

.field private mDimArray:[Z

.field private final mMenuId:I

.field final synthetic this$0:Lcom/sec/android/app/camera/MenuDimController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/MenuDimController;I)V
    .locals 4
    .parameter
    .parameter "menuId"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x23

    .line 118
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    .line 116
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    .line 119
    iput p2, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mMenuId:I

    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 121
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    aput-boolean v3, v1, v0

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aput-boolean v3, v1, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/MenuDimController$DimArray;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    return-object v0
.end method


# virtual methods
.method public getArray()[Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    return-object v0
.end method

.method public getMenuId()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mMenuId:I

    return v0
.end method

.method public getSavedSettingValue(I)I
    .locals 4
    .parameter "menuid"

    .prologue
    .line 276
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    .line 278
    .local v0, dimReference:Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getReferenceCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v1

    .line 281
    .local v1, settingValue:I
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v1

    .line 287
    .end local v1           #settingValue:I
    :goto_0
    return v2

    .line 284
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->decreaseReferenceCount()V

    .line 287
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public restoreUserSettingValues()Z
    .locals 11

    .prologue
    const/16 v10, 0x74

    const/16 v9, 0x73

    const/16 v8, 0x1a

    const/16 v7, 0x19

    const/4 v6, -0x1

    .line 291
    const/4 v2, 0x0

    .line 293
    .local v2, resolutionChanged:Z
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 295
    .local v0, cs:Lcom/sec/android/app/camera/CameraSettings;
    const/4 v1, 0x0

    .local v1, key:I
    :goto_0
    const/16 v4, 0x23

    if-ge v1, v4, :cond_3

    .line 296
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aget-boolean v4, v4, v1

    if-nez v4, :cond_1

    .line 295
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_1
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 302
    :pswitch_1
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 303
    .local v3, savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    goto :goto_1

    .line 306
    .end local v3           #savedValue:I
    :pswitch_2
    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 307
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutocontrast(I)V

    goto :goto_1

    .line 310
    .end local v3           #savedValue:I
    :pswitch_3
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 311
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    goto :goto_1

    .line 314
    .end local v3           #savedValue:I
    :pswitch_4
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 315
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    goto :goto_1

    .line 318
    .end local v3           #savedValue:I
    :pswitch_5
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 319
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto :goto_1

    .line 322
    .end local v3           #savedValue:I
    :pswitch_6
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 323
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    goto :goto_1

    .line 326
    .end local v3           #savedValue:I
    :pswitch_7
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 327
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto :goto_1

    .line 330
    .end local v3           #savedValue:I
    :pswitch_8
    const/16 v4, 0x12

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 331
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto :goto_1

    .line 334
    .end local v3           #savedValue:I
    :pswitch_9
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 335
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_1

    .line 339
    .end local v3           #savedValue:I
    :pswitch_a
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 340
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto :goto_1

    .line 344
    .end local v3           #savedValue:I
    :pswitch_b
    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 345
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    .line 346
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 347
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    .line 348
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 349
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 354
    .end local v3           #savedValue:I
    :pswitch_c
    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 355
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    goto/16 :goto_1

    .line 358
    .end local v3           #savedValue:I
    :pswitch_d
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 359
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setObjecttracking(I)V

    goto/16 :goto_1

    .line 362
    .end local v3           #savedValue:I
    :pswitch_e
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 363
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    goto/16 :goto_1

    .line 366
    .end local v3           #savedValue:I
    :pswitch_f
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 367
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    .line 368
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(IZ)Z

    .line 369
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 373
    .end local v3           #savedValue:I
    :pswitch_10
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 374
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraWB(I)V

    goto/16 :goto_1

    .line 377
    .end local v3           #savedValue:I
    :pswitch_11
    const/16 v4, 0xf

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 378
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setBlinkdetection(I)V

    goto/16 :goto_1

    .line 381
    .end local v3           #savedValue:I
    :pswitch_12
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 382
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraTimer(I)V

    goto/16 :goto_1

    .line 385
    .end local v3           #savedValue:I
    :pswitch_13
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 386
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    goto/16 :goto_1

    .line 389
    .end local v3           #savedValue:I
    :pswitch_14
    const/16 v4, 0x13

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 390
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    goto/16 :goto_1

    .line 393
    .end local v3           #savedValue:I
    :pswitch_15
    const/16 v4, 0x65

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 394
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setRecordingMode(I)V

    goto/16 :goto_1

    .line 397
    .end local v3           #savedValue:I
    :pswitch_16
    const/16 v4, 0x6d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 398
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderExposureValue(I)V

    goto/16 :goto_1

    .line 401
    .end local v3           #savedValue:I
    :pswitch_17
    const/16 v4, 0x68

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 402
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    .line 403
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 404
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 408
    .end local v3           #savedValue:I
    :pswitch_18
    const/16 v4, 0x6c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 409
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    goto/16 :goto_1

    .line 412
    .end local v3           #savedValue:I
    :pswitch_19
    const/16 v4, 0x6b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 413
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderWB(I)V

    goto/16 :goto_1

    .line 416
    .end local v3           #savedValue:I
    :pswitch_1a
    const/16 v4, 0x72

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 417
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    .line 418
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderContrast(I)V

    .line 419
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSharpness(I)V

    .line 420
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSaturation(I)V

    .line 421
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 426
    .end local v3           #savedValue:I
    :pswitch_1b
    const/16 v4, 0x77

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 427
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderReview(I)V

    goto/16 :goto_1

    .line 430
    .end local v3           #savedValue:I
    :pswitch_1c
    const/16 v4, 0x15

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 431
    .restart local v3       #savedValue:I
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v4

    if-eqz v4, :cond_2

    .line 432
    if-eq v3, v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setShutterSound(I)V

    goto/16 :goto_1

    .line 434
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setShutterSound(I)V

    goto/16 :goto_1

    .line 440
    .end local v3           #savedValue:I
    :cond_3
    return v2

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_5
    .end packed-switch
.end method

.method public saveSetting(II)Z
    .locals 5
    .parameter "menuid"
    .parameter "value"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    .line 147
    .local v0, dimReference:Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    if-nez v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-direct {v3, v4, p2}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/4 v1, 0x1

    .line 152
    :goto_0
    return v1

    .line 151
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->increaseReferenceCount()V

    .line 152
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set(IZ)V
    .locals 6
    .parameter "index"
    .parameter "dimmed"

    .prologue
    const/4 v2, 0x1

    .line 157
    if-ltz p1, :cond_1

    const/16 v1, 0x23

    if-ge p1, v1, :cond_1

    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    .line 265
    :cond_0
    :goto_1
    return-void

    .line 157
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 163
    .local v0, cs:Lcom/sec/android/app/camera/CameraSettings;
    if-eqz p2, :cond_0

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    aput-boolean p2, v1, p1

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aput-boolean p2, v1, p1

    .line 167
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 169
    :pswitch_1
    const/16 v1, 0xd

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAntishake()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 172
    :pswitch_2
    const/16 v1, 0xe

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutocontrast()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 175
    :pswitch_3
    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 178
    :pswitch_4
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 181
    :pswitch_5
    const/16 v1, 0xa

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getISO()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 184
    :pswitch_6
    const/16 v1, 0x8

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 187
    :pswitch_7
    const/16 v1, 0x10

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 190
    :pswitch_8
    const/16 v1, 0x12

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 193
    :pswitch_9
    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 197
    :pswitch_a
    const/4 v1, 0x5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 201
    :pswitch_b
    const/16 v1, 0x18

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraContrast()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSharpness()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSaturation()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 209
    :pswitch_c
    const/16 v1, 0xb

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeter()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 212
    :pswitch_d
    const/16 v1, 0xc

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getObjecttracking()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 215
    :pswitch_e
    const/4 v1, 0x7

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 218
    :pswitch_f
    const/4 v1, 0x4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 221
    :pswitch_10
    const/16 v1, 0x9

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraWB()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 224
    :pswitch_11
    const/16 v1, 0xf

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBlinkdetection()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 227
    :pswitch_12
    const/4 v1, 0x6

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraTimer()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 230
    :pswitch_13
    const/16 v1, 0x11

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 233
    :pswitch_14
    const/16 v1, 0x16

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 236
    :pswitch_15
    const/16 v1, 0x13

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 239
    :pswitch_16
    const/16 v1, 0x65

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 242
    :pswitch_17
    const/16 v1, 0x6d

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 245
    :pswitch_18
    const/16 v1, 0x68

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 248
    :pswitch_19
    const/16 v1, 0x6c

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEffect()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 251
    :pswitch_1a
    const/16 v1, 0x6b

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderWB()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 254
    :pswitch_1b
    const/16 v1, 0x72

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderContrast()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    const/16 v2, 0x74

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSharpness()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    const/16 v2, 0x73

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSaturation()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 262
    :pswitch_1c
    const/16 v1, 0x77

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderReview()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public varargs setDimMulti([I)V
    .locals 5
    .parameter "indices"

    .prologue
    .line 268
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 269
    .local v2, index:I
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    .end local v2           #index:I
    :cond_0
    return-void
.end method
