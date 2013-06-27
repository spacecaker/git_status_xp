.class Lcom/android/music/ArtistAlbumBrowserActivity$1;
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
    .line 308
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$1;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$1;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->invalidateViews()V

    .line 312
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$1;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 313
    return-void
.end method
