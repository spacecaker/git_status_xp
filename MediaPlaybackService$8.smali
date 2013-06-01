.class Lcom/android/music/MediaPlaybackService$8;
.super Ljava/util/TimerTask;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MediaPlaybackService;->startProgressUpdate()V
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
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 2154
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v1, "com.android.music.progressbarchnaged"

    #calls: Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$12(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 2160
    return-void
.end method
