.class Lcom/android/music/QueryBrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/QueryBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/QueryBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/music/QueryBrowserActivity$2;->this$0:Lcom/android/music/QueryBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 307
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity$2;->this$0:Lcom/android/music/QueryBrowserActivity;

    invoke-virtual {v1}, Lcom/android/music/QueryBrowserActivity;->finish()V

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity$2;->this$0:Lcom/android/music/QueryBrowserActivity;

    invoke-static {v1}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 317
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity$2;->this$0:Lcom/android/music/QueryBrowserActivity;

    #getter for: Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/music/QueryBrowserActivity;->access$100(Lcom/android/music/QueryBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 318
    return-void
.end method
