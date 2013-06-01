.class Lcom/android/music/MediaPlaybackService$ServiceStub;
.super Lcom/android/music/IMediaPlaybackService$Stub;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/music/MediaPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 3267
    invoke-direct {p0}, Lcom/android/music/IMediaPlaybackService$Stub;-><init>()V

    .line 3268
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 3269
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 3337
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public enqueue([JI)V
    .locals 1
    .parameter "list"
    .parameter "action"

    .prologue
    .line 3319
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->enqueue([JI)V

    .line 3320
    return-void
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 3310
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3307
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistId()J
    .locals 2

    .prologue
    .line 3316
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 3331
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 3365
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getCurrentAlbumInfo()Lcom/sec/android/app/music/MusicAlbumInfo;
    .locals 1

    .prologue
    .line 3394
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getCurrentAlbumInfo()Lcom/sec/android/app/music/MusicAlbumInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3387
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->getFilePath()Ljava/lang/String;
    invoke-static {p0}, Lcom/android/music/MediaPlaybackService;->access$3200(Lcom/android/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 3361
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getMediaMountedCount()I

    move-result v0

    return v0
.end method

.method public getNextAlbumInfo(I)Lcom/sec/android/app/music/MusicAlbumInfo;
    .locals 1
    .parameter "nextindex"

    .prologue
    .line 3399
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService;->getNextAlbumInfo(I)Lcom/sec/android/app/music/MusicAlbumInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3328
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrevAlbumInfo(I)Lcom/sec/android/app/music/MusicAlbumInfo;
    .locals 1
    .parameter "previndex"

    .prologue
    .line 3404
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService;->getPrevAlbumInfo(I)Lcom/sec/android/app/music/MusicAlbumInfo;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()[J
    .locals 1

    .prologue
    .line 3322
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getQueue()[J

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 3280
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 3358
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 3346
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3304
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideNotification()V
    .locals 1

    .prologue
    .line 3377
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->hideNotification()V

    .line 3378
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 3286
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 3325
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->moveQueueItem(II)V

    .line 3326
    return-void
.end method

.method public next()V
    .locals 1

    .prologue
    .line 3301
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 3302
    return-void
.end method

.method public nextPosition()I
    .locals 1

    .prologue
    .line 3411
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->nextPosition()I

    move-result v0

    return v0
.end method

.method public open([JI)V
    .locals 1
    .parameter "list"
    .parameter "position"

    .prologue
    .line 3277
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->open([JI)V

    .line 3278
    return-void
.end method

.method public openFile(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 3273
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService;->open(Ljava/lang/String;)V

    .line 3275
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 3292
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 3293
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 3295
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 3296
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 3334
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 3298
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->prev()V

    .line 3299
    return-void
.end method

.method public prevPosition()I
    .locals 1

    .prologue
    .line 3416
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->prevPosition()I

    move-result v0

    return v0
.end method

.method public removeTrack(J)I
    .locals 1
    .parameter "id"

    .prologue
    .line 3352
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->removeTrack(J)I

    move-result v0

    return v0
.end method

.method public removeTracks(II)I
    .locals 1
    .parameter "first"
    .parameter "last"

    .prologue
    .line 3349
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->removeTracks(II)I

    move-result v0

    return v0
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 3340
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3283
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService;->setQueuePosition(I)V

    .line 3284
    return-void
.end method

.method public setR2VSMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService;->setR2VSMode(I)V

    .line 3373
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 3355
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService;->setRepeatMode(I)V

    .line 3356
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .parameter "shufflemode"

    .prologue
    .line 3343
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService;->setShuffleMode(I)V

    .line 3344
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 3289
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->stop()V

    .line 3290
    return-void
.end method
