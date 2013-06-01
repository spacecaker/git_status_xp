.class Lcom/android/music/MediaPlaybackService$2;
.super Landroid/telephony/PhoneStateListener;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
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
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 238
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 9
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 241
    if-ne p1, v5, :cond_3

    .line 242
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 243
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 244
    .local v1, ringvolume:I
    if-lez v1, :cond_1

    .line 245
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$2(Lcom/android/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-ltz v3, :cond_2

    move v3, v5

    :goto_0
    #setter for: Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z
    invoke-static {v2, v3}, Lcom/android/music/MediaPlaybackService;->access$3(Lcom/android/music/MediaPlaybackService;Z)V

    .line 246
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 247
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z
    invoke-static {v2}, Lcom/android/music/MediaPlaybackService;->access$2(Lcom/android/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedInCall:Z
    invoke-static {v2, v5}, Lcom/android/music/MediaPlaybackService;->access$4(Lcom/android/music/MediaPlaybackService;Z)V

    .line 266
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #ringvolume:I
    :cond_1
    :goto_1
    return-void

    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v1       #ringvolume:I
    :cond_2
    move v3, v6

    .line 245
    goto :goto_0

    .line 250
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #ringvolume:I
    :cond_3
    if-ne p1, v4, :cond_6

    .line 252
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$2(Lcom/android/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-ltz v3, :cond_5

    move v3, v5

    :goto_2
    #setter for: Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z
    invoke-static {v2, v3}, Lcom/android/music/MediaPlaybackService;->access$3(Lcom/android/music/MediaPlaybackService;Z)V

    .line 253
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 254
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z
    invoke-static {v2}, Lcom/android/music/MediaPlaybackService;->access$2(Lcom/android/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedInCall:Z
    invoke-static {v2, v5}, Lcom/android/music/MediaPlaybackService;->access$4(Lcom/android/music/MediaPlaybackService;Z)V

    goto :goto_1

    :cond_5
    move v3, v6

    .line 252
    goto :goto_2

    .line 256
    :cond_6
    if-nez p1, :cond_1

    .line 258
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z
    invoke-static {v2}, Lcom/android/music/MediaPlaybackService;->access$2(Lcom/android/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->startAndFadeIn()V
    invoke-static {v2}, Lcom/android/music/MediaPlaybackService;->access$5(Lcom/android/music/MediaPlaybackService;)V

    .line 262
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z
    invoke-static {v2, v6}, Lcom/android/music/MediaPlaybackService;->access$3(Lcom/android/music/MediaPlaybackService;Z)V

    .line 263
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedInCall:Z
    invoke-static {v2, v6}, Lcom/android/music/MediaPlaybackService;->access$4(Lcom/android/music/MediaPlaybackService;Z)V

    goto :goto_1
.end method
