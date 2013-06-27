.class Lcom/android/music/MediaPlaybackService$PlayControl;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayControl"
.end annotation


# instance fields
.field private date:Ljava/util/Date;

.field private ffTimer:Ljava/util/Timer;

.field private ffTimerTask:Ljava/util/TimerTask;

.field private mIsFFPushed:Z

.field private mIsRWPushed:Z

.field private returnedTimer:Ljava/util/Timer;

.field private rwTimer:Ljava/util/Timer;

.field private rwTimerTask:Ljava/util/TimerTask;

.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3133
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3123
    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->mIsFFPushed:Z

    .line 3124
    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->mIsRWPushed:Z

    .line 3134
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->date:Ljava/util/Date;

    .line 3135
    return-void
.end method

.method static synthetic access$2200(Lcom/android/music/MediaPlaybackService$PlayControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3119
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService$PlayControl;->cancelAllTimer()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/music/MediaPlaybackService$PlayControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3119
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService$PlayControl;->ffTimerFired()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/music/MediaPlaybackService$PlayControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3119
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService$PlayControl;->rwTimerFired()V

    return-void
.end method

.method private cancelAllTimer()V
    .locals 1

    .prologue
    .line 3250
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->ffTimer:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService$PlayControl;->cancelTimer(Ljava/util/Timer;)V

    .line 3251
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->rwTimer:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService$PlayControl;->cancelTimer(Ljava/util/Timer;)V

    .line 3252
    return-void
.end method

.method private cancelTimer(Ljava/util/Timer;)V
    .locals 4
    .parameter "timer"

    .prologue
    const-string v3, "MediaPlaybackService"

    .line 3238
    if-eqz p1, :cond_0

    .line 3240
    const-string v1, "MediaPlaybackService"

    const-string v1, "Cancel the timer"

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3247
    :cond_0
    :goto_0
    return-void

    .line 3243
    :catch_0
    move-exception v0

    .line 3244
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during timer.cancel ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ffTimerFired()V
    .locals 9

    .prologue
    const-wide/16 v7, 0xbb8

    const/4 v6, 0x1

    .line 3186
    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->mIsFFPushed:Z

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v2}, Lcom/android/music/MediaPlaybackService;->access$200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3188
    const-string v2, "MediaPlaybackService"

    const-string v3, "FFTimerFired"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v0

    .line 3190
    .local v0, curFilePos:J
    add-long v2, v0, v7

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v4}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 3192
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v2, v6}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 3199
    .end local v0           #curFilePos:J
    :cond_0
    :goto_0
    return-void

    .line 3196
    .restart local v0       #curFilePos:J
    :cond_1
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->this$0:Lcom/android/music/MediaPlaybackService;

    add-long v3, v0, v7

    invoke-virtual {v2, v3, v4}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto :goto_0
.end method

.method private rwTimerFired()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xbb8

    .line 3204
    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->mIsRWPushed:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v2}, Lcom/android/music/MediaPlaybackService;->access$200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3206
    const-string v2, "MediaPlaybackService"

    const-string v3, "RWTimerFired"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v0

    .line 3209
    .local v0, curFilePos:J
    sub-long v2, v0, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 3211
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService;->prev()V

    .line 3212
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 3220
    .end local v0           #curFilePos:J
    :cond_0
    :goto_0
    return-void

    .line 3216
    .restart local v0       #curFilePos:J
    :cond_1
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->this$0:Lcom/android/music/MediaPlaybackService;

    sub-long v3, v0, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto :goto_0
.end method

.method private schedualTimer(Ljava/util/TimerTask;)Ljava/util/Timer;
    .locals 6
    .parameter "timerTask"

    .prologue
    const-string v5, "MediaPlaybackService"

    .line 3224
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->returnedTimer:Ljava/util/Timer;

    .line 3225
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->returnedTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 3227
    const-string v1, "MediaPlaybackService"

    const-string v1, "schedualTimer"

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->returnedTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->date:Ljava/util/Date;

    const-wide/16 v3, 0x104

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3234
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->returnedTimer:Ljava/util/Timer;

    return-object v1

    .line 3230
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3231
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during myTimer.schedule ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public setFFButton(Z)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 3140
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->mIsFFPushed:Z

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 3142
    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->mIsFFPushed:Z

    .line 3143
    new-instance v0, Lcom/android/music/MediaPlaybackService$PlayControl$1;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$PlayControl$1;-><init>(Lcom/android/music/MediaPlaybackService$PlayControl;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->ffTimerTask:Ljava/util/TimerTask;

    .line 3150
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->ffTimerTask:Ljava/util/TimerTask;

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService$PlayControl;->schedualTimer(Ljava/util/TimerTask;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->ffTimer:Ljava/util/Timer;

    .line 3157
    :cond_0
    :goto_0
    return-void

    .line 3152
    :cond_1
    if-nez p1, :cond_0

    .line 3154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->mIsFFPushed:Z

    .line 3155
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->ffTimer:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService$PlayControl;->cancelTimer(Ljava/util/Timer;)V

    goto :goto_0
.end method

.method public setRWButton(Z)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 3162
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->mIsRWPushed:Z

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 3164
    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->mIsRWPushed:Z

    .line 3165
    new-instance v0, Lcom/android/music/MediaPlaybackService$PlayControl$2;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$PlayControl$2;-><init>(Lcom/android/music/MediaPlaybackService$PlayControl;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->rwTimerTask:Ljava/util/TimerTask;

    .line 3172
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->rwTimerTask:Ljava/util/TimerTask;

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService$PlayControl;->schedualTimer(Ljava/util/TimerTask;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->rwTimer:Ljava/util/Timer;

    .line 3179
    :cond_0
    :goto_0
    return-void

    .line 3174
    :cond_1
    if-nez p1, :cond_0

    .line 3176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->mIsRWPushed:Z

    .line 3177
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$PlayControl;->rwTimer:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService$PlayControl;->cancelTimer(Ljava/util/Timer;)V

    goto :goto_0
.end method
