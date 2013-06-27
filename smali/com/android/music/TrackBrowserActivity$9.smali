.class Lcom/android/music/TrackBrowserActivity$9;
.super Landroid/content/BroadcastReceiver;
.source "TrackBrowserActivity.java"


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
    .line 803
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$9;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 806
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 807
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$9;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.music.queuechanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$9;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    invoke-static {v1}, Lcom/android/music/TrackBrowserActivity;->access$500(Lcom/android/music/TrackBrowserActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 813
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$9;->this$0:Lcom/android/music/TrackBrowserActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    invoke-static {v1, v2}, Lcom/android/music/TrackBrowserActivity;->access$502(Lcom/android/music/TrackBrowserActivity;Z)Z

    goto :goto_0

    .line 818
    :cond_2
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-nez v1, :cond_3

    .line 819
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$9;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/android/music/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 822
    :cond_3
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$9;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v1}, Lcom/android/music/TrackBrowserActivity;->access$200(Lcom/android/music/TrackBrowserActivity;)Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 823
    new-instance v0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$9;->this$0:Lcom/android/music/TrackBrowserActivity;

    sget-object v2, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$9;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/music/TrackBrowserActivity;->access$900(Lcom/android/music/TrackBrowserActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;-><init>(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/IMediaPlaybackService;[Ljava/lang/String;)V

    .line 824
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 825
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$9;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/android/music/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 828
    :cond_4
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$9;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v1}, Lcom/android/music/TrackBrowserActivity;->access$200(Lcom/android/music/TrackBrowserActivity;)Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
