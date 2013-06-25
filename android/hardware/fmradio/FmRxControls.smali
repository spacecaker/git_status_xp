.class Landroid/hardware/fmradio/FmRxControls;
.super Ljava/lang/Object;
.source "FmRxControls.java"


# static fields
.field static final SCAN_BACKWARD:I = 0x3

.field static final SCAN_FORWARD:I = 0x2

.field static final SEEK_BACKWARD:I = 0x1

.field static final SEEK_FORWARD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FmRxControls"

.field private static final V4L2_CID_AUDIO_MUTE:I = 0x980909

.field private static final V4L2_CID_BASE:I = 0x980900

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_EMPHASIS:I = 0x800000c

.field private static final V4L2_CID_PRIVATE_TAVARUA_LP_MODE:I = 0x8000011

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_MASK:I = 0x8000006

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_PROC:I = 0x8000010

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSON:I = 0x800000f

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDS_STD:I = 0x800000d

.field private static final V4L2_CID_PRIVATE_TAVARUA_REGION:I = 0x8000007

.field private static final V4L2_CID_PRIVATE_TAVARUA_SCANDWELL:I = 0x8000002

.field private static final V4L2_CID_PRIVATE_TAVARUA_SIGNAL_TH:I = 0x8000008

.field private static final V4L2_CID_PRIVATE_TAVARUA_SPACING:I = 0x800000e

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCHMODE:I = 0x8000001

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCHON:I = 0x8000003

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_CNT:I = 0x800000b

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_PI:I = 0x800000a

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_PTY:I = 0x8000009

.field private static final V4L2_CID_PRIVATE_TAVARUA_STATE:I = 0x8000004

.field private static final V4L2_CID_PRIVATE_TAVARUA_TRANSMIT_MODE:I = 0x8000005

.field private static final V4L2_CTRL_CLASS_USER:I = 0x980000


# instance fields
.field private mFreq:I

.field private mPrgmId:I

.field private mPrgmType:I

.field private mScanTime:I

.field private mSrchDir:I

.field private mSrchListMode:I

.field private mSrchMode:I

.field private mStateMute:Z

.field private mStateStereo:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelSearch(I)V
    .locals 0
    .parameter "fd"

    .prologue
    .line 284
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->cancelSearchNative(I)I

    .line 285
    return-void
.end method

.method public fmOff(I)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 93
    const v0, 0x8000004

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 94
    return-void
.end method

.method public fmOn(II)V
    .locals 1
    .parameter "fd"
    .parameter "device"

    .prologue
    .line 86
    const v0, 0x8000004

    invoke-static {p1, v0, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 87
    return-void
.end method

.method public getFreq()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/hardware/fmradio/FmRxControls;->mFreq:I

    return v0
.end method

.method public getPwrMode(I)I
    .locals 2
    .parameter "fd"

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 308
    .local v0, re:I
    const v1, 0x8000011

    invoke-static {p1, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 310
    return v0
.end method

.method public getTunedFrequency(I)I
    .locals 1
    .parameter "fd"

    .prologue
    .line 122
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v0

    .line 124
    .local v0, frequency:I
    return v0
.end method

.method public muteControl(IZ)V
    .locals 2
    .parameter "fd"
    .parameter "on"

    .prologue
    const v1, 0x980909

    .line 100
    if-eqz p2, :cond_0

    .line 102
    const/4 v0, 0x3

    invoke-static {p1, v1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    goto :goto_0
.end method

.method public searchRdsStations(IIIII)V
    .locals 0
    .parameter "mode"
    .parameter "dwelling"
    .parameter "direction"
    .parameter "RdsSrchPty"
    .parameter "RdsSrchPI"

    .prologue
    .line 275
    return-void
.end method

.method public searchStationList(IIIII)I
    .locals 2
    .parameter "fd"
    .parameter "mode"
    .parameter "preset_num"
    .parameter "dir"
    .parameter "pty"

    .prologue
    .line 145
    const v1, 0x8000001

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 146
    .local v0, re:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 171
    :goto_0
    return v1

    .line 151
    :cond_0
    const v1, 0x800000b

    invoke-static {p1, v1, p3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 152
    if-eqz v0, :cond_1

    move v1, v0

    .line 153
    goto :goto_0

    .line 157
    :cond_1
    if-lez p5, :cond_2

    .line 158
    const v1, 0x8000009

    invoke-static {p1, v1, p5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 160
    :cond_2
    if-eqz v0, :cond_3

    move v1, v0

    .line 161
    goto :goto_0

    .line 166
    :cond_3
    invoke-static {p1, p4}, Landroid/hardware/fmradio/FmReceiverJNI;->startSearchNative(II)I

    move-result v0

    .line 167
    if-eqz v0, :cond_4

    move v1, v0

    .line 168
    goto :goto_0

    .line 171
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public searchStations(IIIIII)V
    .locals 2
    .parameter "fd"
    .parameter "mode"
    .parameter "dwell"
    .parameter "dir"
    .parameter "pty"
    .parameter "pi"

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 241
    .local v0, re:I
    const v1, 0x8000001

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 243
    const v1, 0x8000002

    invoke-static {p1, v1, p3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 245
    if-eqz p5, :cond_0

    .line 247
    const v1, 0x8000009

    invoke-static {p1, v1, p5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 250
    :cond_0
    if-eqz p6, :cond_1

    .line 252
    const v1, 0x800000a

    invoke-static {p1, v1, p6}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 255
    :cond_1
    invoke-static {p1, p4}, Landroid/hardware/fmradio/FmReceiverJNI;->startSearchNative(II)I

    move-result v0

    .line 257
    return-void
.end method

.method public setFreq(I)V
    .locals 0
    .parameter "f"

    .prologue
    .line 132
    iput p1, p0, Landroid/hardware/fmradio/FmRxControls;->mFreq:I

    .line 133
    return-void
.end method

.method public setLowPwrMode(IZ)I
    .locals 3
    .parameter "fd"
    .parameter "lpmOn"

    .prologue
    const v2, 0x8000011

    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, re:I
    if-eqz p2, :cond_0

    .line 293
    const/4 v1, 0x1

    invoke-static {p1, v2, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 299
    :goto_0
    return v0

    .line 296
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v2, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    goto :goto_0
.end method

.method public setStation(I)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 114
    iget v1, p0, Landroid/hardware/fmradio/FmRxControls;->mFreq:I

    invoke-static {p1, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setFreqNative(II)I

    move-result v0

    .line 116
    .local v0, ret:I
    return-void
.end method

.method public stationList(I)[I
    .locals 14
    .parameter "fd"

    .prologue
    const/4 v13, 0x0

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, freq:I
    const/4 v1, 0x0

    .line 182
    .local v1, i:I
    const/4 v3, 0x0

    .line 184
    .local v3, real_freq:F
    const/16 v9, 0x64

    new-array v4, v9, [B

    .line 185
    .local v4, sList:[B
    const/4 v7, 0x0

    .line 186
    .local v7, tmpFreqByte1:I
    const/4 v8, 0x0

    .line 190
    .local v8, tmpFreqByte2:I
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->getLowerBandNative(I)I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x408f400000000000L

    div-double/2addr v9, v11

    double-to-float v2, v9

    .line 192
    .local v2, lowBand:F
    invoke-static {p1, v4, v13}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    .line 194
    aget-byte v6, v4, v13

    .line 195
    .local v6, station_num:I
    add-int/lit8 v9, v6, 0x1

    new-array v5, v9, [I

    .line 198
    .local v5, stationList:[I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 202
    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-byte v9, v4, v9

    and-int/lit16 v7, v9, 0xff

    .line 203
    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x2

    aget-byte v9, v4, v9

    and-int/lit16 v8, v9, 0xff

    .line 206
    and-int/lit8 v9, v7, 0x3

    shl-int/lit8 v0, v9, 0x8

    .line 207
    or-int/2addr v0, v8

    .line 209
    int-to-double v9, v0

    const-wide v11, 0x3fa999999999999aL

    mul-double/2addr v9, v11

    double-to-float v9, v9

    add-float v3, v9, v2

    .line 211
    const/high16 v9, 0x447a

    mul-float/2addr v9, v3

    float-to-int v9, v9

    aput v9, v5, v1

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_0
    const/4 v9, 0x0

    :try_start_0
    aput v9, v5, v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_1
    return-object v5

    .line 219
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public stereoControl(IZ)I
    .locals 1
    .parameter "fd"
    .parameter "stereo"

    .prologue
    .line 262
    if-eqz p2, :cond_0

    .line 263
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setMonoStereoNative(II)I

    move-result v0

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setMonoStereoNative(II)I

    move-result v0

    goto :goto_0
.end method
