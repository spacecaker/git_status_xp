.class Lcom/android/music/ArtistAlbumBrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ArtistAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/ArtistAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/ArtistAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/ArtistAlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$2;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

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

    .line 318
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$2;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 319
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$2;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->access$000(Lcom/android/music/ArtistAlbumBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 320
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-static {}, Lcom/android/music/MusicUtils;->clearAlbumArtCache()V

    .line 323
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$2;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->access$000(Lcom/android/music/ArtistAlbumBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 326
    :cond_0
    return-void
.end method
