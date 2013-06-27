.class Lcom/android/music/MediaPlaybackActivity$11;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 942
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v1, -0x1

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v0, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$002(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 949
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 951
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mIsPossibleNextPrevButton:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$1400(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackActivity;->reNomalHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 956
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->prev()V

    .line 957
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mIsPossibleNextPrevButton:Z
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->access$1402(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 958
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$1500(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 970
    :catch_0
    move-exception v0

    goto :goto_0

    .line 962
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    .line 963
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->play()V

    .line 966
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$1600(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 967
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$1600(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
