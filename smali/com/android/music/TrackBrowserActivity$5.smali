.class Lcom/android/music/TrackBrowserActivity$5;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/android/music/TouchInterceptor$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$5;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 5
    .parameter "from"
    .parameter "to"

    .prologue
    .line 720
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$5;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$400(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v2

    instance-of v2, v2, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v2, :cond_1

    .line 722
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$5;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$400(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    .line 723
    .local v0, c:Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;
    invoke-virtual {v0, p1, p2}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->moveItem(II)V

    .line 725
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$5;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/android/music/TrackBrowserActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 726
    .local v1, listAdaptor:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
    if-eqz v1, :cond_0

    .line 727
    invoke-virtual {v1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 729
    :cond_0
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$5;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 730
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$5;->this$0:Lcom/android/music/TrackBrowserActivity;

    const/4 v3, 0x1

    #setter for: Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    invoke-static {v2, v3}, Lcom/android/music/TrackBrowserActivity;->access$502(Lcom/android/music/TrackBrowserActivity;Z)Z

    .line 736
    .end local v0           #c:Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;
    .end local v1           #listAdaptor:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
    :goto_0
    return-void

    .line 733
    :cond_1
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$5;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/android/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$5;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/music/TrackBrowserActivity;->access$600(Lcom/android/music/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->moveItem(Landroid/content/ContentResolver;JII)Z

    goto :goto_0
.end method
