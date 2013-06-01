.class Lcom/android/music/MediaPlaybackService$3;
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
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 273
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 274
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/music/MediaPlaybackService$3;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-wide/16 v6, 0xa

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mMediaplayerHandler.handleMessage "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 280
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService$3;->mCurrentVolume:F

    .line 282
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$6(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService$3;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 283
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 284
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$7(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 286
    :cond_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService$3;->mCurrentVolume:F

    const v1, 0x3c23d70a

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/music/MediaPlaybackService$3;->mCurrentVolume:F

    .line 287
    iget v0, p0, Lcom/android/music/MediaPlaybackService$3;->mCurrentVolume:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$7(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 292
    :goto_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$6(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService$3;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    goto :goto_0

    .line 290
    :cond_1
    iput v2, p0, Lcom/android/music/MediaPlaybackService$3;->mCurrentVolume:F

    goto :goto_1

    .line 296
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$8(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v4}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    goto :goto_0

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->openCurrent()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$9(Lcom/android/music/MediaPlaybackService;)V

    goto :goto_0

    .line 307
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mRepeatMode:I
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$10(Lcom/android/music/MediaPlaybackService;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 308
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 309
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_0

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mOneShot:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$11(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v3}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    goto/16 :goto_0

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v1, "com.android.music.playbackcomplete"

    #calls: Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$12(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0, v3}, Lcom/android/music/MediaPlaybackService;->access$13(Lcom/android/music/MediaPlaybackService;Z)V

    goto/16 :goto_0

    .line 318
    :pswitch_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$14(Lcom/android/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
