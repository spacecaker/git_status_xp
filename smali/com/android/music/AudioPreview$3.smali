.class Lcom/android/music/AudioPreview$3;
.super Landroid/content/BroadcastReceiver;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/android/music/AudioPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 419
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, action:Ljava/lang/String;
    const-string v2, "command"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, cmd:Ljava/lang/String;
    const-string v2, "togglepause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    iget-object v2, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v2}, Lcom/android/music/AudioPreview;->access$400(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/music/AudioPreview$PreviewPlayer;->pause()V

    .line 423
    iget-object v2, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    #calls: Lcom/android/music/AudioPreview;->updatePlayPause()V
    invoke-static {v2}, Lcom/android/music/AudioPreview;->access$800(Lcom/android/music/AudioPreview;)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    #calls: Lcom/android/music/AudioPreview;->setFileVolume()V
    invoke-static {v2}, Lcom/android/music/AudioPreview;->access$900(Lcom/android/music/AudioPreview;)V

    goto :goto_0
.end method
