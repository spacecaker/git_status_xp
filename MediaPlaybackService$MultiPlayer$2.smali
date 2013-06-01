.class Lcom/android/music/MediaPlaybackService$MultiPlayer$2;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    .line 1998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService;

    move-result-object v0

    const-string v1, "com.android.music.asyncopencomplete"

    #calls: Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$12(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 2001
    return-void
.end method
