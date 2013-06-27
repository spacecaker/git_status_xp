.class public Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumArtHandler"
.end annotation


# instance fields
.field private mAlbumId:J

.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method public constructor <init>(Lcom/android/music/MediaPlaybackActivity;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    .line 2332
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    .line 2333
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2330
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->mAlbumId:J

    .line 2334
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x4

    .line 2338
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;

    iget-wide v0, v6, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;->albumid:J

    .line 2339
    .local v0, albumid:J
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;

    iget-wide v4, v6, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;->songid:J

    .line 2340
    .local v4, songid:J
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    iget-wide v6, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->mAlbumId:J

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_3

    .line 2342
    :cond_0
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/music/MediaPlaybackActivity;->access$1500(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v9, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2343
    .local v3, numsg:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/music/MediaPlaybackActivity;->access$1500(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2344
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/music/MediaPlaybackActivity;->access$1500(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x12c

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2345
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v6, v4, v5, v0, v1}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2346
    .local v2, bm:Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 2347
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v7, -0x1

    invoke-static {v6, v4, v5, v7, v8}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2348
    const-wide/16 v0, -0x1

    .line 2350
    :cond_1
    if-eqz v2, :cond_2

    .line 2351
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/music/MediaPlaybackActivity;->access$1500(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2352
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/music/MediaPlaybackActivity;->access$1500(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2353
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/music/MediaPlaybackActivity;->access$1500(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2355
    :cond_2
    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->mAlbumId:J

    .line 2357
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v3           #numsg:Landroid/os/Message;
    :cond_3
    return-void
.end method
