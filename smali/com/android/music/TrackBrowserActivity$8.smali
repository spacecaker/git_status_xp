.class Lcom/android/music/TrackBrowserActivity$8;
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
    .line 790
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$8;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 793
    if-nez p2, :cond_0

    .line 799
    :goto_0
    return-void

    .line 796
    :cond_0
    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 798
    .local v0, position:I
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$8;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/music/TrackBrowserActivity;->access$400(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/music/MusicUtils;->playAllDrm(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto :goto_0
.end method
