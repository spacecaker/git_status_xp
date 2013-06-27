.class Lcom/android/music/MediaPlaybackService$MultiPlayer$2;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 3000
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/16 v2, 0x1f4

    const/4 v3, 0x0

    const-wide/16 v5, 0x1f4

    const/4 v4, 0x1

    const-string v1, "MediaPlaybackService"

    .line 3005
    packed-switch p3, :pswitch_data_0

    .line 3026
    sparse-switch p2, :sswitch_data_0

    .line 3057
    const-string v0, "MultiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #setter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z
    invoke-static {v0, v3}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3602(Lcom/android/music/MediaPlaybackService$MultiPlayer;Z)Z

    .line 3060
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3061
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3502(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 3063
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const v1, 0x7f090062

    #calls: Lcom/android/music/MediaPlaybackService;->showToast(I)V
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;I)V

    move v0, v3

    .line 3068
    :goto_0
    return v0

    .line 3007
    :pswitch_0
    const-string v0, "MediaPlaybackService"

    const-string v0, ">>>>>>>extra>MEDIA_ErrDrmLicenseExpired<<<<<<<<<<<<"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3009
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3502(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 3010
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 3011
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v4

    .line 3013
    goto :goto_0

    .line 3015
    :pswitch_1
    const-string v0, "MediaPlaybackService"

    const-string v0, ">>>>>>>extra>MEDIA_ErrDrmLicenseNotFound<<<<<<<<<<<<"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3017
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3502(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 3018
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 3019
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v4

    .line 3021
    goto :goto_0

    .line 3028
    :sswitch_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #setter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z
    invoke-static {v0, v3}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3602(Lcom/android/music/MediaPlaybackService$MultiPlayer;Z)Z

    .line 3029
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3033
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3502(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 3034
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 3035
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v4

    .line 3036
    goto/16 :goto_0

    .line 3040
    :sswitch_1
    const-string v0, "MediaPlaybackService"

    const-string v0, ">>>>>>>what>MEDIA_ErrDrmLicenseExpired<<<<<<<<<<<<"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3042
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3502(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 3043
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 3044
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v4

    .line 3046
    goto/16 :goto_0

    .line 3048
    :sswitch_2
    const-string v0, "MediaPlaybackService"

    const-string v0, ">>>>>>>what>MEDIA_ErrDrmLicenseNotFound<<<<<<<<<<<<"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3050
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3502(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 3051
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 3052
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v4

    .line 3054
    goto/16 :goto_0

    .line 3005
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 3026
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x12c -> :sswitch_2
        0x12d -> :sswitch_1
    .end sparse-switch
.end method
