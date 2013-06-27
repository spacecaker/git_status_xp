.class Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 767
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$0:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 768
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 769
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 774
    if-eqz p3, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$0:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    #getter for: Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;
    invoke-static {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->access$500(Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/android/music/PlaylistBrowserActivity;

    move-result-object v0

    #calls: Lcom/android/music/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/music/PlaylistBrowserActivity;->access$600(Lcom/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p3

    .line 779
    :cond_0
    invoke-static {}, Lcom/android/music/PlaylistBrowserActivity;->access$700()Z

    move-result v0

    if-nez v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$0:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    #getter for: Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;
    invoke-static {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->access$500(Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/android/music/PlaylistBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/music/PlaylistBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 782
    :cond_1
    return-void
.end method
