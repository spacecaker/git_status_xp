.class Lcom/android/music/ArtistAlbumBrowserActivity$3;
.super Landroid/os/Handler;
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
    .line 329
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$3;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$3;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    invoke-static {v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->access$100(Lcom/android/music/ArtistAlbumBrowserActivity;)Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$3;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$3;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    invoke-static {v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->access$100(Lcom/android/music/ArtistAlbumBrowserActivity;)Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v2}, Lcom/android/music/ArtistAlbumBrowserActivity;->access$200(Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 335
    :cond_0
    return-void
.end method
