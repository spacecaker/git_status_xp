.class public Lcom/sec/android/app/camera/ShutterSoundResourceData;
.super Lcom/sec/android/app/camera/MenuResourceBase;
.source "ShutterSoundResourceData.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 28
    invoke-direct {p0}, Lcom/sec/android/app/camera/MenuResourceBase;-><init>()V

    .line 29
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, code:Ljava/lang/String;
    const v1, 0x7f0700b2

    iput v1, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mTextTitle:I

    .line 32
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v1, "OPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    nop

    :array_0
    .array-data 0x4
        0x24t 0x2t 0x2t 0x7ft
        0x25t 0x2t 0x2t 0x7ft
        0x23t 0x2t 0x2t 0x7ft
        0x70t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 36
    :array_1
    .array-data 0x4
        0x27t 0x2t 0x2t 0x7ft
        0x28t 0x2t 0x2t 0x7ft
        0x26t 0x2t 0x2t 0x7ft
        0x71t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 40
    :array_2
    .array-data 0x4
        0x2at 0x2t 0x2t 0x7ft
        0x2bt 0x2t 0x2t 0x7ft
        0x29t 0x2t 0x2t 0x7ft
        0x72t 0x0t 0x7t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 47
    :array_3
    .array-data 0x4
        0x21t 0x2t 0x2t 0x7ft
        0x22t 0x2t 0x2t 0x7ft
        0x20t 0x2t 0x2t 0x7ft
        0x31t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
