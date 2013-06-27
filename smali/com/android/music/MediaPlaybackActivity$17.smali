.class Lcom/android/music/MediaPlaybackActivity$17;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2111
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v2, "###"

    .line 2114
    const-string v1, "###"

    const-string v1, "BroadcastReceiver onReceive~~"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2116
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2119
    const-string v1, "###"

    const-string v1, "META_CHANGED~~!!!!!"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$3400(Lcom/android/music/MediaPlaybackActivity;)V

    .line 2123
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$3000(Lcom/android/music/MediaPlaybackActivity;)V

    .line 2124
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v2, 0x1

    #calls: Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v1, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->access$3300(Lcom/android/music/MediaPlaybackActivity;J)V

    .line 2136
    :cond_0
    :goto_0
    return-void

    .line 2125
    :cond_1
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2126
    const-string v1, "###"

    const-string v1, "PLAYSTATE_CHANGED~~!!!!!"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$3000(Lcom/android/music/MediaPlaybackActivity;)V

    goto :goto_0

    .line 2130
    :cond_2
    const-string v1, "com.android.music.turnoffmtmv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2131
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->toggleMTMV()V
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$3500(Lcom/android/music/MediaPlaybackActivity;)V

    goto :goto_0

    .line 2132
    :cond_3
    const-string v1, "com.android.music.turnoffeq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2133
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->turnOffEQ()V
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$3600(Lcom/android/music/MediaPlaybackActivity;)V

    goto :goto_0
.end method
