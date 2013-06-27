.class Lcom/android/music/MediaPlaybackActivity$6;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 863
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$6;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 869
    if-eqz p3, :cond_0

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$6;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 872
    .local v1, now:J
    const/4 v0, 0x0

    .line 873
    .local v0, duration:S
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$6;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$800(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 874
    const/16 v0, 0x64

    .line 880
    :goto_1
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$6;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$700(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v3

    sub-long v3, v1, v3

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 881
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$6;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J
    invoke-static {v3, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$702(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 882
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$6;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$6;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mDuration:J
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$900(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v4

    int-to-long v6, p2

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v3, v4, v5}, Lcom/android/music/MediaPlaybackActivity;->access$002(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 884
    :try_start_0
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$6;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$6;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$000(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/android/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    :goto_2
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$6;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$800(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 890
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$6;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->refreshNow()J
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$1000(Lcom/android/music/MediaPlaybackActivity;)J

    .line 891
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$6;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v4, -0x1

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v3, v4, v5}, Lcom/android/music/MediaPlaybackActivity;->access$002(Lcom/android/music/MediaPlaybackActivity;J)J

    goto :goto_0

    .line 876
    :cond_2
    const/16 v0, 0x32

    goto :goto_1

    .line 885
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "bar"

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$6;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J
    invoke-static {v0, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$702(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 866
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$6;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->access$802(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 867
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "bar"

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$6;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v1, -0x1

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v0, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$002(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 897
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$6;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->access$802(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 898
    return-void
.end method
