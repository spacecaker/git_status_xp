.class public Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;
.super Ljava/lang/Object;
.source "CamcorderSettingsMenuResourceData.java"


# static fields
.field private static mSettingsMenuResource:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/SettingsMenuResourceBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/16 v6, 0xd

    const/16 v5, 0xb

    const/4 v4, 0x3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v5, [I

    fill-array-data v3, :array_3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_4

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v7, [I

    fill-array-data v3, :array_6

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_7

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_8

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_9

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_a

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v7, [I

    fill-array-data v3, :array_b

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void

    .line 32
    nop

    :array_0
    .array-data 0x4
        0xb4t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x8at 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x91t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x7t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x7t 0x7ft
    .end array-data

    .line 45
    :array_1
    .array-data 0x4
        0xadt 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x7t 0x7ft
        0x7t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x7t 0x7ft
        0x9t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x7t 0x7ft
        0xat 0x0t 0x0t 0x0t
        0x43t 0x0t 0x7t 0x7ft
        0xct 0x0t 0x0t 0x0t
        0x41t 0x0t 0x7t 0x7ft
        0xdt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x7t 0x7ft
    .end array-data

    .line 60
    :array_2
    .array-data 0x4
        0xb6t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x8ct 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0xbbt 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0xbat 0x0t 0x7t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0xbet 0x0t 0x7t 0x7ft
        0x4t 0x0t 0x0t 0x0t
        0xbct 0x0t 0x7t 0x7ft
    .end array-data

    .line 75
    :array_3
    .array-data 0x4
        0x99t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x7t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x7t 0x7ft
    .end array-data

    .line 88
    :array_4
    .array-data 0x4
        0x94t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x7t 0x7ft
    .end array-data

    .line 93
    :array_5
    .array-data 0x4
        0xb5t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x7t 0x7ft
    .end array-data

    .line 104
    :array_6
    .array-data 0x4
        0x2t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x7t 0x7ft
        0x71t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x7t 0x7ft
    .end array-data

    .line 111
    :array_7
    .array-data 0x4
        0xa0t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x7t 0x7ft
    .end array-data

    .line 116
    :array_8
    .array-data 0x4
        0xaet 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x87t 0x0t 0x7t 0x7ft
    .end array-data

    .line 121
    :array_9
    .array-data 0x4
        0x93t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x77t 0x0t 0x7t 0x7ft
    .end array-data

    .line 126
    :array_a
    .array-data 0x4
        0xb3t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x89t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x7t 0x7ft
    .end array-data

    .line 135
    :array_b
    .array-data 0x4
        0xabt 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x84t 0x0t 0x7t 0x7ft
        0x75t 0x0t 0x0t 0x0t
        0xabt 0x0t 0x7t 0x7ft
    .end array-data
.end method


# virtual methods
.method public cleanUpResources()V
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 150
    return-void
.end method

.method public getResource()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/SettingsMenuResourceBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    return-object v0
.end method
