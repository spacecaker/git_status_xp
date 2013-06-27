.class Lcom/android/music/PlaylistBrowserActivity$1;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/PlaylistBrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/PlaylistBrowserActivity;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/music/PlaylistBrowserActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    iput-object p2, p0, Lcom/android/music/PlaylistBrowserActivity$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/music/PlaylistBrowserActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter "classname"
    .parameter "obj"

    .prologue
    const/4 v7, 0x0

    .line 123
    const-string v5, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/android/music/PlaylistBrowserActivity$1;->val$action:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 124
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "playlist"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 125
    .local v1, id:J
    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-nez v5, :cond_0

    .line 126
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    #calls: Lcom/android/music/PlaylistBrowserActivity;->playRecentlyAdded()V
    invoke-static {v5}, Lcom/android/music/PlaylistBrowserActivity;->access$000(Lcom/android/music/PlaylistBrowserActivity;)V

    .line 146
    :goto_0
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-virtual {v5}, Lcom/android/music/PlaylistBrowserActivity;->finish()V

    .line 150
    .end local v1           #id:J
    :goto_1
    return-void

    .line 127
    .restart local v1       #id:J
    :cond_0
    const-wide/16 v5, -0x3

    cmp-long v5, v1, v5

    if-nez v5, :cond_1

    .line 128
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    #calls: Lcom/android/music/PlaylistBrowserActivity;->playPodcasts()V
    invoke-static {v5}, Lcom/android/music/PlaylistBrowserActivity;->access$100(Lcom/android/music/PlaylistBrowserActivity;)V

    goto :goto_0

    .line 129
    :cond_1
    const-wide/16 v5, -0x2

    cmp-long v5, v1, v5

    if-nez v5, :cond_3

    .line 130
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v5}, Lcom/android/music/MusicUtils;->getAllSongs(Landroid/content/Context;)[J

    move-result-object v3

    .line 131
    .local v3, list:[J
    if-eqz v3, :cond_2

    .line 132
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v5, v3, v7}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-virtual {v5}, Lcom/android/music/PlaylistBrowserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    .local v0, context:Landroid/content/Context;
    const v5, 0x7f09003b

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, message:Ljava/lang/String;
    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 144
    .end local v0           #context:Landroid/content/Context;
    .end local v3           #list:[J
    .end local v4           #message:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v5, v1, v2}, Lcom/android/music/MusicUtils;->playPlaylist(Landroid/content/Context;J)V

    goto :goto_0

    .line 149
    .end local v1           #id:J
    :cond_4
    iget-object v5, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v5}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "classname"

    .prologue
    .line 153
    return-void
.end method
