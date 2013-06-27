.class Lcom/android/music/AlbumBrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/AlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

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

    .line 310
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 311
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/AlbumBrowserActivity;->access$000(Lcom/android/music/AlbumBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 312
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-static {}, Lcom/android/music/MusicUtils;->clearAlbumArtCache()V

    .line 315
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/AlbumBrowserActivity;->access$000(Lcom/android/music/AlbumBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 318
    :cond_0
    return-void
.end method
