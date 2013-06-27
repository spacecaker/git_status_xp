.class Lcom/android/music/PlaylistBrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/PlaylistBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity$2;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$2;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 358
    return-void
.end method
