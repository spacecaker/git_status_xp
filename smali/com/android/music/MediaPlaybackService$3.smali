.class Lcom/android/music/MediaPlaybackService$3;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 644
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4
    .parameter "focusChange"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x5

    const-string v2, "MediaPlaybackService"

    .line 647
    packed-switch p1, :pswitch_data_0

    .line 693
    :pswitch_0
    const-string v0, "MediaPlaybackService"

    const-string v0, "Unknown audio focus change code"

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 649
    :pswitch_1
    const-string v0, "MediaPlaybackService"

    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$PlayControl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$PlayControl;

    move-result-object v0

    #calls: Lcom/android/music/MediaPlaybackService$PlayControl;->cancelAllTimer()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$PlayControl;->access$2200(Lcom/android/music/MediaPlaybackService$PlayControl;)V

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v3}, Lcom/android/music/MediaPlaybackService;->access$902(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 661
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 666
    :pswitch_2
    const-string v0, "MediaPlaybackService"

    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 669
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 671
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$PlayControl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 672
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$PlayControl;

    move-result-object v0

    #calls: Lcom/android/music/MediaPlaybackService$PlayControl;->cancelAllTimer()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$PlayControl;->access$2200(Lcom/android/music/MediaPlaybackService$PlayControl;)V

    .line 676
    :cond_4
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mResumeAfterAlarm:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$2300(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    :cond_5
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v1, 0x1

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$902(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 682
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0

    .line 686
    :pswitch_3
    const-string v0, "MediaPlaybackService"

    const-string v0, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$900(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v3}, Lcom/android/music/MediaPlaybackService;->access$902(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 689
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->startAndFadeIn()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$2400(Lcom/android/music/MediaPlaybackService;)V

    goto/16 :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
