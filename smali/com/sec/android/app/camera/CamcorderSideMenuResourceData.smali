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
    .locals 8

    .prologue
    const/16 v7, 0x6d

    const/16 v6, 0x1f

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v4, [I

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

    new-array v3, v4, [I

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_4

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "2048x1536"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v5}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 104
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_5

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :goto_0
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_6

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_7

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void

    .line 138
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_8

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    :array_0
    .array-data 0x4
        0xd5t 0x0t 0x2t 0x7ft
        0xd6t 0x0t 0x2t 0x7ft
        0xd4t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x7t 0x7ft
    .end array-data

    .line 34
    :array_1
    .array-data 0x4
        0xbdt 0x2t 0x2t 0x7ft
        0xbet 0x2t 0x2t 0x7ft
        0xb9t 0x2t 0x2t 0x7ft
        0xaat 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0xbdt 0x2t 0x2t 0x7ft
        0xbet 0x2t 0x2t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0xbat 0x2t 0x2t 0x7ft
        0xbbt 0x2t 0x2t 0x7ft
    .end array-data

    .line 46
    :array_2
    .array-data 0x4
        0xdat 0x2t 0x2t 0x7ft
        0xe1t 0x2t 0x2t 0x7ft
        0xc8t 0x2t 0x2t 0x7ft
        0xaft 0x0t 0x7t 0x7ft
    .end array-data

    .line 52
    :array_3
    .array-data 0x4
        0x9t 0x3t 0x2t 0x7ft
        0xat 0x3t 0x2t 0x7ft
        0x8t 0x3t 0x2t 0x7ft
        0x10t 0x1t 0x7t 0x7ft
    .end array-data

    .line 58
    :array_4
    .array-data 0x4
        0xd2t 0x0t 0x2t 0x7ft
        0xd3t 0x0t 0x2t 0x7ft
        0xd1t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x7t 0x7ft
    .end array-data

    .line 104
    :array_5
    .array-data 0x4
        0x24t 0x1t 0x2t 0x7ft
        0x25t 0x1t 0x2t 0x7ft
        0x23t 0x1t 0x2t 0x7ft
        0x9at 0x0t 0x7t 0x7ft
        0xfct 0xfft 0xfft 0xfft
        0x18t 0x1t 0x2t 0x7ft
        0x19t 0x1t 0x2t 0x7ft
        0xfdt 0xfft 0xfft 0xfft
        0x1bt 0x1t 0x2t 0x7ft
        0x1bt 0x1t 0x2t 0x7ft
        0xfet 0xfft 0xfft 0xfft
        0x1et 0x1t 0x2t 0x7ft
        0x1et 0x1t 0x2t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0x21t 0x1t 0x2t 0x7ft
        0x21t 0x1t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x24t 0x1t 0x2t 0x7ft
        0x24t 0x1t 0x2t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x27t 0x1t 0x2t 0x7ft
        0x27t 0x1t 0x2t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x2at 0x1t 0x2t 0x7ft
        0x2at 0x1t 0x2t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x2dt 0x1t 0x2t 0x7ft
        0x2dt 0x1t 0x2t 0x7ft
        0x4t 0x0t 0x0t 0x0t
        0x30t 0x1t 0x2t 0x7ft
        0x30t 0x1t 0x2t 0x7ft
    .end array-data

    .line 173
    :array_6
    .array-data 0x4
        0xb7t 0x2t 0x2t 0x7ft
        0xb8t 0x2t 0x2t 0x7ft
        0xb6t 0x2t 0x2t 0x7ft
        0xa3t 0x0t 0x7t 0x7ft
    .end array-data

    .line 180
    :array_7
    .array-data 0x4
        0xcct 0x1t 0x2t 0x7ft
        0xcdt 0x1t 0x2t 0x7ft
        0xcbt 0x1t 0x2t 0x7ft
        0xa3t 0x0t 0x7t 0x7ft
    .end array-data

    .line 138
    :array_8
    .array-data 0x4
        0x9t 0x1t 0x2t 0x7ft
        0xat 0x1t 0x2t 0x7ft
        0x8t 0x1t 0x2t 0x7ft
        0x97t 0x0t 0x7t 0x7ft
        0xfct 0xfft 0xfft 0xfft
        0xfdt 0x0t 0x2t 0x7ft
        0xfet 0x0t 0x2t 0x7ft
        0xfdt 0xfft 0xfft 0xfft
        0x0t 0x1t 0x2t 0x7ft
        0x0t 0x1t 0x2t 0x7ft
        0xfet 0xfft 0xfft 0xfft
        0x3t 0x1t 0x2t 0x7ft
        0x3t 0x1t 0x2t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0x6t 0x1t 0x2t 0x7ft
        0x6t 0x1t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x1t 0x2t 0x7ft
        0x9t 0x1t 0x2t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0xct 0x1t 0x2t 0x7ft
        0xct 0x1t 0x2t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0xft 0x1t 0x2t 0x7ft
        0xft 0x1t 0x2t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x2t 0x7ft
        0x12t 0x1t 0x2t 0x7ft
        0x4t 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x2t 0x7ft
        0xf4t 0x0t 0x2t 0x7ft
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
    .line 190
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    return-object v0
.end method
