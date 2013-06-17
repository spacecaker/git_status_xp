.class public Lcom/sec/android/app/camera/CheckMemory;
.super Ljava/lang/Object;
.source "CheckMemory.java"


# static fields
.field private static NUM_OF_QUALITIES:I

.field private static NUM_OF_RESOLUTIONS:I

.field private static QUALITY_INDEX:I

.field private static RESOLUTION_INDEX:I

.field private static SIZE_INDEX:I

.field private static mImageSizeList:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 36
    const/16 v0, 0x21

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v7

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    .line 71
    sput v7, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_RESOLUTIONS:I

    .line 72
    sput v3, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    .line 73
    sput v4, Lcom/sec/android/app/camera/CheckMemory;->RESOLUTION_INDEX:I

    .line 74
    sput v5, Lcom/sec/android/app/camera/CheckMemory;->QUALITY_INDEX:I

    .line 75
    sput v6, Lcom/sec/android/app/camera/CheckMemory;->SIZE_INDEX:I

    return-void

    .line 36
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x14t 0x5t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb0t 0x4t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x3t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x66t 0x2t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xcdt 0x1t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x8at 0x2t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x26t 0x2t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
    .end array-data

    :array_16
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
    .end array-data

    :array_1a
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data

    :array_1c
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    :array_1d
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data

    :array_1e
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    :array_1f
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data

    :array_20
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableStorage(I)J
    .locals 7
    .parameter "storage"

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, storageDirectory:Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 114
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    :goto_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, stat:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    const-wide/32 v5, 0xa00000

    sub-long/2addr v3, v5

    .line 126
    .end local v1           #stat:Landroid/os/StatFs;
    :goto_1
    return-wide v3

    .line 117
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 122
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 126
    .local v0, ex:Ljava/lang/RuntimeException;
    const-wide/16 v3, -0x2

    goto :goto_1
.end method

.method public static getMaxSizeOfImage(II)J
    .locals 6
    .parameter "resolution"
    .parameter "quality"

    .prologue
    .line 138
    const-wide/16 v2, 0x0

    .line 140
    .local v2, nMaxSize:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v4, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_RESOLUTIONS:I

    if-ge v0, v4, :cond_2

    .line 141
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    sget v4, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    if-ge v1, v4, :cond_0

    .line 142
    sget-object v4, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->RESOLUTION_INDEX:I

    aget v4, v4, v5

    if-ne v4, p0, :cond_1

    sget-object v4, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->QUALITY_INDEX:I

    aget v4, v4, v5

    if-ne v4, p1, :cond_1

    .line 144
    sget-object v4, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->SIZE_INDEX:I

    aget v4, v4, v5

    int-to-long v2, v4

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    .end local v1           #j:I
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 154
    const-string v4, "CheckMemory"

    const-string v5, "Resolution or Quality setting maybe wrong"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-wide/32 v4, 0x100000

    .line 157
    :goto_2
    return-wide v4

    :cond_3
    const-wide/16 v4, 0x400

    mul-long/2addr v4, v2

    goto :goto_2
.end method

.method public static getRemainCount(III)I
    .locals 7
    .parameter "storage"
    .parameter "resolution"
    .parameter "quality"

    .prologue
    const/4 v6, -0x1

    .line 78
    invoke-static {p0}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v1

    .line 80
    .local v1, lAvailableStorage:J
    const-wide/16 v4, -0x2

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    .line 81
    const/4 v3, 0x0

    .line 83
    .local v3, nRemainCount:I
    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/CheckMemory;->getMaxSizeOfImage(II)J

    move-result-wide v4

    div-long v4, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v3, v4

    move v4, v3

    .line 89
    .end local v3           #nRemainCount:I
    :goto_0
    return v4

    .line 85
    .restart local v3       #nRemainCount:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, ex:Ljava/lang/Exception;
    move v4, v6

    .line 86
    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #nRemainCount:I
    :cond_0
    move v4, v6

    .line 89
    goto :goto_0
.end method

.method public static getRemainTime(II)I
    .locals 7
    .parameter "storage"
    .parameter "bitrate"

    .prologue
    const/4 v6, -0x1

    .line 93
    invoke-static {p0}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v1

    .line 95
    .local v1, lAvailableStorage:J
    const-wide/16 v4, -0x2

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    .line 96
    const/4 v3, 0x0

    .line 98
    .local v3, nRemainTime:I
    int-to-long v4, p1

    :try_start_0
    div-long v4, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v3, v4

    move v4, v3

    .line 104
    .end local v3           #nRemainTime:I
    :goto_0
    return v4

    .line 100
    .restart local v3       #nRemainTime:I
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    move v4, v6

    .line 101
    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #nRemainTime:I
    :cond_0
    move v4, v6

    .line 104
    goto :goto_0
.end method

.method public static isStorageMounted()Z
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
