.class Lcom/android/music/MediaPlaybackService$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 446
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, action:Ljava/lang/String;
    const-string v7, "command"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, cmd:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIntentReceiver.onReceive "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 449
    const-string v7, "next"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.android.music.musicservicecommand.next"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 450
    :cond_0
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 594
    :cond_1
    :goto_0
    return-void

    .line 451
    :cond_2
    const-string v7, "previous"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 452
    :cond_3
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService;->prev()V

    goto :goto_0

    .line 453
    :cond_4
    const-string v7, "togglepause"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 454
    :cond_5
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 455
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 456
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v8, 0x0

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v7, v8}, Lcom/android/music/MediaPlaybackService;->access$902(Lcom/android/music/MediaPlaybackService;Z)Z

    goto :goto_0

    .line 458
    :cond_6
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_0

    .line 464
    :cond_7
    const-string v7, "com.android.music.musicservicecommand.rew.down"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 465
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$PlayControl;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 466
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$PlayControl;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/music/MediaPlaybackService$PlayControl;->setRWButton(Z)V

    goto :goto_0

    .line 469
    :cond_8
    const-string v7, "com.android.music.musicservicecommand.rew.up"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 470
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$PlayControl;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 471
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$PlayControl;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/music/MediaPlaybackService$PlayControl;->setRWButton(Z)V

    goto/16 :goto_0

    .line 474
    :cond_9
    const-string v7, "com.android.music.musicservicecommand.ff.down"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 475
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$PlayControl;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 476
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$PlayControl;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/music/MediaPlaybackService$PlayControl;->setFFButton(Z)V

    goto/16 :goto_0

    .line 479
    :cond_a
    const-string v7, "com.android.music.musicservicecommand.ff.up"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 480
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$PlayControl;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 481
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$PlayControl;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/music/MediaPlaybackService$PlayControl;->setFFButton(Z)V

    goto/16 :goto_0

    .line 487
    :cond_b
    const-string v7, "pause"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 489
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "from"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 490
    .local v4, from:Ljava/lang/String;
    invoke-static {}, Lcom/android/music/MediaPlaybackService;->access$1300()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 493
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v8, 0x1

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByOtherApp:Z
    invoke-static {v7, v8}, Lcom/android/music/MediaPlaybackService;->access$302(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 494
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 496
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "command"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "stop"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 497
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService;->hideNotification()V

    .line 499
    :cond_d
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v8, 0x0

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v7, v8}, Lcom/android/music/MediaPlaybackService;->access$902(Lcom/android/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 500
    .end local v4           #from:Ljava/lang/String;
    :cond_e
    const-string v7, "stop"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 501
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 502
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v8, 0x0

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v7, v8}, Lcom/android/music/MediaPlaybackService;->access$902(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 503
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 505
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService;->hideNotification()V

    goto/16 :goto_0

    .line 507
    :cond_f
    const-string v7, "appwidgetupdate"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 510
    const-string v7, "appWidgetIds"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 511
    .local v2, appWidgetIds:[I
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$1400(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider;

    move-result-object v7

    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v7, v8, v2}, Lcom/android/music/MediaAppWidgetProvider;->performUpdate(Lcom/android/music/MediaPlaybackService;[I)V

    goto/16 :goto_0

    .line 515
    .end local v2           #appWidgetIds:[I
    :cond_10
    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 516
    const-string v7, "state"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 519
    .local v6, state:I
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const/high16 v8, 0x3f80

    #setter for: Lcom/android/music/MediaPlaybackService;->mMaxVolume:F
    invoke-static {v7, v8}, Lcom/android/music/MediaPlaybackService;->access$402(Lcom/android/music/MediaPlaybackService;F)F

    .line 520
    const/4 v7, 0x1

    if-eq v6, v7, :cond_14

    .line 522
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->turnOffMTMV()V
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$1500(Lcom/android/music/MediaPlaybackService;)V

    .line 523
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 524
    .local v1, am:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v7

    if-nez v7, :cond_11

    .line 525
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->turnOffEQ()V
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$1600(Lcom/android/music/MediaPlaybackService;)V

    .line 527
    :cond_11
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->isMidiFile()Z
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$1700(Lcom/android/music/MediaPlaybackService;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 528
    const-string v7, "MediaPlaybackService"

    const-string v8, "headset unplugged!! and set volume for midi file"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->getMidiSpeakerVolume()F
    invoke-static {v8}, Lcom/android/music/MediaPlaybackService;->access$1800(Lcom/android/music/MediaPlaybackService;)F

    move-result v8

    #setter for: Lcom/android/music/MediaPlaybackService;->mMaxVolume:F
    invoke-static {v7, v8}, Lcom/android/music/MediaPlaybackService;->access$402(Lcom/android/music/MediaPlaybackService;F)F

    .line 531
    :cond_12
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mSpkVolume:I
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$1900(Lcom/android/music/MediaPlaybackService;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_13

    .line 533
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v8}, Lcom/android/music/MediaPlaybackService;->access$2000(Lcom/android/music/MediaPlaybackService;)Landroid/media/AudioManager;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    #setter for: Lcom/android/music/MediaPlaybackService;->mSpkVolume:I
    invoke-static {v7, v8}, Lcom/android/music/MediaPlaybackService;->access$1902(Lcom/android/music/MediaPlaybackService;I)I

    .line 534
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$2000(Lcom/android/music/MediaPlaybackService;)Landroid/media/AudioManager;

    move-result-object v7

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mSpkVolume:I
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService;->access$1900(Lcom/android/music/MediaPlaybackService;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 548
    .end local v1           #am:Landroid/media/AudioManager;
    :cond_13
    :goto_1
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 549
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMaxVolume:F
    invoke-static {v8}, Lcom/android/music/MediaPlaybackService;->access$400(Lcom/android/music/MediaPlaybackService;)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    goto/16 :goto_0

    .line 536
    :cond_14
    const/4 v7, 0x1

    if-ne v6, v7, :cond_13

    .line 538
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v8}, Lcom/android/music/MediaPlaybackService;->access$2000(Lcom/android/music/MediaPlaybackService;)Landroid/media/AudioManager;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    #setter for: Lcom/android/music/MediaPlaybackService;->mSpkVolume:I
    invoke-static {v7, v8}, Lcom/android/music/MediaPlaybackService;->access$1902(Lcom/android/music/MediaPlaybackService;I)I

    .line 539
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mSpkVolume:I
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$1900(Lcom/android/music/MediaPlaybackService;)I

    move-result v7

    const/16 v8, 0x8

    if-le v7, v8, :cond_15

    .line 540
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$2000(Lcom/android/music/MediaPlaybackService;)Landroid/media/AudioManager;

    move-result-object v7

    const/4 v8, 0x3

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 541
    const-string v7, "MediaPlaybackService"

    const-string v8, "headset inserted and change volume to level 8"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_15
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->isMidiFile()Z
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$1700(Lcom/android/music/MediaPlaybackService;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 544
    const-string v7, "MediaPlaybackService"

    const-string v8, "headset inserted!! and set volume for midi file"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v8, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->getMidiHeadsetVolume()F
    invoke-static {v8}, Lcom/android/music/MediaPlaybackService;->access$2100(Lcom/android/music/MediaPlaybackService;)F

    move-result v8

    #setter for: Lcom/android/music/MediaPlaybackService;->mMaxVolume:F
    invoke-static {v7, v8}, Lcom/android/music/MediaPlaybackService;->access$402(Lcom/android/music/MediaPlaybackService;F)F

    goto :goto_1

    .line 556
    .end local v6           #state:I
    :cond_16
    const-string v7, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 557
    const-string v7, "android.bluetooth.a2dp.extra.SINK_STATE"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 559
    .local v5, sinkState:I
    if-nez v5, :cond_1

    .line 560
    const-string v7, "MediaPlaybackService"

    const-string v8, "###############A2DP Disconnected"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 562
    .restart local v1       #am:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v7

    if-nez v7, :cond_1

    .line 563
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->turnOffEQ()V
    invoke-static {v7}, Lcom/android/music/MediaPlaybackService;->access$1600(Lcom/android/music/MediaPlaybackService;)V

    goto/16 :goto_0
.end method
