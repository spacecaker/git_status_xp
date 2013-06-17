.class public Lcom/sec/android/app/camera/CeStatePreviewing;
.super Lcom/sec/android/app/camera/AbstractCeState;
.source "CeStatePreviewing.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V
    .locals 0
    .parameter "cameraEngine"
    .parameter "requestQueue"
    .parameter "id"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/AbstractCeState;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 143
    const-string v0, "CeStatePreviewing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleMessage - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 147
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 150
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->imageStoringCompleted()V

    goto :goto_0

    .line 153
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 156
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 159
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 162
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 167
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_1
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0x64 -> :sswitch_6
    .end sparse-switch
.end method

.method public handleRequest(Lcom/sec/android/app/camera/CeRequest;)Z
    .locals 5
    .parameter "request"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const-string v4, "CeStatePreviewing"

    .line 41
    const-string v0, "CeStatePreviewing"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HandleRequest - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 136
    const-string v0, "CeStatePreviewing"

    const-string v0, "invalid request id for current state"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 139
    const/4 v0, 0x0

    .end local p0
    :goto_0
    return v0

    .line 44
    .restart local p0
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 45
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 46
    goto :goto_0

    .line 48
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 49
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 50
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 51
    goto :goto_0

    .line 53
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doAutoFocusAsync()V

    move v0, v2

    .line 54
    goto :goto_0

    .line 56
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 58
    goto :goto_0

    .line 60
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->doShutterTimerAsync(I)V

    move v0, v2

    .line 62
    goto :goto_0

    .line 64
    .restart local p0
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doSetAllParamsSync()V

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 66
    goto :goto_0

    .line 68
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartSmileDetectionSync()V

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 70
    goto :goto_0

    .line 72
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopSmileDetectionSync()V

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 74
    goto/16 :goto_0

    .line 76
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->doWaitAsync(I)V

    move v0, v2

    .line 77
    goto/16 :goto_0

    .line 79
    .restart local p0
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartContinuousSync()V

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 81
    goto/16 :goto_0

    .line 83
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopContinuousSync()V

    .line 84
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 85
    goto/16 :goto_0

    .line 87
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartPanoramaAsync()V

    move v0, v2

    .line 88
    goto/16 :goto_0

    .line 90
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPanoramaSync()V

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 92
    goto/16 :goto_0

    .line 94
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartActionShotSync()V

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 96
    goto/16 :goto_0

    .line 98
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopActionShotSync()V

    .line 99
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 100
    goto/16 :goto_0

    .line 102
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doShowReviewScreenSync()V

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 104
    goto/16 :goto_0

    .line 106
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doHideReviewScreenSync()V

    .line 107
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 108
    goto/16 :goto_0

    .line 110
    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doProcessBackSync()V

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 112
    goto/16 :goto_0

    .line 114
    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 116
    goto/16 :goto_0

    .line 120
    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStartVideoRecordingSync()V

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 123
    goto/16 :goto_0

    .line 125
    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 127
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 128
    goto/16 :goto_0

    .line 130
    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 131
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 133
    goto/16 :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0x5 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_b
        0x10 -> :sswitch_c
        0x11 -> :sswitch_d
        0x12 -> :sswitch_e
        0x14 -> :sswitch_f
        0x15 -> :sswitch_10
        0x16 -> :sswitch_11
        0x17 -> :sswitch_12
        0x65 -> :sswitch_13
        0x68 -> :sswitch_14
        0x69 -> :sswitch_15
    .end sparse-switch
.end method
