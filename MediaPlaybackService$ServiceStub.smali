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
    .line 2051
    invoke-direct {p0}, Lcom/android/music/IMediaPlaybackService$Stub;-><init>()V

    .line 2052
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 2053
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 2124
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
    .line 2106
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->enqueue([JI)V

    .line 2107
    return-void
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 2097
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
    .line 2094
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
    .line 2103
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
    .line 2100
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
    .line 2118
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getMediaMountedCount()I

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()[J
    .locals 1

    .prologue
    .line 2109
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
    .line 2067
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
    .line 2145
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
    .line 2133
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
    .line 2091
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 2073
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
    .line 2112
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->moveQueueItem(II)V

    .line 2113
    return-void
.end method

.method public next()V
    .locals 1

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 2089
    return-void
.end method

.method public open([JI)V
    .locals 1
    .parameter "list"
    .parameter "position"

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->open([JI)V

    .line 2065
    return-void
.end method

.method public openFile(Ljava/lang/String;Z)V
    .locals 1
    .parameter "path"
    .parameter "oneShot"

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->open(Ljava/lang/String;Z)V

    .line 2062
    return-void
.end method

.method public openFileAsync(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService;->openAsync(Ljava/lang/String;)V

    .line 2058
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 2080
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 2083
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2121
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
    .line 2085
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->prev()V

    .line 2086
    return-void
.end method

.method public removeTrack(J)I
    .locals 1
    .parameter "id"

    .prologue
    .line 2139
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
    .line 2136
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
    .line 2127
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
    .line 2070
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService;->setQueuePosition(I)V

    .line 2071
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService;->setRepeatMode(I)V

    .line 2143
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .parameter "shufflemode"

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService;->setShuffleMode(I)V

    .line 2131
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->stop()V

    .line 2077
    return-void
.end method
