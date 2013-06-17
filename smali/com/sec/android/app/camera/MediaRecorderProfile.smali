.class public Lcom/sec/android/app/camera/MediaRecorderProfile;
.super Ljava/lang/Object;
.source "MediaRecorderProfile.java"


# instance fields
.field public final mAudioBitrate:I

.field public final mAudioChannels:I

.field public final mAudioEncoder:I

.field public final mAudioSamplingRate:I

.field public final mOutputFormat:I

.field private mProfileTable:[[I

.field public final mVideoBitrate:I

.field public final mVideoEncoder:I

.field public final mVideoFps:I

.field public final mVideoHeight:I

.field public final mVideoWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .locals 11
    .parameter "activityContext"
    .parameter "quality"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xa

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v3, 0x6

    new-array v3, v3, [[I

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    aput-object v4, v3, v7

    new-array v4, v6, [I

    fill-array-data v4, :array_1

    aput-object v4, v3, v8

    const/4 v4, 0x2

    new-array v5, v6, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-array v5, v6, [I

    fill-array-data v5, :array_3

    aput-object v5, v3, v4

    new-array v4, v6, [I

    fill-array-data v4, :array_4

    aput-object v4, v3, v9

    new-array v4, v6, [I

    fill-array-data v4, :array_5

    aput-object v4, v3, v10

    iput-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    .line 98
    const/4 v0, 0x1

    .line 99
    .local v0, propertyIndex:I
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    .line 100
    .local v2, resolutionId:I
    const/4 v1, 0x3

    .line 103
    .local v1, qualityIndex:I
    packed-switch v2, :pswitch_data_0

    .line 122
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 123
    const/4 v0, 0x5

    .line 124
    const/16 v2, 0xd

    .line 127
    :cond_0
    packed-switch p2, :pswitch_data_1

    .line 140
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v7

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    .line 141
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    .line 142
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v9

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    .line 143
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    .line 144
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    .line 145
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    .line 148
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x6

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioEncoder:I

    .line 149
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x7

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    .line 150
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    const/16 v4, 0x8

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioChannels:I

    .line 151
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    const/16 v4, 0x9

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    .line 152
    return-void

    .line 105
    :pswitch_1
    const/4 v0, 0x4

    .line 106
    goto :goto_0

    .line 108
    :pswitch_2
    const/4 v0, 0x4

    .line 109
    goto :goto_0

    .line 111
    :pswitch_3
    const/4 v0, 0x4

    .line 112
    goto :goto_0

    .line 114
    :pswitch_4
    const/4 v0, 0x3

    .line 115
    goto :goto_0

    .line 117
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 129
    :pswitch_6
    const/4 v1, 0x1

    .line 130
    goto :goto_1

    .line 132
    :pswitch_7
    const/4 v1, 0x2

    .line 133
    goto :goto_1

    .line 135
    :pswitch_8
    const/4 v1, 0x3

    goto :goto_1

    .line 65
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x1bt 0xb7t 0x0t
        0x80t 0x96t 0x98t 0x0t
        0x0t 0x12t 0x7at 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xb4t 0xf5t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xa8t 0xa0t 0x34t 0x0t
        0x50t 0x3et 0x2bt 0x0t
        0x90t 0x10t 0x23t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xb4t 0xf5t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x50t 0x3t 0x20t 0x0t
        0xa0t 0xfct 0x17t 0x0t
        0x0t 0xbt 0x13t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xb4t 0xf5t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x18t 0xb4t 0xbt 0x0t
        0xe8t 0xc7t 0x9t 0x0t
        0x70t 0xe7t 0x7t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xb4t 0xf5t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xe8t 0x74t 0x2t 0x0t
        0x90t 0x59t 0x2t 0x0t
        0x70t 0xbt 0x2t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xb4t 0xf5t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x64t 0x77t 0x1t 0x0t
        0x64t 0x77t 0x1t 0x0t
        0x64t 0x77t 0x1t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9at 0x5bt 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
    .end array-data

    .line 103
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 127
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
