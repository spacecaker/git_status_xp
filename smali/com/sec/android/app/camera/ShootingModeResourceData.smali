.class public Lcom/sec/android/app/camera/ShootingModeResourceData;
.super Lcom/sec/android/app/camera/MenuResourceBase;
.source "ShootingModeResourceData.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 4
    .parameter "activityContext"

    .prologue
    const/16 v3, 0x8

    .line 25
    invoke-direct {p0}, Lcom/sec/android/app/camera/MenuResourceBase;-><init>()V

    .line 26
    const v0, 0x7f0700b1

    iput v0, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mTextTitle:I

    .line 28
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    return-void

    .line 28
    nop

    :array_0
    .array-data 0x4
        0x3ct 0x3t 0x2t 0x7ft
        0x3dt 0x3t 0x2t 0x7ft
        0x3bt 0x3t 0x2t 0x7ft
        0x6ct 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 42
    :array_1
    .array-data 0x4
        0x3ft 0x3t 0x2t 0x7ft
        0x40t 0x3t 0x2t 0x7ft
        0x3et 0x3t 0x2t 0x7ft
        0x6dt 0x0t 0x7t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_2
    .array-data 0x4
        0x33t 0x3t 0x2t 0x7ft
        0x34t 0x3t 0x2t 0x7ft
        0x32t 0x3t 0x2t 0x7ft
        0x67t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 51
    :array_3
    .array-data 0x4
        0x36t 0x3t 0x2t 0x7ft
        0x37t 0x3t 0x2t 0x7ft
        0x35t 0x3t 0x2t 0x7ft
        0x6at 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
