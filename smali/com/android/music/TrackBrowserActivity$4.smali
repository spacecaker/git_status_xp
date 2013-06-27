.class Lcom/android/music/TrackBrowserActivity$4;
.super Landroid/os/Handler;
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
    .line 510
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$4;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$4;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->access$200(Lcom/android/music/TrackBrowserActivity;)Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$4;->this$0:Lcom/android/music/TrackBrowserActivity;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$4;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v1}, Lcom/android/music/TrackBrowserActivity;->access$200(Lcom/android/music/TrackBrowserActivity;)Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    #calls: Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v0, v1, v2, v3}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 519
    :cond_0
    return-void
.end method
