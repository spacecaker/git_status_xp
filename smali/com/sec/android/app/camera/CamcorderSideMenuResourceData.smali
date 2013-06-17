.class public Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;
.super Ljava/lang/Object;
.source "CamcorderSideMenuResourceData.java"


# static fields
.field private static mSideMenuResource:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/SideMenuResourceBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const v8, 0x7f020108

    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_4

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    const/16 v3, 0xd

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    const/16 v3, 0x1f

    new-array v3, v3, [I

    aput v8, v3, v7

    const v4, 0x7f020109

    aput v4, v3, v9

    const v4, 0x7f020107

    aput v4, v3, v10

    const/4 v4, 0x3

    const-string v5, "2560x1920"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v7}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v5

    if-ltz v5, :cond_0

    const v5, 0x7f07009e

    :goto_0
    aput v5, v3, v4

    const/4 v4, -0x4

    aput v4, v3, v6

    const/4 v4, 0x5

    const v5, 0x7f0200fc

    aput v5, v3, v4

    const/4 v4, 0x6

    const v5, 0x7f0200fd

    aput v5, v3, v4

    const/4 v4, 0x7

    const/4 v5, -0x3

    aput v5, v3, v4

    const/16 v4, 0x8

    const v5, 0x7f0200ff

    aput v5, v3, v4

    const/16 v4, 0x9

    const v5, 0x7f0200ff

    aput v5, v3, v4

    const/16 v4, 0xa

    const/4 v5, -0x2

    aput v5, v3, v4

    const/16 v4, 0xb

    const v5, 0x7f020102

    aput v5, v3, v4

    const/16 v4, 0xc

    const v5, 0x7f020102

    aput v5, v3, v4

    const/16 v4, 0xd

    const/4 v5, -0x1

    aput v5, v3, v4

    const/16 v4, 0xe

    const v5, 0x7f020105

    aput v5, v3, v4

    const/16 v4, 0xf

    const v5, 0x7f020105

    aput v5, v3, v4

    const/16 v4, 0x10

    aput v7, v3, v4

    const/16 v4, 0x11

    aput v8, v3, v4

    const/16 v4, 0x12

    aput v8, v3, v4

    const/16 v4, 0x13

    aput v9, v3, v4

    const/16 v4, 0x14

    const v5, 0x7f02010b

    aput v5, v3, v4

    const/16 v4, 0x15

    const v5, 0x7f02010b

    aput v5, v3, v4

    const/16 v4, 0x16

    aput v10, v3, v4

    const/16 v4, 0x17

    const v5, 0x7f02010e

    aput v5, v3, v4

    const/16 v4, 0x18

    const v5, 0x7f02010e

    aput v5, v3, v4

    const/16 v4, 0x19

    const/4 v5, 0x3

    aput v5, v3, v4

    const/16 v4, 0x1a

    const v5, 0x7f020111

    aput v5, v3, v4

    const/16 v4, 0x1b

    const v5, 0x7f020111

    aput v5, v3, v4

    const/16 v4, 0x1c

    aput v6, v3, v4

    const/16 v4, 0x1d

    const v5, 0x7f020114

    aput v5, v3, v4

    const/16 v4, 0x1e

    const v5, 0x7f020114

    aput v5, v3, v4

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_6

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_7

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void

    .line 101
    :cond_0
    const v5, 0x7f07009e

    goto/16 :goto_0

    .line 28
    :array_0
    .array-data 0x4
        0xdat 0x0t 0x2t 0x7ft
        0xdbt 0x0t 0x2t 0x7ft
        0xd9t 0x0t 0x2t 0x7ft
        0xaet 0x0t 0x7t 0x7ft
    .end array-data

    .line 34
    :array_1
    .array-data 0x4
        0xa1t 0x2t 0x2t 0x7ft
        0xa2t 0x2t 0x2t 0x7ft
        0x9dt 0x2t 0x2t 0x7ft
        0x9ft 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0xa1t 0x2t 0x2t 0x7ft
        0xa2t 0x2t 0x2t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x9et 0x2t 0x2t 0x7ft
        0x9ft 0x2t 0x2t 0x7ft
    .end array-data

    .line 46
    :array_2
    .array-data 0x4
        0xbet 0x2t 0x2t 0x7ft
        0xc5t 0x2t 0x2t 0x7ft
        0xact 0x2t 0x2t 0x7ft
        0x90t 0x0t 0x7t 0x7ft
    .end array-data

    .line 52
    :array_3
    .array-data 0x4
        0xect 0x2t 0x2t 0x7ft
        0xedt 0x2t 0x2t 0x7ft
        0xebt 0x2t 0x2t 0x7ft
        0x12t 0x0t 0x7t 0x7ft
    .end array-data

    .line 58
    :array_4
    .array-data 0x4
        0xd7t 0x0t 0x2t 0x7ft
        0xd8t 0x0t 0x2t 0x7ft
        0xd6t 0x0t 0x2t 0x7ft
        0xaft 0x0t 0x7t 0x7ft
    .end array-data

    .line 65
    :array_5
    .array-data 0x4
        0x33t 0x2t 0x2t 0x7ft
        0x34t 0x2t 0x2t 0x7ft
        0x32t 0x2t 0x2t 0x7ft
        0x9ct 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x30t 0x2t 0x2t 0x7ft
        0x31t 0x2t 0x2t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x33t 0x2t 0x2t 0x7ft
        0x34t 0x2t 0x2t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x2t 0x2t 0x7ft
        0x2et 0x2t 0x2t 0x7ft
    .end array-data

    .line 137
    :array_6
    .array-data 0x4
        0x9bt 0x2t 0x2t 0x7ft
        0x9ct 0x2t 0x2t 0x7ft
        0x9at 0x2t 0x2t 0x7ft
        0xb0t 0x0t 0x7t 0x7ft
    .end array-data

    .line 144
    :array_7
    .array-data 0x4
        0xb0t 0x1t 0x2t 0x7ft
        0xb1t 0x1t 0x2t 0x7ft
        0xaft 0x1t 0x2t 0x7ft
        0xb0t 0x0t 0x7t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getResource()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/SideMenuResourceBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    return-object v0
.end method
