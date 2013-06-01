.class Lcom/android/music/MediaPlaybackService$7;
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
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$7;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 888
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 891
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 893
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$7;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackService;->access$25(Lcom/android/music/MediaPlaybackService;Z)V

    .line 894
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$7;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mOneShot:Z
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackService;->access$27(Lcom/android/music/MediaPlaybackService;Z)V

    .line 897
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$7;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/music/MediaPlaybackService;->closeExternalStorageFiles(Ljava/lang/String;)V

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 899
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$7;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->access$28(Lcom/android/music/MediaPlaybackService;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackService;->access$29(Lcom/android/music/MediaPlaybackService;I)V

    .line 900
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$7;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$7;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v2}, Lcom/android/music/MusicUtils;->getCardId(Landroid/content/Context;)I

    move-result v2

    #setter for: Lcom/android/music/MediaPlaybackService;->mCardId:I
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackService;->access$30(Lcom/android/music/MediaPlaybackService;I)V

    .line 901
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$7;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->reloadQueue()V
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->access$31(Lcom/android/music/MediaPlaybackService;)V

    .line 902
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$7;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v2, "com.android.music.queuechanged"

    #calls: Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackService;->access$12(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 903
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$7;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v2, "com.android.music.metachanged"

    #calls: Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackService;->access$12(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0
.end method
