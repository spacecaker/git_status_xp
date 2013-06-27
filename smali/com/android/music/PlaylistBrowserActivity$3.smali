.class Lcom/android/music/PlaylistBrowserActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/PlaylistBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 365
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 366
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/PlaylistBrowserActivity;->access$200(Lcom/android/music/PlaylistBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 369
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/PlaylistBrowserActivity;->access$200(Lcom/android/music/PlaylistBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 373
    :cond_0
    return-void
.end method
