.class Lcom/android/music/MediaPlaybackService$MultiPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 2982
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    const/4 v3, 0x1

    .line 2989
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$800(Lcom/android/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2991
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2992
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2994
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2995
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2996
    return-void
.end method
