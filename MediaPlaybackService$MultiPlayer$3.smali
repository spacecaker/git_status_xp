.class Lcom/android/music/MediaPlaybackService$MultiPlayer$3;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    .line 2004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2006
    packed-switch p2, :pswitch_data_0

    .line 2018
    const-string v0, "MultiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 2021
    :goto_0
    return v0

    .line 2008
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #setter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z
    invoke-static {v0, v3}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$1(Lcom/android/music/MediaPlaybackService$MultiPlayer;Z)V

    .line 2009
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$2(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2013
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)V

    .line 2014
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$2(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2015
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$0(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$0(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v4

    .line 2016
    goto :goto_0

    .line 2006
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
