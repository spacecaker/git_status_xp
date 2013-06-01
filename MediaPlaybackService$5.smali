.class Lcom/android/music/MediaPlaybackService$5;
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
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .parameter "focusChange"

    .prologue
    const/4 v2, 0x0

    const-string v1, "MediaPlaybackService"

    .line 431
    packed-switch p1, :pswitch_data_0

    .line 455
    :pswitch_0
    const-string v0, "MediaPlaybackService"

    const-string v0, "Unknown audio focus change code"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 433
    :pswitch_1
    const-string v0, "MediaPlaybackService"

    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/android/music/MediaPlaybackService;->access$15(Lcom/android/music/MediaPlaybackService;Z)V

    .line 436
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 441
    :pswitch_2
    const-string v0, "MediaPlaybackService"

    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v1, 0x1

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$15(Lcom/android/music/MediaPlaybackService;Z)V

    .line 444
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 448
    :pswitch_3
    const-string v0, "MediaPlaybackService"

    const-string v0, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$23(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/android/music/MediaPlaybackService;->access$15(Lcom/android/music/MediaPlaybackService;Z)V

    .line 451
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->startAndFadeIn()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$5(Lcom/android/music/MediaPlaybackService;)V

    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
