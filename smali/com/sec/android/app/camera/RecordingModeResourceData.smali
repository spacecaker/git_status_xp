.class public Lcom/sec/android/app/camera/RecordingModeResourceData;
.super Lcom/sec/android/app/camera/MenuResourceBase;
.source "RecordingModeResourceData.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 24
    invoke-direct {p0}, Lcom/sec/android/app/camera/MenuResourceBase;-><init>()V

    .line 25
    const v0, 0x7f0700aa

    iput v0, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mTextTitle:I

    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-void

    .line 27
    nop

    :array_0
    .array-data 0x4
        0x6ct 0x0t 0x2t 0x7ft
        0x6dt 0x0t 0x2t 0x7ft
        0x6bt 0x0t 0x2t 0x7ft
        0x2dt 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 30
    :array_1
    .array-data 0x4
        0x69t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
