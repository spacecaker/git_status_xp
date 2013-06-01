.class Lcom/android/music/MediaPlaybackService$6;
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
.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 851
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 855
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$23(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$24(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mIsPaused:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$1(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$7(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$25(Lcom/android/music/MediaPlaybackService;Z)V

    .line 863
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->hideNotification()V

    .line 864
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->sendMediaPlayInfo()V

    .line 865
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$6;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mServiceStartId:I
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->access$26(Lcom/android/music/MediaPlaybackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService;->stopSelf(I)V

    goto :goto_0
.end method
