.class Landroid/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 11
    .parameter "mp"

    .prologue
    const-wide/16 v9, 0x3e8

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 313
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mCurrentState:I
    invoke-static {v2, v5}, Landroid/widget/VideoView;->access$202(Landroid/widget/VideoView;I)I

    .line 316
    invoke-virtual {p1, v6, v6}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 319
    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_c

    .line 320
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    const/16 v3, 0x1d

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1d

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_0
    move v3, v7

    :goto_0
    #setter for: Landroid/widget/VideoView;->mCanPause:Z
    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;Z)Z

    .line 322
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_1
    move v3, v7

    :goto_1
    #setter for: Landroid/widget/VideoView;->mCanSeekBack:Z
    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;Z)Z

    .line 324
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    const/16 v3, 0x1f

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1f

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_2
    move v3, v7

    :goto_2
    #setter for: Landroid/widget/VideoView;->mCanSeekForward:Z
    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$502(Landroid/widget/VideoView;Z)Z

    .line 330
    :goto_3
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 331
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rtsp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    if-gez v2, :cond_3

    .line 332
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mCanSeekForward:Z
    invoke-static {v4, v6}, Landroid/widget/VideoView;->access$502(Landroid/widget/VideoView;Z)Z

    move-result v4

    #setter for: Landroid/widget/VideoView;->mCanSeekBack:Z
    invoke-static {v3, v4}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;Z)Z

    move-result v3

    #setter for: Landroid/widget/VideoView;->mCanPause:Z
    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;Z)Z

    .line 336
    :cond_3
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 337
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 339
    :cond_4
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 340
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 342
    :cond_5
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    #setter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$002(Landroid/widget/VideoView;I)I

    .line 343
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    #setter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$102(Landroid/widget/VideoView;I)I

    .line 345
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)I

    move-result v1

    .line 346
    .local v1, seekToPosition:I
    if-eqz v1, :cond_6

    .line 348
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 349
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rtsp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 350
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/VideoView;->access$1100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "skipping seekTo when rtsp scheme"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_6
    :goto_4
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_13

    .line 361
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v3}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 366
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSurfaceWidth:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v3}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v3

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSurfaceHeight:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1300(Landroid/widget/VideoView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v3}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 374
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1400(Landroid/widget/VideoView;)I

    move-result v2

    if-eq v2, v8, :cond_7

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1400(Landroid/widget/VideoView;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_f

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mStateWhenSuspended:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1500(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, v8, :cond_f

    .line 375
    :cond_7
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 376
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 378
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 407
    :cond_8
    :goto_5
    return-void

    .end local v1           #seekToPosition:I
    :cond_9
    move v3, v6

    .line 320
    goto/16 :goto_0

    :cond_a
    move v3, v6

    .line 322
    goto/16 :goto_1

    :cond_b
    move v3, v6

    .line 324
    goto/16 :goto_2

    .line 327
    :cond_c
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mCanSeekForward:Z
    invoke-static {v4, v7}, Landroid/widget/VideoView;->access$502(Landroid/widget/VideoView;Z)Z

    move-result v4

    #setter for: Landroid/widget/VideoView;->mCanSeekBack:Z
    invoke-static {v3, v4}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;Z)Z

    move-result v3

    #setter for: Landroid/widget/VideoView;->mCanPause:Z
    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;Z)Z

    goto/16 :goto_3

    .line 353
    .restart local v1       #seekToPosition:I
    :cond_d
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->seekTo(I)V

    goto/16 :goto_4

    .line 356
    :cond_e
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->seekTo(I)V

    goto/16 :goto_4

    .line 381
    :cond_f
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_11

    if-nez v1, :cond_10

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    if-lez v2, :cond_11

    .line 382
    :cond_10
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 384
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 387
    :cond_11
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 388
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1400(Landroid/widget/VideoView;)I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rtsp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 390
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mStateWhenPaused:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1600(Landroid/widget/VideoView;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_12

    .line 391
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 393
    :cond_12
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 394
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 403
    :cond_13
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1400(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, v8, :cond_8

    .line 404
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    goto/16 :goto_5
.end method
