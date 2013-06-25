.class public final Lcom/broadcom/bt/service/fm/FmReceiverService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmReceiverService$BrdcstReceiver;
    }
.end annotation


# static fields
.field private static final FM_BROADCAST_RECEIVER_INCLUDED:Z = true

.field private static final FM_RADIO_STATE_FORCE_OFF_IF_TURNOFF:Z = true

.field private static final TAG:Ljava/lang/String; = "FmReceiverService"

.field private static final V:Z

.field private static volumeTable:[I

.field private static final volumeTable_Callisto:[I

.field private static final volumeTable_Common:[I

.field private static final volumeTable_Gio:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final m_callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/fm/IFmReceiverCallback;",
            ">;"
        }
    .end annotation
.end field

.field public operationHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 81
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->volumeTable_Callisto:[I

    .line 82
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->volumeTable_Common:[I

    .line 83
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->volumeTable_Gio:[I

    .line 111
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiverService;->classFmInitNative()V

    .line 112
    return-void

    .line 81
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
    .end array-data

    .line 82
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
    .end array-data

    .line 83
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-string v4, "GT-S5830"

    const-string v3, "FmReceiverService"

    .line 117
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    .line 332
    new-instance v2, Lcom/broadcom/bt/service/fm/FmReceiverService$1;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/service/fm/FmReceiverService$1;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    iput-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    .line 120
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mContext:Landroid/content/Context;

    .line 123
    const-string v2, "GT-S5830"

    const-string v2, "GT-I5510"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->volumeTable_Callisto:[I

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->volumeTable:[I

    .line 137
    :goto_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$BrdcstReceiver;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/fm/FmReceiverService$BrdcstReceiver;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    .line 138
    .local v0, broadcastRcvr:Landroid/content/BroadcastReceiver;
    if-eqz v0, :cond_4

    .line 140
    if-eqz p1, :cond_3

    .line 142
    const-string v2, "FmReceiverService"

    const-string v2, "broadcastRcvr addAction .."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v1, iFilter:Landroid/content/IntentFilter;
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    .end local v1           #iFilter:Landroid/content/IntentFilter;
    :goto_1
    return-void

    .line 126
    .end local v0           #broadcastRcvr:Landroid/content/BroadcastReceiver;
    :cond_0
    const-string v2, "GT-S5830"

    const-string v2, "GT-S5660"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "GT-S5830"

    const-string v2, "GT-S5660V"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    :cond_1
    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->volumeTable_Gio:[I

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->volumeTable:[I

    goto :goto_0

    .line 131
    :cond_2
    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->volumeTable_Common:[I

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->volumeTable:[I

    goto :goto_0

    .line 151
    .restart local v0       #broadcastRcvr:Landroid/content/BroadcastReceiver;
    :cond_3
    const-string v2, "FmReceiverService"

    const-string v2, "context  is  null"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 156
    :cond_4
    const-string v2, "FmReceiverService"

    const-string v2, "broadcastRcvr\tis null"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->volumeTable:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initializeStateMachine()V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/fm/FmReceiverService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z

    move-result v0

    return v0
.end method

.method private static native classFmInitNative()V
.end method

.method private native cleanupLoopNative()V
.end method

.method private native configureDeemphasisNative(I)Z
.end method

.method private native configureSignalNotificationNative(I)Z
.end method

.method private native disableNative(Z)Z
.end method

.method private native enableNative(I)Z
.end method

.method private native estimateNoiseFloorNative(I)Z
.end method

.method private native getAudioQualityNative(Z)Z
.end method

.method private native initLoopNative()V
.end method

.method private native initNativeDataNative()V
.end method

.method private initializeStateMachine()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    .line 250
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 251
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 252
    const/16 v0, 0x7f

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 253
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 254
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    .line 255
    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    .line 256
    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    .line 257
    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    .line 258
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    .line 259
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 260
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    .line 261
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    .line 262
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 263
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAlternateFreqHopThreshold:I

    .line 264
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 265
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    .line 266
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    .line 267
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mStepSize:I

    .line 268
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mLiveAudioQuality:Z

    .line 269
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    .line 270
    const/16 v0, 0x64

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSignalPollInterval:I

    .line 271
    const/16 v0, 0x40

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mDeemphasisTime:I

    .line 272
    return-void
.end method

.method private native muteNative(Z)Z
.end method

.method private native searchAbortNative()Z
.end method

.method private native searchNative(IIII)Z
.end method

.method private sendAudioModeEventCallback(I)V
    .locals 5
    .parameter "audioMode"

    .prologue
    .line 532
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 533
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 536
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioModeEvent(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 538
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "sendAudioModeEventCallback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 541
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 543
    return-void
.end method

.method private sendAudioModeEventCallbackFromLocalStore()V
    .locals 1

    .prologue
    .line 514
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioModeEventCallback(I)V

    .line 515
    return-void
.end method

.method private sendAudioPathEventCallback(I)V
    .locals 5
    .parameter "audioPath"

    .prologue
    .line 569
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 570
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 573
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioPathEvent(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 574
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 575
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "sendAudioPathEventCallback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 578
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 580
    return-void
.end method

.method private sendAudioPathEventCallbackFromLocalStore()V
    .locals 1

    .prologue
    .line 550
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioPathEventCallback(I)V

    .line 551
    return-void
.end method

.method private sendEstimateNflEventCallback(I)V
    .locals 5
    .parameter "nfl"

    .prologue
    .line 639
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 640
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 643
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onEstimateNflEvent(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 645
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "sendEstimateNflEventCallback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 648
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 650
    return-void
.end method

.method private sendEstimateNflEventCallbackFromLocalStore()V
    .locals 1

    .prologue
    .line 622
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendEstimateNflEventCallback(I)V

    .line 623
    return-void
.end method

.method private sendLiveAudioQualityEventCallback(I)V
    .locals 5
    .parameter "rssi"

    .prologue
    .line 676
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 677
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 680
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onLiveAudioQualityEvent(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 681
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 682
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "sendLiveAudioQualityEventCallback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 685
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 690
    return-void
.end method

.method private sendLiveAudioQualityEventCallbackFromLocalStore()V
    .locals 1

    .prologue
    .line 657
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallback(I)V

    .line 658
    return-void
.end method

.method private sendRdsDataEventCallback(IILjava/lang/String;)V
    .locals 5
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    .line 496
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 497
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 500
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsDataEvent(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 502
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "sendRdsModeEventCallback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 505
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 507
    return-void
.end method

.method private sendRdsDataEventCallbackFromLocalStore()V
    .locals 3

    .prologue
    .line 474
    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "TEST RDS MESSAGE"

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsDataEventCallback(IILjava/lang/String;)V

    .line 475
    return-void
.end method

.method private sendRdsModeEventCallback(II)V
    .locals 5
    .parameter "rdsMode"
    .parameter "alternateFreqMode"

    .prologue
    .line 457
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 458
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 461
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsModeEvent(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 463
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "sendRdsModeEventCallback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 466
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 468
    return-void
.end method

.method private sendRdsModeEventCallbackFromLocalStore()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 427
    const/4 v1, 0x0

    .line 428
    .local v1, rds:I
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    if-eqz v2, :cond_1

    move v0, v3

    .line 430
    .local v0, af:I
    :goto_0
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    if-eqz v2, :cond_0

    .line 431
    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    if-nez v2, :cond_2

    move v1, v3

    .line 433
    :cond_0
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallback(II)V

    .line 434
    return-void

    .line 428
    .end local v0           #af:I
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 431
    .restart local v0       #af:I
    :cond_2
    const/4 v2, 0x2

    move v1, v2

    goto :goto_1
.end method

.method private sendSeekCompleteEventCallback(IIZ)V
    .locals 5
    .parameter "freq"
    .parameter "rssi"
    .parameter "seekSuccess"

    .prologue
    .line 409
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 410
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 413
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onSeekCompleteEvent(IIZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 415
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "sendSeekCompleteEventCallback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 418
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 420
    return-void
.end method

.method private sendSeekCompleteEventCallbackFromLocalStore()V
    .locals 3

    .prologue
    .line 381
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallback(IIZ)V

    .line 383
    return-void
.end method

.method private sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .parameter "freq"
    .parameter "rssi"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v9

    .line 314
    .local v9, callbacks:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 321
    .local v11, t:Ljava/lang/Throwable;
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "sendStatusEventCallback"

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 324
    .end local v11           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 326
    return-void
.end method

.method private sendVolumeEventCallback(II)V
    .locals 5
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 713
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 714
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 717
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onVolumeEvent(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 718
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 719
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "sendVolumeEventCallback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 722
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 724
    return-void
.end method

.method private sendWorldRegionEventCallback(I)V
    .locals 5
    .parameter "worldRegion"

    .prologue
    .line 604
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 605
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 608
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onWorldRegionEvent(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 610
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "sendWorldRegionEventCallback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 613
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 615
    return-void
.end method

.method private sendWorldRegionEventCallbackFromLocalStore()V
    .locals 1

    .prologue
    .line 587
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendWorldRegionEventCallback(I)V

    .line 588
    return-void
.end method

.method private native setAudioModeNative(I)Z
.end method

.method private native setAudioPathNative(I)Z
.end method

.method private native setFMVolumeNative(I)Z
.end method

.method private native setRdsModeNative(ZZI)Z
.end method

.method private native setRegionNative(I)Z
.end method

.method private native setScanStepNative(I)Z
.end method

.method private native tuneNative(I)Z
.end method


# virtual methods
.method public checkForPendingResponses()V
    .locals 1

    .prologue
    .line 731
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallback(I)V

    .line 732
    return-void
.end method

.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .locals 6
    .parameter "nflLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1508
    monitor-enter p0

    const/4 v2, 0x0

    .line 1511
    .local v2, returnStatus:I
    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_1

    if-eqz p1, :cond_1

    .line 1513
    const/4 v2, 0x4

    .line 1540
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 1514
    :cond_1
    :try_start_0
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v4, v3, :cond_2

    .line 1516
    const/4 v2, 0x3

    goto :goto_0

    .line 1518
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1520
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1521
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1522
    const/16 v3, 0x63

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1523
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1524
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1528
    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->estimateNoiseFloorNative(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 1529
    const/4 v2, 0x0

    .line 1536
    :goto_1
    if-eqz v2, :cond_0

    .line 1537
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1508
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1531
    .restart local v1       #msg:Landroid/os/Message;
    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    .line 1532
    :catch_0
    move-exception v0

    .line 1533
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1534
    :try_start_3
    const-string v3, "FmReceiverService"

    const-string v4, "estimateNoiseFloorNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->stopFM_Loop()V

    .line 199
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 200
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const-string v0, "bluetooth_fm_receiver_service"

    return-object v0
.end method

.method public getRadioIsOn()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    return v0
.end method

.method public declared-synchronized getStatus()I
    .locals 3

    .prologue
    .line 921
    monitor-enter p0

    const/4 v0, 0x0

    .line 923
    .local v0, returnStatus:I
    const/4 v1, 0x2

    :try_start_0
    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    .line 925
    const/4 v0, 0x3

    .line 931
    :goto_0
    monitor-exit p0

    return v0

    .line 928
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 921
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized muteAudio(Z)I
    .locals 6
    .parameter "mute"

    .prologue
    .line 946
    monitor-enter p0

    const/4 v2, 0x0

    .line 948
    .local v2, returnStatus:I
    const/4 v3, 0x2

    :try_start_0
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v4, :cond_1

    .line 950
    const/4 v2, 0x3

    .line 974
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 952
    :cond_1
    const/4 v3, 0x4

    :try_start_1
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 954
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 955
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 956
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 957
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 958
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 962
    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->muteNative(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 963
    const/4 v2, 0x0

    .line 970
    :goto_1
    if-eqz v2, :cond_0

    .line 971
    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 946
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 965
    .restart local v1       #msg:Landroid/os/Message;
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 968
    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "muteAudio failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public onRadioAfJumpEvent(III)V
    .locals 2
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v1, 0x1

    .line 1716
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1717
    if-nez p1, :cond_0

    .line 1718
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 1719
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 1720
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 1722
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore()V

    .line 1724
    return-void
.end method

.method public onRadioAudioDataEvent(III)V
    .locals 2
    .parameter "status"
    .parameter "rssi"
    .parameter "mode"

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1763
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1766
    if-nez p1, :cond_0

    .line 1767
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 1768
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 1770
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallbackFromLocalStore()V

    .line 1771
    return-void
.end method

.method public onRadioAudioModeEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "mode"

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1733
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1736
    if-nez p1, :cond_0

    .line 1737
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 1739
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioModeEventCallbackFromLocalStore()V

    .line 1740
    return-void
.end method

.method public onRadioAudioPathEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "path"

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1749
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1752
    if-nez p1, :cond_0

    .line 1753
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    .line 1755
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioPathEventCallbackFromLocalStore()V

    .line 1756
    return-void
.end method

.method public onRadioDeemphEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "time"

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1858
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1859
    return-void
.end method

.method public onRadioMuteEvent(IZ)V
    .locals 2
    .parameter "status"
    .parameter "muted"

    .prologue
    .line 1648
    if-nez p1, :cond_0

    .line 1649
    sput-boolean p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    .line 1653
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1656
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1659
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    .line 1660
    return-void
.end method

.method public onRadioNflEstimationEvent(I)V
    .locals 2
    .parameter "level"

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1894
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1897
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    .line 1898
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendEstimateNflEventCallbackFromLocalStore()V

    .line 1899
    return-void
.end method

.method public onRadioOffEvent(I)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 1622
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->shutdownFmPower()V

    .line 1624
    if-nez p1, :cond_0

    .line 1625
    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1633
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-nez v0, :cond_1

    .line 1634
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1641
    :goto_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    .line 1642
    return-void

    .line 1636
    :cond_1
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_0
.end method

.method public onRadioOnEvent(I)V
    .locals 2
    .parameter "status"

    .prologue
    const/4 v1, 0x1

    .line 1599
    if-nez p1, :cond_0

    .line 1600
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 1604
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1607
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-ne v1, v0, :cond_1

    .line 1608
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-eqz v0, :cond_2

    .line 1609
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1616
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    .line 1617
    return-void

    .line 1611
    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_0
.end method

.method public onRadioRdsModeEvent(IZZI)V
    .locals 2
    .parameter "status"
    .parameter "rdsOn"
    .parameter "afOn"
    .parameter "rdsType"

    .prologue
    .line 1777
    if-nez p1, :cond_0

    .line 1778
    sput-boolean p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    .line 1779
    sput-boolean p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    .line 1780
    sput p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 1787
    :cond_0
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1790
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1792
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallbackFromLocalStore()V

    .line 1793
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 1795
    return-void
.end method

.method public onRadioRdsTypeEvent(II)V
    .locals 3
    .parameter "status"
    .parameter "rdsType"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1802
    if-nez p1, :cond_0

    .line 1803
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 1806
    :cond_0
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    if-ne v1, v0, :cond_1

    .line 1808
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1811
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1813
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallbackFromLocalStore()V

    .line 1814
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 1819
    :goto_0
    return-void

    .line 1817
    :cond_1
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    goto :goto_0
.end method

.method public onRadioRdsUpdateEvent(IIILjava/lang/String;)V
    .locals 0
    .parameter "status"
    .parameter "data"
    .parameter "index"
    .parameter "text"

    .prologue
    .line 1825
    if-nez p1, :cond_0

    .line 1827
    packed-switch p2, :pswitch_data_0

    .line 1847
    :goto_0
    :pswitch_0
    invoke-direct {p0, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsDataEventCallback(IILjava/lang/String;)V

    .line 1849
    :cond_0
    return-void

    .line 1829
    :pswitch_1
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    goto :goto_0

    .line 1832
    :pswitch_2
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    goto :goto_0

    .line 1835
    :pswitch_3
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    goto :goto_0

    .line 1838
    :pswitch_4
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    goto :goto_0

    .line 1827
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRadioRegionEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "region"

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1878
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1881
    if-nez p1, :cond_0

    .line 1882
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    .line 1883
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendWorldRegionEventCallbackFromLocalStore()V

    .line 1885
    :cond_0
    return-void
.end method

.method public onRadioScanStepEvent(I)V
    .locals 2
    .parameter "stepSize"

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1868
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1869
    return-void
.end method

.method public onRadioSearchCompleteEvent(III)V
    .locals 2
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1701
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1704
    if-nez p1, :cond_0

    .line 1705
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 1706
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 1707
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 1709
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore()V

    .line 1710
    return-void
.end method

.method public onRadioSearchEvent(II)V
    .locals 2
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v1, 0x1

    .line 1683
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1685
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1688
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 1689
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 1690
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 1691
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore()V

    .line 1692
    return-void
.end method

.method public onRadioTuneEvent(III)V
    .locals 2
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1669
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1672
    if-nez p1, :cond_0

    .line 1673
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 1674
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 1676
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    .line 1677
    return-void
.end method

.method public onRadioVolumeEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1908
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1910
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendVolumeEventCallback(II)V

    .line 1911
    return-void
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 1994
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    if-eqz v0, :cond_0

    .line 1995
    iput-boolean p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mIsStarted:Z

    .line 1996
    iget-boolean v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mIsStarted:Z

    if-eqz v0, :cond_1

    .line 1997
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2009
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1999
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1994
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 102
    :cond_0
    return-void
.end method

.method public declared-synchronized seekRdsStation(IIII)I
    .locals 6
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1059
    monitor-enter p0

    const/4 v2, 0x0

    .line 1062
    .local v2, returnStatus:I
    if-ltz p2, :cond_0

    if-le p2, v5, :cond_2

    .line 1064
    :cond_0
    const/4 v2, 0x4

    .line 1101
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 1065
    :cond_2
    if-ltz p4, :cond_3

    if-le p4, v5, :cond_4

    .line 1067
    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    .line 1068
    :cond_4
    if-eqz p3, :cond_5

    if-eq p3, v3, :cond_5

    if-eq p3, v4, :cond_5

    .line 1071
    const/4 v2, 0x4

    goto :goto_0

    .line 1072
    :cond_5
    :try_start_0
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v4, v3, :cond_6

    .line 1074
    const/4 v2, 0x3

    goto :goto_0

    .line 1076
    :cond_6
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1078
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1079
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1080
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1081
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1082
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    and-int/lit16 p1, p1, 0x82

    .line 1089
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_7

    .line 1090
    const/4 v2, 0x0

    .line 1097
    :goto_1
    if-eqz v2, :cond_1

    .line 1098
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1059
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1092
    .restart local v1       #msg:Landroid/os/Message;
    :cond_7
    const/4 v2, 0x2

    goto :goto_1

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1095
    :try_start_3
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "searchNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized seekStation(II)I
    .locals 6
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    .line 997
    monitor-enter p0

    const/4 v2, 0x0

    .line 1000
    .local v2, returnStatus:I
    if-ltz p2, :cond_0

    const/16 v3, 0xff

    if-le p2, v3, :cond_2

    .line 1002
    :cond_0
    const/4 v2, 0x4

    .line 1032
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 1003
    :cond_2
    const/4 v3, 0x2

    :try_start_0
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3

    .line 1005
    const/4 v2, 0x3

    goto :goto_0

    .line 1007
    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1009
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1010
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1011
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1012
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1013
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1017
    and-int/lit16 p1, p1, 0x82

    .line 1020
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 1021
    const/4 v2, 0x0

    .line 1028
    :goto_1
    if-eqz v2, :cond_1

    .line 1029
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 997
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1023
    .restart local v1       #msg:Landroid/os/Message;
    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1026
    :try_start_3
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "searchNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized seekStationAbort()I
    .locals 6

    .prologue
    .line 1117
    monitor-enter p0

    const/4 v2, 0x0

    .line 1119
    .local v2, returnStatus:I
    const/4 v3, 0x2

    :try_start_0
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v4, :cond_1

    .line 1121
    const/4 v2, 0x3

    .line 1145
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 1123
    :cond_1
    const/4 v3, 0x4

    :try_start_1
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1125
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1126
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1127
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1128
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1129
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1133
    :try_start_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchAbortNative()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 1134
    const/4 v2, 0x0

    .line 1141
    :goto_1
    if-eqz v2, :cond_0

    .line 1142
    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1117
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1136
    .restart local v1       #msg:Landroid/os/Message;
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1139
    :try_start_4
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "searchAbortNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public sendStatusEventCallbackFromLocalStore()V
    .locals 9

    .prologue
    .line 370
    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    sget-object v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    sget-object v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    sget-boolean v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 374
    return-void
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 6
    .parameter "audioMode"

    .prologue
    .line 1236
    monitor-enter p0

    const/4 v2, 0x0

    .line 1240
    .local v2, returnStatus:I
    const/4 v3, 0x2

    :try_start_0
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v4, :cond_1

    .line 1242
    const/4 v2, 0x3

    .line 1270
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 1244
    :cond_1
    const/4 v3, 0x4

    :try_start_1
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1246
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1247
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1248
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1249
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1250
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1254
    and-int/lit8 p1, p1, 0x3

    .line 1257
    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioModeNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 1258
    const/4 v2, 0x0

    .line 1265
    :goto_1
    if-eqz v2, :cond_0

    .line 1266
    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1236
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1260
    .restart local v1       #msg:Landroid/os/Message;
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    .line 1261
    :catch_0
    move-exception v0

    .line 1262
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1263
    :try_start_4
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "setAudioModeNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 6
    .parameter "audioPath"

    .prologue
    .line 1291
    monitor-enter p0

    const/4 v2, 0x0

    .line 1295
    .local v2, returnStatus:I
    const/4 v3, 0x2

    :try_start_0
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_1

    .line 1297
    const/4 v2, 0x3

    .line 1321
    :goto_0
    if-eqz v2, :cond_0

    .line 1322
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    :cond_0
    monitor-exit p0

    return v2

    .line 1299
    :cond_1
    const/4 v3, 0x4

    :try_start_1
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1301
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1302
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1303
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1304
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1305
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1309
    and-int/lit8 p1, p1, 0x3

    .line 1312
    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioPathNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 1313
    const/4 v2, 0x0

    goto :goto_0

    .line 1315
    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    .line 1316
    :catch_0
    move-exception v0

    .line 1317
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1318
    :try_start_3
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "setAudioPathNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1291
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setFMVolume(I)I
    .locals 6
    .parameter "volume"

    .prologue
    .line 1393
    monitor-enter p0

    const/4 v2, 0x0

    .line 1396
    .local v2, returnStatus:I
    if-ltz p1, :cond_0

    const/16 v3, 0x100

    if-le p1, v3, :cond_2

    .line 1398
    :cond_0
    const/4 v2, 0x4

    .line 1425
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 1399
    :cond_2
    const/4 v3, 0x2

    :try_start_0
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3

    .line 1401
    const/4 v2, 0x3

    goto :goto_0

    .line 1403
    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1405
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1406
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1407
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1408
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1409
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setFMVolumeNative(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 1414
    const/4 v2, 0x0

    .line 1421
    :goto_1
    if-eqz v2, :cond_1

    .line 1422
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1393
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1416
    .restart local v1       #msg:Landroid/os/Message;
    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    .line 1417
    :catch_0
    move-exception v0

    .line 1418
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1419
    :try_start_3
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "setFMVolumeNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .locals 4
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 1559
    monitor-enter p0

    const/4 v1, 0x0

    .line 1564
    .local v1, returnStatus:I
    if-eqz p1, :cond_1

    const/16 v2, 0xa

    if-lt p2, v2, :cond_0

    const v2, 0x186a0

    if-le p2, v2, :cond_1

    .line 1566
    :cond_0
    const/4 v1, 0x4

    .line 1588
    :goto_0
    monitor-exit p0

    return v1

    .line 1567
    :cond_1
    :try_start_0
    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v2, :cond_2

    .line 1569
    const/4 v1, 0x3

    goto :goto_0

    .line 1571
    :cond_2
    const/4 v2, 0x2

    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1574
    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getAudioQualityNative(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureSignalNotificationNative(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    .line 1576
    const/4 v1, 0x0

    .line 1584
    :goto_1
    const/4 v2, 0x2

    :try_start_2
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1559
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1578
    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    .line 1579
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1580
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x2

    .line 1581
    :try_start_3
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "setLiveAudioPolling failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .locals 11
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1170
    monitor-enter p0

    const/4 v5, 0x0

    .line 1175
    .local v5, returnStatus:I
    if-ltz p4, :cond_0

    const/16 v6, 0xff

    if-le p4, v6, :cond_2

    .line 1177
    :cond_0
    const/4 v5, 0x4

    .line 1217
    :cond_1
    :goto_0
    monitor-exit p0

    return v5

    .line 1178
    :cond_2
    const/4 v6, 0x2

    :try_start_0
    sget v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v6, v7, :cond_3

    .line 1180
    const/4 v5, 0x3

    goto :goto_0

    .line 1182
    :cond_3
    const/4 v6, 0x4

    sput v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1183
    const/4 v6, 0x0

    sput v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 1185
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1186
    .local v2, msg:Landroid/os/Message;
    const/4 v6, 0x1

    iput v6, v2, Landroid/os/Message;->what:I

    .line 1187
    const/16 v6, 0x64

    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 1188
    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1189
    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    and-int/lit8 p1, p1, 0x3

    .line 1194
    and-int/lit8 p3, p3, 0x1

    .line 1195
    and-int/lit8 p2, p2, 0x7c

    .line 1196
    if-eqz p1, :cond_4

    move v4, v9

    .line 1197
    .local v4, rdsOnNative:Z
    :goto_1
    if-eqz p3, :cond_5

    move v0, v9

    .line 1200
    .local v0, afOnNative:Z
    :goto_2
    and-int/lit8 v3, p1, 0x1

    .line 1204
    .local v3, rdsModeNative:I
    :try_start_1
    invoke-direct {p0, v4, v0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRdsModeNative(ZZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_6

    .line 1205
    const/4 v5, 0x0

    .line 1213
    :goto_3
    if-eqz v5, :cond_1

    .line 1214
    :try_start_2
    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1170
    .end local v0           #afOnNative:Z
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #rdsModeNative:I
    .end local v4           #rdsOnNative:Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v2       #msg:Landroid/os/Message;
    :cond_4
    move v4, v10

    .line 1196
    goto :goto_1

    .restart local v4       #rdsOnNative:Z
    :cond_5
    move v0, v10

    .line 1197
    goto :goto_2

    .line 1207
    .restart local v0       #afOnNative:Z
    .restart local v3       #rdsModeNative:I
    :cond_6
    const/4 v5, 0x2

    goto :goto_3

    .line 1209
    :catch_0
    move-exception v1

    .line 1210
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "FmReceiverService"

    const-string/jumbo v7, "setRdsNative failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1211
    const/4 v5, 0x2

    goto :goto_3
.end method

.method public declared-synchronized setStepSize(I)I
    .locals 6
    .parameter "stepSize"

    .prologue
    .line 1345
    monitor-enter p0

    const/4 v2, 0x0

    .line 1348
    .local v2, returnStatus:I
    const/16 v3, 0x10

    if-eq p1, v3, :cond_1

    if-eqz p1, :cond_1

    .line 1349
    const/4 v2, 0x4

    .line 1376
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 1350
    :cond_1
    const/4 v3, 0x2

    :try_start_0
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 1352
    const/4 v2, 0x3

    goto :goto_0

    .line 1354
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1356
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1357
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1358
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1359
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1360
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setScanStepNative(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 1365
    const/4 v2, 0x0

    .line 1372
    :goto_1
    if-eqz v2, :cond_0

    .line 1373
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1345
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1367
    .restart local v1       #msg:Landroid/os/Message;
    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1370
    :try_start_3
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "setScanStepNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setWorldRegion(II)I
    .locals 6
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1450
    monitor-enter p0

    const/4 v2, 0x0

    .line 1453
    .local v2, returnStatus:I
    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_1

    if-eq p1, v4, :cond_1

    .line 1456
    const/4 v2, 0x4

    .line 1486
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 1457
    :cond_1
    if-eqz p2, :cond_2

    const/16 v3, 0x40

    if-eq p2, v3, :cond_2

    .line 1459
    const/4 v2, 0x4

    goto :goto_0

    .line 1460
    :cond_2
    :try_start_0
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v4, v3, :cond_3

    .line 1462
    const/4 v2, 0x3

    goto :goto_0

    .line 1464
    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1466
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1467
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1468
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1469
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1470
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1474
    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRegionNative(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureDeemphasisNative(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 1475
    const/4 v2, 0x0

    .line 1482
    :goto_1
    if-eqz v2, :cond_0

    .line 1483
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1450
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1477
    .restart local v1       #msg:Landroid/os/Message;
    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    .line 1478
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1479
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1480
    :try_start_3
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "setRdsNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "FmReceiverService"

    const-string v1, "Service already started...Skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :goto_0
    monitor-exit p0

    return-void

    .line 208
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->startFM_Loop()V

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startFM_Loop()V
    .locals 2

    .prologue
    .line 229
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "startFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initLoopNative()V

    .line 231
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initNativeDataNative()V

    .line 232
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 220
    const-string v0, "FmReceiverService"

    const-string v1, "Service already stopped...Skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :goto_0
    monitor-exit p0

    return-void

    .line 223
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->stopFM_Loop()V

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopFM_Loop()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "stopFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->cleanupLoopNative()V

    .line 240
    return-void
.end method

.method public declared-synchronized tuneRadio(I)I
    .locals 6
    .parameter "freq"

    .prologue
    const/4 v3, 0x1

    .line 874
    monitor-enter p0

    const/4 v2, 0x0

    .line 877
    .local v2, returnStatus:I
    if-lt p1, v3, :cond_0

    const v3, 0x1869f

    if-le p1, v3, :cond_2

    .line 879
    :cond_0
    const/4 v2, 0x4

    .line 907
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 881
    :cond_2
    const/4 v3, 0x2

    :try_start_0
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3

    .line 883
    const/4 v2, 0x3

    goto :goto_0

    .line 885
    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 887
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 888
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 889
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 890
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 891
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->tuneNative(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 896
    const/4 v2, 0x0

    .line 903
    :goto_1
    if-eqz v2, :cond_1

    .line 904
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 874
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 898
    .restart local v1       #msg:Landroid/os/Message;
    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    .line 899
    :catch_0
    move-exception v0

    .line 900
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 901
    :try_start_3
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "tuneNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized turnOffRadio()I
    .locals 6

    .prologue
    .line 822
    monitor-enter p0

    const/4 v2, 0x0

    .line 824
    .local v2, returnStatus:I
    const/4 v3, 0x2

    :try_start_0
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_0

    .line 826
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 828
    :cond_0
    const/4 v3, 0x3

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 830
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 831
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 832
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 833
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 834
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 839
    const/4 v2, 0x0

    .line 847
    :goto_0
    if-eqz v2, :cond_1

    .line 848
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 855
    :cond_1
    const/4 v3, 0x0

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 857
    monitor-exit p0

    return v2

    .line 841
    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 844
    :try_start_3
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "turnOnRadioNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 822
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized turnOnRadio(I)I
    .locals 8
    .parameter "functionalityMask"

    .prologue
    const/4 v7, 0x1

    const-string v5, "FmReceiverService"

    .line 756
    monitor-enter p0

    :try_start_0
    const-string v5, "FmReceiverService"

    const-string/jumbo v6, "turnOnRadio........()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->initFmPower()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    const/4 v4, 0x0

    .line 759
    .local v4, returnStatus:I
    and-int/lit8 v3, p1, 0x3

    .line 760
    .local v3, requestedRegion:I
    and-int/lit8 v2, p1, 0x70

    .line 763
    .local v2, requestedRdsFeatures:I
    if-eq v3, v7, :cond_1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    if-eqz v3, :cond_1

    .line 767
    const/4 v4, 0x4

    .line 805
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 768
    :cond_1
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_2

    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_2

    .line 771
    const/4 v4, 0x4

    goto :goto_0

    .line 772
    :cond_2
    :try_start_1
    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eqz v5, :cond_3

    .line 774
    const/4 v4, 0x3

    goto :goto_0

    .line 776
    :cond_3
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFuncMask:I

    .line 777
    const/4 v5, 0x1

    sput v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 779
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 780
    .local v1, msg:Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v1, Landroid/os/Message;->what:I

    .line 781
    const/4 v5, 0x4

    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 782
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 783
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 787
    and-int/lit8 p1, p1, 0x73

    .line 792
    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->enableNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    if-eqz v5, :cond_4

    .line 793
    const/4 v4, 0x0

    .line 801
    :goto_1
    if-eqz v4, :cond_0

    .line 802
    :try_start_3
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 756
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #requestedRdsFeatures:I
    .end local v3           #requestedRegion:I
    .end local v4           #returnStatus:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 795
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #requestedRdsFeatures:I
    .restart local v3       #requestedRegion:I
    .restart local v4       #returnStatus:I
    :cond_4
    const/4 v4, 0x2

    goto :goto_1

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x2

    .line 799
    :try_start_4
    const-string v5, "FmReceiverService"

    const-string/jumbo v6, "turnOnRadioNative failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
