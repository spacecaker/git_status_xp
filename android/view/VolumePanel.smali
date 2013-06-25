.class public Landroid/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"


# static fields
.field private static final ALARM_VOLUME_TEXT:I = 0x10403b8

.field private static final BEEP_DURATION:I = 0x96

.field private static final BLUETOOTH_INCALL_VOLUME_TEXT:I = 0x10403b7

.field private static final FM_VOLUME_TEXT:I = 0x10403b3

.field private static final FREE_DELAY:I = 0x2710

.field private static final INCALL_VOLUME_TEXT:I = 0x10403b6

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final MUSIC_VOLUME_TEXT:I = 0x10403b2

.field private static final NOTIFICATION_VOLUME_TEXT:I = 0x10403b9

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final RINGTONE_VOLUME_TEXT:I = 0x10403b1

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final UNKNOWN_VOLUME_TEXT:I = 0x10403ba

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field static final WARNING_PREV_VOLUME:I = 0xc

.field static final WARNING_VOLUME:I = 0xd

.field static getCurrentVol:I

.field static mFlag_isMusic:Z

.field static mFlag_prevol:Z


# instance fields
.field private final mAdditionalMessage:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private final mLargeStreamIcon:Landroid/widget/ImageView;

.field private final mLevel:Landroid/widget/ProgressBar;

.field private final mMessage:Landroid/widget/TextView;

.field private mRingIsSilent:Z

.field private final mSmallStreamIcon:Landroid/widget/ImageView;

.field private final mToast:Landroid/widget/Toast;

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private final mWarningMessage:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    sput-boolean v0, Landroid/view/VolumePanel;->mFlag_prevol:Z

    .line 56
    sput v0, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 57
    sput-boolean v0, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    .line 60
    sput-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 4
    .parameter "context"
    .parameter "volumeService"

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 121
    iput-object p1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 122
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 123
    iput-object p2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 124
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    .line 126
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 128
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090075

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    .line 129
    .local v1, view:Landroid/view/View;
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    .line 130
    const v2, 0x1020252

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    .line 132
    const v2, 0x1020254

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mWarningMessage:Landroid/widget/TextView;

    .line 134
    const v2, 0x1020251

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    .line 135
    const v2, 0x1020253

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    .line 136
    const v2, 0x10201af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    .line 139
    new-instance v2, Landroid/view/VolumePanel$1;

    invoke-direct {v2, p0}, Landroid/view/VolumePanel$1;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    new-array v2, v2, [Landroid/media/ToneGenerator;

    iput-object v2, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 148
    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    iput-object v2, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 149
    return-void
.end method

.method static synthetic access$000(Landroid/view/VolumePanel;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 3
    .parameter "streamType"

    .prologue
    .line 406
    monitor-enter p0

    .line 407
    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x64

    invoke-direct {v1, p1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v1, v0, p1

    monitor-exit p0

    move-object v0, v1

    .line 410
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v0, v0, p1

    monitor-exit p0

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setLargeIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 435
    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 438
    return-void
.end method

.method private setRingerIcon()V
    .locals 5

    .prologue
    .line 445
    iget-object v2, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    iget-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    .line 451
    .local v1, ringerMode:I
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRingerIcon(), ringerMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    if-nez v1, :cond_1

    .line 454
    const v0, 0x10801d9

    .line 460
    .local v0, icon:I
    :goto_0
    iget-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 461
    return-void

    .line 455
    .end local v0           #icon:I
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 456
    const v0, 0x10801d4

    .restart local v0       #icon:I
    goto :goto_0

    .line 458
    .end local v0           #icon:I
    :cond_2
    const v0, 0x10801d6

    .restart local v0       #icon:I
    goto :goto_0
.end method

.method private setSmallIcon(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 421
    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const v1, 0x10801da

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 427
    return-void

    .line 424
    :cond_0
    const v1, 0x10801db

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 481
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 509
    :goto_0
    return-void

    .line 484
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 489
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 494
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 499
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 466
    iget-object v1, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    iget-object v1, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    monitor-enter p0

    .line 470
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 471
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 474
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 470
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 476
    :cond_1
    monitor-exit p0

    .line 477
    return-void

    .line 476
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPlaySound(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v2, 0x3

    .line 365
    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 368
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 371
    :cond_0
    monitor-enter p0

    .line 372
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 373
    .local v0, toneGen:Landroid/media/ToneGenerator;
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 374
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 377
    return-void

    .line 374
    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onShowVolumeChanged(II)V
    .locals 12
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "VolumePanel"

    .line 186
    iget-object v7, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v7, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v1

    .line 187
    .local v1, index:I
    const v3, 0x10403ba

    .line 188
    .local v3, message:I
    const/4 v0, 0x0

    .line 189
    .local v0, additionalMessage:I
    const/4 v6, 0x0

    .line 191
    .local v6, warningMessage:I
    iput-boolean v9, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    .line 193
    sget-boolean v7, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_0

    .line 194
    const-string v7, "VolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onShowVolumeChanged(streamType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", flags: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    iget-object v7, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v7, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v2

    .line 201
    .local v2, max:I
    packed-switch p1, :pswitch_data_0

    .line 316
    :cond_1
    :goto_0
    :pswitch_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, messageString:Ljava/lang/String;
    iget-object v7, p0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 318
    iget-object v7, p0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_2
    if-nez v0, :cond_d

    .line 322
    iget-object v7, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    :goto_1
    iget-object v7, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getMax()I

    move-result v7

    if-eq v2, v7, :cond_3

    .line 329
    iget-object v7, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 331
    :cond_3
    iget-object v7, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 333
    sget-object v7, Lcom/samsung/android/regionoperator/NonEuro;->INSTANCE:Lcom/samsung/android/regionoperator/NonEuro;

    invoke-virtual {v7}, Lcom/samsung/android/regionoperator/NonEuro;->isNonEuro()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 336
    sget-boolean v7, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    if-ne v7, v10, :cond_e

    .line 338
    sget-boolean v7, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_4

    const-string v7, "VolumePanel"

    const-string v7, "mFlag_isMusic == true"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_4
    sget-boolean v7, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_5

    const-string v7, "VolumePanel"

    const-string v7, "Show Waring Toast"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_5
    const v6, 0x1040460

    .line 341
    iget-object v7, p0, Landroid/view/VolumePanel;->mWarningMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    sput-boolean v9, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    .line 349
    :cond_6
    :goto_2
    iget-object v7, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    iget-object v8, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 350
    iget-object v7, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v7, v9}, Landroid/widget/Toast;->setDuration(I)V

    .line 351
    iget-object v7, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    const/16 v8, 0x30

    invoke-virtual {v7, v8, v9, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 352
    iget-object v7, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 355
    and-int/lit8 v7, p2, 0x10

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v7, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v7}, Landroid/media/AudioService;->getRingerMode()I

    move-result v7

    if-ne v7, v10, :cond_7

    iget-object v7, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v7, v9}, Landroid/media/AudioService;->shouldVibrate(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 359
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {p0, v7, v8, v9}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 361
    :cond_7
    return-void

    .line 204
    .end local v4           #messageString:Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Landroid/view/VolumePanel;->setRingerIcon()V

    .line 205
    const v3, 0x10403b1

    .line 206
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v7, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 208
    .local v5, ringuri:Landroid/net/Uri;
    if-nez v5, :cond_1

    .line 209
    const v0, 0x10403b5

    .line 211
    iput-boolean v10, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 217
    .end local v5           #ringuri:Landroid/net/Uri;
    :pswitch_2
    sget-object v7, Lcom/samsung/android/regionoperator/NonEuro;->INSTANCE:Lcom/samsung/android/regionoperator/NonEuro;

    invoke-virtual {v7}, Lcom/samsung/android/regionoperator/NonEuro;->isNonEuro()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 220
    iget-object v7, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    sput v7, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 222
    sget v7, Landroid/view/VolumePanel;->getCurrentVol:I

    const/16 v8, 0xc

    if-ne v7, v8, :cond_9

    .line 224
    sget-boolean v7, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_8

    const-string v7, "VolumePanel"

    const-string v7, "kdh debug line-1"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_8
    sput-boolean v10, Landroid/view/VolumePanel;->mFlag_prevol:Z

    .line 228
    :cond_9
    sget v7, Landroid/view/VolumePanel;->getCurrentVol:I

    const/16 v8, 0xd

    if-ne v7, v8, :cond_b

    sget-boolean v7, Landroid/view/VolumePanel;->mFlag_prevol:Z

    if-ne v7, v10, :cond_b

    .line 230
    sget-boolean v7, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_a

    const-string v7, "VolumePanel"

    const-string v7, "kdh debug line-2"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_a
    sput-boolean v10, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    .line 232
    sput-boolean v9, Landroid/view/VolumePanel;->mFlag_prevol:Z

    .line 235
    :cond_b
    const v3, 0x10403b2

    .line 236
    iget-object v7, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 237
    const v0, 0x10403b4

    .line 239
    const v7, 0x10801d7

    invoke-direct {p0, v7}, Landroid/view/VolumePanel;->setLargeIcon(I)V

    goto/16 :goto_0

    .line 241
    :cond_c
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    .line 247
    :pswitch_3
    const v3, 0x10403b3

    .line 264
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    .line 276
    :pswitch_4
    add-int/lit8 v1, v1, 0x1

    .line 277
    add-int/lit8 v2, v2, 0x1

    .line 278
    const v3, 0x10403b6

    .line 279
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    .line 284
    :pswitch_5
    const v3, 0x10403b8

    .line 285
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    .line 290
    :pswitch_6
    const v3, 0x10403b9

    .line 291
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    .line 292
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 294
    .restart local v5       #ringuri:Landroid/net/Uri;
    if-nez v5, :cond_1

    .line 295
    const v0, 0x10403b5

    .line 297
    iput-boolean v10, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 308
    .end local v5           #ringuri:Landroid/net/Uri;
    :pswitch_7
    add-int/lit8 v1, v1, 0x1

    .line 309
    add-int/lit8 v2, v2, 0x1

    .line 310
    const v3, 0x10403b7

    .line 311
    const v7, 0x10801d8

    invoke-direct {p0, v7}, Landroid/view/VolumePanel;->setLargeIcon(I)V

    goto/16 :goto_0

    .line 324
    .restart local v4       #messageString:Ljava/lang/String;
    :cond_d
    iget-object v7, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v7, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 345
    :cond_e
    sget-boolean v7, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_f

    const-string v7, "VolumePanel"

    const-string v7, "mFlag_isMusic != true"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_f
    iget-object v7, p0, Landroid/view/VolumePanel;->mWarningMessage:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 201
    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 381
    monitor-enter p0

    .line 382
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 383
    .local v1, numStreamTypes:I
    const/4 v3, 0x1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 384
    iget-object v3, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 385
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 383
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 389
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 390
    return-void

    .line 389
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 164
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 170
    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_2

    .line 171
    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 172
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 175
    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3

    .line 176
    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 177
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 178
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 181
    :cond_3
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 182
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 183
    return-void
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 154
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
