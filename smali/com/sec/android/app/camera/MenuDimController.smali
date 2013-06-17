.class public Lcom/sec/android/app/camera/MenuDimController;
.super Ljava/lang/Object;
.source "MenuDimController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuDimController$DimArray;,
        Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    }
.end annotation


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mButtonList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/widget/TwImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDimArray:[Z

.field private mDimArrayList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$DimArray;",
            ">;"
        }
    .end annotation
.end field

.field private mUserSettingValueList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 1
    .parameter "activityContext"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/16 v0, 0x23

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/HashMap;

    .line 78
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method private merge([Z)V
    .locals 4
    .parameter "array"

    .prologue
    .line 695
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v2, v2, v0

    aget-boolean v3, p1, v0

    or-int/2addr v2, v3

    aput-boolean v2, v1, v0

    .line 695
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    :cond_0
    return-void
.end method

.method private setDimmed(IZ)V
    .locals 3
    .parameter "key"
    .parameter "dimmed"

    .prologue
    .line 475
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 476
    .local v0, button:Lcom/sec/android/app/camera/widget/TwImageButton;
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aput-boolean p2, v1, p1

    .line 480
    return-void
.end method


# virtual methods
.method public addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V
    .locals 2
    .parameter "key"
    .parameter "button"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 447
    return-void
.end method

.method public processDim()V
    .locals 3

    .prologue
    .line 682
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x23

    if-ge v0, v2, :cond_0

    .line 683
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/MenuDimController;->setDimmed(IZ)V

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 687
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 688
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getArray()[Z

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/MenuDimController;->merge([Z)V

    goto :goto_1

    .line 691
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 692
    return-void
.end method

.method public refreshButtonDim(II)Z
    .locals 11
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x7

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 500
    const-string v3, "MenuDimController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshButtonDim: menuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " modeid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v2, 0x0

    .line 503
    .local v2, resolutionChanged:Z
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 504
    .local v0, cs:Lcom/sec/android/app/camera/CameraSettings;
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .line 506
    .local v1, dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues()Z

    move-result v2

    .line 508
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getMenuId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string v3, "MenuDimController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoring user setting values. resolutionChanged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_2

    const-string v5, "true"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .end local v1           #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    .line 513
    .restart local v1       #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    sparse-switch p1, :sswitch_data_0

    .line 674
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->processDim()V

    .line 678
    return v2

    .line 509
    :cond_2
    const-string v5, "false"

    goto :goto_0

    .line 515
    :sswitch_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 517
    :pswitch_1
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 518
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 520
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v3

    if-le v3, v6, :cond_3

    .line 521
    const/16 v3, 0x15

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    .line 522
    #getter for: Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->access$200(Lcom/sec/android/app/camera/MenuDimController$DimArray;)[Z

    move-result-object v3

    const/16 v4, 0x21

    aput-boolean v6, v3, v4

    .line 523
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setShutterSound(I)V

    .line 526
    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v3

    if-ne v3, v8, :cond_1

    .line 527
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto :goto_1

    .line 531
    :pswitch_2
    const/16 v3, 0xd

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 533
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 535
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto :goto_1

    .line 538
    :pswitch_3
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 540
    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 543
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 547
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutocontrast(I)V

    goto :goto_1

    .line 550
    :pswitch_4
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 552
    new-array v3, v9, [I

    fill-array-data v3, :array_7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 553
    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 556
    :pswitch_5
    new-array v3, v9, [I

    fill-array-data v3, :array_8

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 558
    new-array v3, v9, [I

    fill-array-data v3, :array_9

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 561
    :pswitch_6
    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 563
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 565
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 568
    :pswitch_7
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 570
    new-array v3, v10, [I

    fill-array-data v3, :array_d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 572
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 576
    :pswitch_8
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_e

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 578
    new-array v3, v10, [I

    fill-array-data v3, :array_f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 580
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 584
    :pswitch_9
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_10

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 586
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_11

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 588
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 591
    :pswitch_a
    const/16 v3, 0x10

    new-array v3, v3, [I

    fill-array-data v3, :array_12

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 594
    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_13

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 597
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 598
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_1

    .line 603
    :sswitch_1
    if-eqz p2, :cond_1

    .line 604
    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_14

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 605
    new-array v3, v9, [I

    fill-array-data v3, :array_15

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 606
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 611
    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_5

    .line 612
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 613
    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 614
    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    .line 615
    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    .line 616
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    .line 617
    :cond_7
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    if-ne v3, v10, :cond_8

    .line 618
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    .line 619
    :cond_8
    const/16 v3, 0xb

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterFromSceneMode(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyUIChange(II)V

    .line 620
    const/16 v3, 0x9

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalanceFromSceneMode(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyUIChange(II)V

    .line 621
    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/CameraSettings;->getISOFromSceneMode(I)I

    move-result v3

    invoke-virtual {v0, v10, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyUIChange(II)V

    .line 622
    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/CameraSettings;->getEVFromSceneMode(I)I

    move-result v3

    invoke-virtual {v0, v9, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyUIChange(II)V

    .line 623
    new-array v3, v6, [I

    aput v10, v3, v7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 627
    :sswitch_2
    if-ne p2, v6, :cond_1

    .line 628
    new-array v3, v6, [I

    const/16 v4, 0xf

    aput v4, v3, v7

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 629
    new-array v3, v6, [I

    const/16 v4, 0xf

    aput v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 633
    :sswitch_3
    if-ne p2, v6, :cond_1

    .line 634
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_16

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 635
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_17

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 639
    :sswitch_4
    if-eqz p2, :cond_1

    .line 640
    new-array v3, v6, [I

    const/16 v4, 0x1c

    aput v4, v3, v7

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 641
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_1

    .line 645
    :sswitch_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 646
    new-array v3, v6, [I

    const/16 v4, 0x15

    aput v4, v3, v7

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    .line 650
    :sswitch_6
    if-ne p2, v6, :cond_a

    .line 651
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v3

    if-nez v3, :cond_9

    .line 652
    new-array v3, v8, [I

    fill-array-data v3, :array_18

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 653
    new-array v3, v6, [I

    const/16 v4, 0x14

    aput v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 655
    :cond_9
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_19

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 656
    new-array v3, v6, [I

    const/16 v4, 0x20

    aput v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 658
    :cond_a
    const/4 v3, 0x2

    if-ne p2, v3, :cond_b

    .line 659
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_1a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 661
    new-array v3, v8, [I

    fill-array-data v3, :array_1b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 665
    :cond_b
    new-array v3, v6, [I

    const/16 v4, 0x1a

    aput v4, v3, v7

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    .line 669
    :sswitch_7
    if-nez p2, :cond_1

    .line 670
    new-array v3, v6, [I

    const/16 v4, 0x17

    aput v4, v3, v7

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    .line 513
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xd -> :sswitch_2
        0xe -> :sswitch_3
        0x16 -> :sswitch_5
        0x1d -> :sswitch_7
        0x65 -> :sswitch_4
    .end sparse-switch

    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 517
    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 518
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 531
    :array_2
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 533
    :array_3
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 538
    :array_4
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 540
    :array_5
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 550
    :array_6
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 552
    :array_7
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 556
    :array_8
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 558
    :array_9
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 561
    :array_a
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 563
    :array_b
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 568
    :array_c
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 570
    :array_d
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 576
    :array_e
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 578
    :array_f
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 584
    :array_10
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 586
    :array_11
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 591
    :array_12
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 594
    :array_13
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 604
    :array_14
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 605
    :array_15
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 634
    :array_16
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 635
    :array_17
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 652
    :array_18
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 655
    :array_19
    .array-data 0x4
        0x18t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    .line 659
    :array_1a
    .array-data 0x4
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    .line 661
    :array_1b
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public resetDim()V
    .locals 2

    .prologue
    .line 466
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 467
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 469
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    .line 470
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->setDimmed(IZ)V

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    :cond_0
    return-void
.end method

.method public restoreUserSettingValues()V
    .locals 2

    .prologue
    .line 483
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 484
    .local v0, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues()Z

    goto :goto_0

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 488
    return-void
.end method

.method public varargs setSettingDefault([I)V
    .locals 9
    .parameter "indices"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 702
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    .line 704
    .local v1, cs:Lcom/sec/android/app/camera/CameraSettings;
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    .line 705
    .local v3, index:I
    packed-switch v3, :pswitch_data_0

    .line 704
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 707
    :pswitch_1
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    goto :goto_1

    .line 715
    :pswitch_2
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    goto :goto_1

    .line 719
    :pswitch_3
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto :goto_1

    .line 723
    :pswitch_4
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    goto :goto_1

    .line 726
    :pswitch_5
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setBlinkdetection(I)V

    goto :goto_1

    .line 734
    :pswitch_6
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 735
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 736
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    goto :goto_1

    .line 739
    :pswitch_7
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    goto :goto_1

    .line 742
    :pswitch_8
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto :goto_1

    .line 745
    :pswitch_9
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraWB(I)V

    goto :goto_1

    .line 748
    :pswitch_a
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraTimer(I)V

    goto :goto_1

    .line 751
    :pswitch_b
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    goto :goto_1

    .line 754
    :pswitch_c
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    goto :goto_1

    .line 757
    :pswitch_d
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setRecordingMode(I)V

    goto :goto_1

    .line 760
    :pswitch_e
    const/16 v5, 0xd

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_1

    .line 763
    :pswitch_f
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderReview(I)V

    goto :goto_1

    .line 766
    :pswitch_10
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    goto :goto_1

    .line 773
    .end local v3           #index:I
    :cond_0
    return-void

    .line 705
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method

.method public synchronizeDim()V
    .locals 3

    .prologue
    .line 491
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x23

    if-ge v0, v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwImageButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 491
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_1
    return-void
.end method
