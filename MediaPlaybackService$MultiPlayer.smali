.class Lcom/android/music/MediaPlaybackService$MultiPlayer;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPlayer"
.end annotation


# instance fields
.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field listener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsInitialized:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 2
    .parameter

    .prologue
    .line 1905
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 1903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1899
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 1985
    new-instance v0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;-><init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1998
    new-instance v0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;-><init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2004
    new-instance v0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;-><init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1904
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$0(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/music/MediaPlaybackService$MultiPlayer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1901
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    return-void
.end method

.method static synthetic access$2(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1899
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$4(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService;
    .locals 1
    .parameter

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    return-object v0
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1956
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1979
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1973
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1974
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1975
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "whereto"

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 2035
    return-wide p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 1931
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 1932
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1933
    const-string v1, "content://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1934
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1938
    :goto_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1939
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1949
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1950
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1952
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 1953
    :goto_1
    return-void

    .line 1936
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1940
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1942
    .local v0, ex:Ljava/io/IOException;
    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_1

    .line 1944
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1946
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_1
.end method

.method public setDataSourceAsync(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 1909
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 1910
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1911
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1912
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1913
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1923
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1924
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1926
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 1927
    :goto_0
    return-void

    .line 1914
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1916
    .local v0, ex:Ljava/io/IOException;
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_0

    .line 1918
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1920
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 1982
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    .line 1983
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "vol"

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2040
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1960
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "MultiPlayer.start called"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 1961
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1962
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 1967
    return-void
.end method
