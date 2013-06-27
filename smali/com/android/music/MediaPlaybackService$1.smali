.class Lcom/android/music/MediaPlaybackService$1;
.super Landroid/os/Handler;
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
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 1
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 315
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/music/MediaPlaybackService$1;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v2, 0x1

    const-string v3, "MediaPlaybackService"

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMediaplayerHandler.handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 319
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 321
    :sswitch_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService$1;->mCurrentVolume:F

    const v1, 0x3d4ccccd

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/music/MediaPlaybackService$1;->mCurrentVolume:F

    .line 322
    iget v0, p0, Lcom/android/music/MediaPlaybackService$1;->mCurrentVolume:F

    const v1, 0x3e4ccccd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 327
    :goto_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService$1;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 329
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPausedByOtherApp:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_0

    .line 325
    :cond_1
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/android/music/MediaPlaybackService$1;->mCurrentVolume:F

    goto :goto_1

    .line 334
    :sswitch_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 335
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService$1;->mCurrentVolume:F

    .line 336
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService$1;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 337
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPausedByOtherApp:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 341
    :cond_3
    iget v0, p0, Lcom/android/music/MediaPlaybackService$1;->mCurrentVolume:F

    const v1, 0x3c23d70a

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/music/MediaPlaybackService$1;->mCurrentVolume:F

    .line 342
    iget v0, p0, Lcom/android/music/MediaPlaybackService$1;->mCurrentVolume:F

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMaxVolume:F
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->access$400(Lcom/android/music/MediaPlaybackService;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 343
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 347
    :goto_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService$1;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    goto/16 :goto_0

    .line 345
    :cond_4
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMaxVolume:F
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$400(Lcom/android/music/MediaPlaybackService;)F

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackService$1;->mCurrentVolume:F

    goto :goto_2

    .line 351
    :sswitch_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$500(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 352
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v2}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    goto/16 :goto_0

    .line 358
    :cond_5
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->openCurrent()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$600(Lcom/android/music/MediaPlaybackService;)V

    goto/16 :goto_0

    .line 362
    :sswitch_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mRepeatMode:I
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$700(Lcom/android/music/MediaPlaybackService;)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 363
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 364
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto/16 :goto_0

    .line 366
    :cond_6
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v5}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    goto/16 :goto_0

    .line 370
    :sswitch_4
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$800(Lcom/android/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 376
    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 408
    :pswitch_0
    const-string v0, "MediaPlaybackService"

    const-string v0, "Unknown audio focus change code"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 378
    :pswitch_1
    const-string v0, "MediaPlaybackService"

    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 380
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v5}, Lcom/android/music/MediaPlaybackService;->access$902(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 382
    :cond_7
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0

    .line 385
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 389
    :pswitch_3
    const-string v0, "MediaPlaybackService"

    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 391
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/android/music/MediaPlaybackService;->access$902(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 393
    :cond_8
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0

    .line 396
    :pswitch_4
    const-string v0, "MediaPlaybackService"

    const-string v0, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$900(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 398
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v5}, Lcom/android/music/MediaPlaybackService;->access$902(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 399
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService$1;->mCurrentVolume:F

    .line 400
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService$1;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 401
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto/16 :goto_0

    .line 403
    :cond_9
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 413
    :sswitch_6
    const-string v0, "MediaPlaybackService"

    const-string v0, "DrmLicenseExpired in handler"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    const v1, 0x7f090011

    #calls: Lcom/android/music/MediaPlaybackService;->showToast(I)V
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;I)V

    .line 416
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 417
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->stop()V

    .line 418
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v1, "com.android.music.metachanged"

    #calls: Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$1100(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 421
    :cond_a
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v2}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    goto/16 :goto_0

    .line 425
    :sswitch_7
    const-string v0, "MediaPlaybackService"

    const-string v0, "DrmLicenseNotFound in handler"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    const v1, 0x7f090011

    #calls: Lcom/android/music/MediaPlaybackService;->showToast(I)V
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;I)V

    .line 428
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 429
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->stop()V

    .line 430
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v1, "com.android.music.metachanged"

    #calls: Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$1100(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 433
    :cond_b
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v2}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    goto/16 :goto_0

    .line 319
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x1f4 -> :sswitch_6
        0x258 -> :sswitch_7
    .end sparse-switch

    .line 376
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
