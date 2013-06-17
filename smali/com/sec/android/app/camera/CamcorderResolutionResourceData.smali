.class public Lcom/sec/android/app/camera/CamcorderResolutionResourceData;
.super Lcom/sec/android/app/camera/MenuResourceBase;
.source "CamcorderResolutionResourceData.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const-string v4, "320x240"

    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/camera/MenuResourceBase;-><init>()V

    .line 27
    const v0, 0x7f0700ad

    iput v0, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mTextTitle:I

    .line 29
    const-string v0, "320x240"

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    const-string v0, "320x240"

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v0

    if-ltz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_1
    const-string v0, "320x240"

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v0

    if-ltz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void

    .line 32
    nop

    :array_0
    .array-data 0x4
        0x64t 0x3t 0x2t 0x7ft
        0x65t 0x3t 0x2t 0x7ft
        0x63t 0x3t 0x2t 0x7ft
        0x38t 0x0t 0x7t 0x7ft
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 40
    :array_1
    .array-data 0x4
        0x70t 0x3t 0x2t 0x7ft
        0x71t 0x3t 0x2t 0x7ft
        0x6ft 0x3t 0x2t 0x7ft
        0x44t 0x0t 0x7t 0x7ft
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 48
    :array_2
    .array-data 0x4
        0x6dt 0x3t 0x2t 0x7ft
        0x6et 0x3t 0x2t 0x7ft
        0x6ct 0x3t 0x2t 0x7ft
        0x43t 0x0t 0x7t 0x7ft
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 53
    :array_3
    .array-data 0x4
        0x6at 0x3t 0x2t 0x7ft
        0x6bt 0x3t 0x2t 0x7ft
        0x69t 0x3t 0x2t 0x7ft
        0x41t 0x0t 0x7t 0x7ft
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 56
    :array_4
    .array-data 0x4
        0x67t 0x3t 0x2t 0x7ft
        0x68t 0x3t 0x2t 0x7ft
        0x66t 0x3t 0x2t 0x7ft
        0x3ct 0x0t 0x7t 0x7ft
        0xdt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
