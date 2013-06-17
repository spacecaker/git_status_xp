.class public Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;
.super Ljava/lang/Object;
.source "CameraSettingsMenuResourceData.java"


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
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x5

    const/16 v6, 0x9

    const/16 v5, 0xb

    const/4 v4, 0x3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    const/16 v3, 0x1f

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v5, [I

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    const/16 v3, 0x19

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v8, [I

    fill-array-data v3, :array_4

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v5, [I

    fill-array-data v3, :array_5

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_6

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_7

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_8

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_9

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_a

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_b

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v7, [I

    fill-array-data v3, :array_c

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_d

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_e

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_f

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v5, [I

    fill-array-data v3, :array_10

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_11

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v7, [I

    fill-array-data v3, :array_12

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void

    .line 38
    :array_0
    .array-data 0x4
        0x9dt 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x7t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x7t 0x7ft
    .end array-data

    .line 48
    :array_1
    .array-data 0x4
        0xaft 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x8at 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x7t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x7t 0x7ft
        0x4t 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x7t 0x7ft
        0x5t 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x7t 0x7ft
        0x6t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x7t 0x7ft
        0x7t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x7t 0x7ft
        0x9t 0x0t 0x0t 0x0t
        0x58t 0x0t 0x7t 0x7ft
        0xat 0x0t 0x0t 0x0t
        0x31t 0x0t 0x7t 0x7ft
        0xbt 0x0t 0x0t 0x0t
        0x61t 0x0t 0x7t 0x7ft
        0xct 0x0t 0x0t 0x0t
        0x49t 0x0t 0x7t 0x7ft
        0xdt 0x0t 0x0t 0x0t
        0x47t 0x0t 0x7t 0x7ft
    .end array-data

    .line 66
    :array_2
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

    .line 77
    :array_3
    .array-data 0x4
        0xadt 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x7t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x7t 0x7ft
        0x6t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x7t 0x7ft
        0x4t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x7t 0x7ft
        0x5t 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x7t 0x7ft
        0xat 0x0t 0x0t 0x0t
        0x43t 0x0t 0x7t 0x7ft
        0xct 0x0t 0x0t 0x0t
        0x41t 0x0t 0x7t 0x7ft
        0xbt 0x0t 0x0t 0x0t
        0x42t 0x0t 0x7t 0x7ft
    .end array-data

    .line 93
    :array_4
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

    .line 102
    :array_5
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

    .line 124
    :array_6
    .array-data 0x4
        0xa5t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x7t 0x7ft
    .end array-data

    .line 131
    :array_7
    .array-data 0x4
        0xa8t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x7t 0x7ft
    .end array-data

    .line 135
    :array_8
    .array-data 0x4
        0x92t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x76t 0x0t 0x7t 0x7ft
    .end array-data

    .line 139
    :array_9
    .array-data 0x4
        0x94t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x7t 0x7ft
    .end array-data

    .line 143
    :array_a
    .array-data 0x4
        0x96t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x7t 0x7ft
    .end array-data

    .line 147
    :array_b
    .array-data 0x4
        0xa2t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x7t 0x7ft
    .end array-data

    .line 154
    :array_c
    .array-data 0x4
        0x2t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x7t 0x7ft
        0x17t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x7t 0x7ft
    .end array-data

    .line 159
    :array_d
    .array-data 0x4
        0x9ft 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x7t 0x7ft
    .end array-data

    .line 163
    :array_e
    .array-data 0x4
        0xa0t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x7t 0x7ft
    .end array-data

    .line 168
    :array_f
    .array-data 0x4
        0xaet 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x86t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x91t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x7t 0x7ft
    .end array-data

    .line 181
    :array_10
    .array-data 0x4
        0xb2t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x88t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x7t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x7t 0x7ft
    .end array-data

    .line 189
    :array_11
    .array-data 0x4
        0xb3t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x89t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x7t 0x7ft
    .end array-data

    .line 195
    :array_12
    .array-data 0x4
        0xabt 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x84t 0x0t 0x7t 0x7ft
        0x1et 0x0t 0x0t 0x0t
        0xabt 0x0t 0x7t 0x7ft
    .end array-data
.end method


# virtual methods
.method public cleanUpResources()V
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 208
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
    .line 203
    sget-object v0, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    return-object v0
.end method
