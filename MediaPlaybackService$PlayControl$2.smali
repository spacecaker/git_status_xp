.class Lcom/android/music/MediaPlaybackService$PlayControl$2;
.super Ljava/util/TimerTask;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MediaPlaybackService$PlayControl;->setRWButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/MediaPlaybackService$PlayControl;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService$PlayControl;)V
    .locals 0
    .parameter

    .prologue
    .line 3165
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$PlayControl$2;->this$1:Lcom/android/music/MediaPlaybackService$PlayControl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3168
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl$2;->this$1:Lcom/android/music/MediaPlaybackService$PlayControl;

    #calls: Lcom/android/music/MediaPlaybackService$PlayControl;->rwTimerFired()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$PlayControl;->access$3800(Lcom/android/music/MediaPlaybackService$PlayControl;)V

    .line 3169
    return-void
.end method
