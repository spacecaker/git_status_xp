.class Lcom/android/music/MediaPlaybackService$5;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MediaPlaybackService;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const-string v5, "where"

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    .line 1400
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1403
    .local v0, action:Ljava/lang/String;
    const-string v1, "where"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1404
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "where"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "myfiles"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1429
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1411
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V
    invoke-static {v1, v3}, Lcom/android/music/MediaPlaybackService;->access$2600(Lcom/android/music/MediaPlaybackService;Z)V

    .line 1413
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/android/music/MediaPlaybackService;->mQueueIsSaveable:Z
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackService;->access$2802(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 1414
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/music/MediaPlaybackService;->closeExternalStorageFiles(Ljava/lang/String;)V

    goto :goto_0

    .line 1415
    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1417
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->access$200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->access$200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1418
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 1421
    :cond_3
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->access$2908(Lcom/android/music/MediaPlaybackService;)I

    .line 1422
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v2}, Lcom/android/music/MusicUtils;->getCardId(Landroid/content/Context;)I

    move-result v2

    #setter for: Lcom/android/music/MediaPlaybackService;->mCardId:I
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackService;->access$3002(Lcom/android/music/MediaPlaybackService;I)I

    .line 1423
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->reloadQueue()V
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->access$3100(Lcom/android/music/MediaPlaybackService;)V

    .line 1425
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mQueueIsSaveable:Z
    invoke-static {v1, v3}, Lcom/android/music/MediaPlaybackService;->access$2802(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 1426
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v2, "com.android.music.queuechanged"

    #calls: Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackService;->access$1100(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 1427
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v2, "com.android.music.metachanged"

    #calls: Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackService;->access$1100(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0
.end method
