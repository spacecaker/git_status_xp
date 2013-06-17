.class public Lcom/sec/android/app/camera/CameraSideMenuResourceData;
.super Ljava/lang/Object;
.source "CameraSideMenuResourceData.java"


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
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    const/16 v3, 0x2b

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    const/16 v3, 0x2e

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_4

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    const/16 v3, 0xd

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    const/16 v3, 0x28

    new-array v3, v3, [I

    const v4, 0x7f020108

    aput v4, v3, v7

    const v4, 0x7f020109

    aput v4, v3, v8

    const v4, 0x7f020107

    aput v4, v3, v9

    const-string v4, "2560x1920"

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v7}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v4

    if-ltz v4, :cond_0

    const v4, 0x7f07009e

    :goto_0
    aput v4, v3, v10

    const/4 v4, -0x4

    aput v4, v3, v6

    const/4 v4, 0x5

    const v5, 0x7f0200fc

    aput v5, v3, v4

    const/4 v4, 0x6

    const v5, 0x7f0200fd

    aput v5, v3, v4

    const/4 v4, 0x7

    const v5, 0x7f0200fb

    aput v5, v3, v4

    const/16 v4, 0x8

    const/4 v5, -0x3

    aput v5, v3, v4

    const/16 v4, 0x9

    const v5, 0x7f0200ff

    aput v5, v3, v4

    const/16 v4, 0xa

    const v5, 0x7f020100

    aput v5, v3, v4

    const/16 v4, 0xb

    const v5, 0x7f0200fe

    aput v5, v3, v4

    const/16 v4, 0xc

    const/4 v5, -0x2

    aput v5, v3, v4

    const/16 v4, 0xd

    const v5, 0x7f020102

    aput v5, v3, v4

    const/16 v4, 0xe

    const v5, 0x7f020103

    aput v5, v3, v4

    const/16 v4, 0xf

    const v5, 0x7f020101

    aput v5, v3, v4

    const/16 v4, 0x10

    const/4 v5, -0x1

    aput v5, v3, v4

    const/16 v4, 0x11

    const v5, 0x7f020105

    aput v5, v3, v4

    const/16 v4, 0x12

    const v5, 0x7f020106

    aput v5, v3, v4

    const/16 v4, 0x13

    const v5, 0x7f020104

    aput v5, v3, v4

    const/16 v4, 0x14

    aput v7, v3, v4

    const/16 v4, 0x15

    const v5, 0x7f020108

    aput v5, v3, v4

    const/16 v4, 0x16

    const v5, 0x7f020109

    aput v5, v3, v4

    const/16 v4, 0x17

    const v5, 0x7f020107

    aput v5, v3, v4

    const/16 v4, 0x18

    aput v8, v3, v4

    const/16 v4, 0x19

    const v5, 0x7f02010b

    aput v5, v3, v4

    const/16 v4, 0x1a

    const v5, 0x7f02010c

    aput v5, v3, v4

    const/16 v4, 0x1b

    const v5, 0x7f02010a

    aput v5, v3, v4

    const/16 v4, 0x1c

    aput v9, v3, v4

    const/16 v4, 0x1d

    const v5, 0x7f02010e

    aput v5, v3, v4

    const/16 v4, 0x1e

    const v5, 0x7f02010f

    aput v5, v3, v4

    const/16 v4, 0x1f

    const v5, 0x7f02010d

    aput v5, v3, v4

    const/16 v4, 0x20

    aput v10, v3, v4

    const/16 v4, 0x21

    const v5, 0x7f020111

    aput v5, v3, v4

    const/16 v4, 0x22

    const v5, 0x7f020112

    aput v5, v3, v4

    const/16 v4, 0x23

    const v5, 0x7f020110

    aput v5, v3, v4

    const/16 v4, 0x24

    aput v6, v3, v4

    const/16 v4, 0x25

    const v5, 0x7f020114

    aput v5, v3, v4

    const/16 v4, 0x26

    const v5, 0x7f020115

    aput v5, v3, v4

    const/16 v4, 0x27

    const v5, 0x7f020113

    aput v5, v3, v4

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_6

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_7

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void

    .line 178
    :cond_0
    const v4, 0x7f07009e

    goto/16 :goto_0

    .line 27
    nop

    :array_0
    .array-data 0x4
        0xddt 0x0t 0x2t 0x7ft
        0xdet 0x0t 0x2t 0x7ft
        0xdct 0x0t 0x2t 0x7ft
        0xaet 0x0t 0x7t 0x7ft
    .end array-data

    .line 34
    :array_1
    .array-data 0x4
        0x4t 0x3t 0x2t 0x7ft
        0x5t 0x3t 0x2t 0x7ft
        0x3t 0x3t 0x2t 0x7ft
        0x9bt 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x3t 0x2t 0x7ft
        0x5t 0x3t 0x2t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0xf2t 0x2t 0x2t 0x7ft
        0xf3t 0x2t 0x2t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0xfet 0x2t 0x2t 0x7ft
        0xfft 0x2t 0x2t 0x7ft
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x3t 0x2t 0x7ft
        0x2t 0x3t 0x2t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x3t 0x2t 0x7ft
        0x8t 0x3t 0x2t 0x7ft
        0x4t 0x0t 0x0t 0x0t
        0xfbt 0x2t 0x2t 0x7ft
        0xfct 0x2t 0x2t 0x7ft
        0x5t 0x0t 0x0t 0x0t
        0xf5t 0x2t 0x2t 0x7ft
        0xf6t 0x2t 0x2t 0x7ft
        0x7t 0x0t 0x0t 0x0t
        0xeft 0x2t 0x2t 0x7ft
        0xf0t 0x2t 0x2t 0x7ft
        0x8t 0x0t 0x0t 0x0t
        0xat 0x3t 0x2t 0x7ft
        0xbt 0x3t 0x2t 0x7ft
        0x9t 0x0t 0x0t 0x0t
        0xb6t 0x1t 0x2t 0x7ft
        0xb7t 0x1t 0x2t 0x7ft
        0xat 0x0t 0x0t 0x0t
        0xb3t 0x1t 0x2t 0x7ft
        0xb4t 0x1t 0x2t 0x7ft
        0xbt 0x0t 0x0t 0x0t
        0xbct 0x1t 0x2t 0x7ft
        0xbdt 0x1t 0x2t 0x7ft
        0xdt 0x0t 0x0t 0x0t
        0xb9t 0x1t 0x2t 0x7ft
        0xbat 0x1t 0x2t 0x7ft
    .end array-data

    .line 80
    :array_2
    .array-data 0x4
        0xbet 0x2t 0x2t 0x7ft
        0xc5t 0x2t 0x2t 0x7ft
        0xact 0x2t 0x2t 0x7ft
        0x90t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0xbet 0x2t 0x2t 0x7ft
        0xc5t 0x2t 0x2t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0xc3t 0x2t 0x2t 0x7ft
        0xc4t 0x2t 0x2t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0xb9t 0x2t 0x2t 0x7ft
        0xbat 0x2t 0x2t 0x7ft
        0x4t 0x0t 0x0t 0x0t
        0xc8t 0x2t 0x2t 0x7ft
        0xc9t 0x2t 0x2t 0x7ft
        0x7t 0x0t 0x0t 0x0t
        0xcbt 0x2t 0x2t 0x7ft
        0xcct 0x2t 0x2t 0x7ft
        0x8t 0x0t 0x0t 0x0t
        0xaet 0x2t 0x2t 0x7ft
        0xaft 0x2t 0x2t 0x7ft
        0xat 0x0t 0x0t 0x0t
        0xb4t 0x2t 0x2t 0x7ft
        0xb5t 0x2t 0x2t 0x7ft
        0x6t 0x0t 0x0t 0x0t
        0xa7t 0x2t 0x2t 0x7ft
        0xa8t 0x2t 0x2t 0x7ft
        0x5t 0x0t 0x0t 0x0t
        0xb6t 0x2t 0x2t 0x7ft
        0xb7t 0x2t 0x2t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0xbct 0x2t 0x2t 0x7ft
        0xbdt 0x2t 0x2t 0x7ft
        0x9t 0x0t 0x0t 0x0t
        0xb1t 0x2t 0x2t 0x7ft
        0xb2t 0x2t 0x2t 0x7ft
        0xct 0x0t 0x0t 0x0t
        0xaat 0x2t 0x2t 0x7ft
        0xabt 0x2t 0x2t 0x7ft
        0xdt 0x0t 0x0t 0x0t
        0xa4t 0x2t 0x2t 0x7ft
        0xa5t 0x2t 0x2t 0x7ft
        0xbt 0x0t 0x0t 0x0t
        0xcet 0x2t 0x2t 0x7ft
        0xcft 0x2t 0x2t 0x7ft
    .end array-data

    .line 128
    :array_3
    .array-data 0x4
        0xect 0x2t 0x2t 0x7ft
        0xedt 0x2t 0x2t 0x7ft
        0xebt 0x2t 0x2t 0x7ft
        0x12t 0x0t 0x7t 0x7ft
    .end array-data

    .line 134
    :array_4
    .array-data 0x4
        0xd7t 0x0t 0x2t 0x7ft
        0xd8t 0x0t 0x2t 0x7ft
        0xd6t 0x0t 0x2t 0x7ft
        0xaft 0x0t 0x7t 0x7ft
    .end array-data

    .line 142
    :array_5
    .array-data 0x4
        0x30t 0x2t 0x2t 0x7ft
        0x31t 0x2t 0x2t 0x7ft
        0x2ft 0x2t 0x2t 0x7ft
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

    .line 224
    :array_6
    .array-data 0x4
        0x9bt 0x2t 0x2t 0x7ft
        0x9ct 0x2t 0x2t 0x7ft
        0x9at 0x2t 0x2t 0x7ft
        0xb0t 0x0t 0x7t 0x7ft
    .end array-data

    .line 231
    :array_7
    .array-data 0x4
        0xbft 0x1t 0x2t 0x7ft
        0xc0t 0x1t 0x2t 0x7ft
        0xbet 0x1t 0x2t 0x7ft
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
    .line 240
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    return-object v0
.end method
