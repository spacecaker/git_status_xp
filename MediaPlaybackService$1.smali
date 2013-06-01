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
.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 225
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/16 v1, 0x64

    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mHideNotificationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$0(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mIsPaused:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$1(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->hideNotification()V

    .line 234
    :cond_0
    return-void
.end method
