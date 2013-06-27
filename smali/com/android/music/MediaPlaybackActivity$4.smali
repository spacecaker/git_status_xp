.class Lcom/android/music/MediaPlaybackActivity$4;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener$TouchHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MediaPlaybackActivity;->initLayout()V
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
    .line 496
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$4;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doHandle()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 501
    const-string v0, "###"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlaybackActivity doHandle :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$4;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-boolean v2, v2, Lcom/android/music/MediaPlaybackActivity;->isShownAdditionalBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$4;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackActivity;->reNomalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$4;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackActivity;->reNomalHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$4;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-boolean v0, v0, Lcom/android/music/MediaPlaybackActivity;->isShownAdditionalBar:Z

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$4;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackActivity;->hideAdditionalPanel()V

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$4;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$4;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-boolean v1, v1, Lcom/android/music/MediaPlaybackActivity;->isShownAdditionalBar:Z

    iput-boolean v1, v0, Lcom/android/music/MediaPlaybackActivity;->isShowPanel:Z

    .line 516
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$4;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v0, v3, v3}, Lcom/android/music/MediaPlaybackActivity;->showAdditionalPanel(ZZ)V

    goto :goto_0
.end method
