.class Landroid/hardware/fmradio/FmRxEventListner$1;
.super Ljava/lang/Thread;
.source "FmRxEventListner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fmradio/FmRxEventListner;->startListner(ILandroid/hardware/fmradio/FmRxEvCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fmradio/FmRxEventListner;

.field final synthetic val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

.field final synthetic val$fd:I


# direct methods
.method constructor <init>(Landroid/hardware/fmradio/FmRxEventListner;ILandroid/hardware/fmradio/FmRxEvCallbacks;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->this$0:Landroid/hardware/fmradio/FmRxEventListner;

    iput p2, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$fd:I

    iput-object p3, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-string v6, "FMRadio"

    .line 68
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 71
    const/4 v3, 0x0

    .line 72
    .local v3, index:I
    const/16 v4, 0x40

    :try_start_0
    new-array v0, v4, [B

    .line 73
    .local v0, buff:[B
    iget v4, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$fd:I

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    move-result v1

    .line 76
    .local v1, eventCount:I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    .line 79
    aget-byte v4, v0, v3

    packed-switch v4, :pswitch_data_0

    .line 145
    const-string v4, "FMRadio"

    const-string v5, "Unknown event"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 82
    :pswitch_0
    const-string v4, "FMRadio"

    const-string v5, "Got READY_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v4, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v4}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvEnableReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 149
    .end local v0           #buff:[B
    .end local v1           #eventCount:I
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 150
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "FMRadio"

    const-string v4, "RunningThread InterruptedException"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 86
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #buff:[B
    .restart local v1       #eventCount:I
    :pswitch_1
    :try_start_1
    const-string v4, "FMRadio"

    const-string v5, "Got TUNE_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v4, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    iget v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$fd:I

    invoke-static {v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRadioTuneStatus(I)V

    goto :goto_2

    .line 90
    :pswitch_2
    const-string v4, "FMRadio"

    const-string v5, "Got SEEK_COMPLETE_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v4, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    iget v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$fd:I

    invoke-static {v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchComplete(I)V

    goto :goto_2

    .line 94
    :pswitch_3
    const-string v4, "FMRadio"

    const-string v5, "Got SCAN_NEXT_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v4, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v4}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchInProgress()V

    goto :goto_2

    .line 98
    :pswitch_4
    const-string v4, "FMRadio"

    const-string v5, "Got RAW_RDS_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v4, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v4}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsGroupData()V

    goto :goto_2

    .line 102
    :pswitch_5
    const-string v4, "FMRadio"

    const-string v5, "Got RT_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v4, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v4}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsRtInfo()V

    goto :goto_2

    .line 106
    :pswitch_6
    const-string v4, "FMRadio"

    const-string v5, "Got PS_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v4, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v4}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsPsInfo()V

    goto :goto_2

    .line 110
    :pswitch_7
    const-string v4, "FMRadio"

    const-string v5, "Got ERROR_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 113
    :pswitch_8
    const-string v4, "FMRadio"

    const-string v5, "Got BELOW_TH_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v4, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvServiceAvailable(Z)V

    goto/16 :goto_2

    .line 117
    :pswitch_9
    const-string v4, "FMRadio"

    const-string v5, "Got ABOVE_TH_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v4, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvServiceAvailable(Z)V

    goto/16 :goto_2

    .line 121
    :pswitch_a
    const-string v4, "FMRadio"

    const-string v5, "Got STEREO_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v4, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvStereoStatus(Z)V

    goto/16 :goto_2

    .line 125
    :pswitch_b
    const-string v4, "FMRadio"

    const-string v5, "Got MONO_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v4, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvStereoStatus(Z)V

    goto/16 :goto_2

    .line 129
    :pswitch_c
    const-string v4, "FMRadio"

    const-string v5, "Got RDS_AVAL_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v4, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsLockStatus(Z)V

    goto/16 :goto_2

    .line 133
    :pswitch_d
    const-string v4, "FMRadio"

    const-string v5, "Got RDS_NOT_AVAL_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v4, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsLockStatus(Z)V

    goto/16 :goto_2

    .line 137
    :pswitch_e
    const-string v4, "FMRadio"

    const-string v5, "Got NEW_SRCH_LIST"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v4, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v4}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchListComplete()V

    goto/16 :goto_2

    .line 141
    :pswitch_f
    const-string v4, "FMRadio"

    const-string v5, "Got NEW_AF_LIST"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v4, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v4}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsAfInfo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 154
    .end local v0           #buff:[B
    .end local v1           #eventCount:I
    .end local v3           #index:I
    :cond_1
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
