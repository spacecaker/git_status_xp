.class Lcom/android/music/TrackBrowserActivity$7;
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
    .line 779
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$7;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$7;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 783
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$7;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->access$800(Lcom/android/music/TrackBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$7;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 786
    :cond_0
    return-void
.end method
