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

.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 2
    .parameter

    .prologue
    .line 2873
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2869
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2982
    new-instance v0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;-><init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 3000
    new-instance v0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;-><init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2874
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2875
    return-void
.end method

.method static synthetic access$3400(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2868
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2868
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2868
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/android/music/MediaPlaybackService$MultiPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2868
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    return p1
.end method

.method private showErrorFileToast()V
    .locals 5

    .prologue
    .line 2931
    new-instance v1, Lcom/sec/android/app/music/MusicDrmManager;

    invoke-direct {v1}, Lcom/sec/android/app/music/MusicDrmManager;-><init>()V

    .line 2932
    .local v1, drmManager:Lcom/sec/android/app/music/MusicDrmManager;
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->getFilePath()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$3200(Lcom/android/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v0

    .line 2934
    .local v0, FilePath:Ljava/lang/String;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/music/MusicUtils;->isMusicTopActivity(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2936
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const v4, 0x7f090062

    #calls: Lcom/android/music/MediaPlaybackService;->showToast(I)V
    invoke-static {v3, v4}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2945
    :cond_1
    :goto_0
    return-void

    .line 2940
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 2943
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v3, "MediaPlaybackService"

    const-string v4, "showErrorFileToast FileNotFoundException"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 3073
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 3094
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2949
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 2975
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 2976
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 3077
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 2970
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 2971
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2972
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "whereto"

    .prologue
    .line 3081
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 3082
    return-wide p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    const-string v6, "MediaPlaybackService"

    .line 2880
    :try_start_0
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 2881
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2882
    const-string v2, "content://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2883
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2887
    :goto_0
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2888
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2919
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2920
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2922
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2923
    .local v1, i:Landroid/content/Intent;
    const-string v2, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->getAudioSessionId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2924
    const-string v2, "android.media.extra.PACKAGE_NAME"

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2925
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v2, v1}, Lcom/android/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2926
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2927
    .end local v1           #i:Landroid/content/Intent;
    :goto_1
    return-void

    .line 2885
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 2889
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2891
    .local v0, ex:Ljava/io/IOException;
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2892
    const-string v2, "MediaPlaybackService"

    const-string v2, "setDataSource-IOException"

    invoke-static {v6, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2896
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->showErrorFileToast()V

    goto :goto_1

    .line 2899
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 2901
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2902
    const-string v2, "MediaPlaybackService"

    const-string v2, "setDataSource-IllegalArgumentException"

    invoke-static {v6, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 2905
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->showErrorFileToast()V

    goto :goto_1

    .line 2910
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 2911
    .local v0, ex:Ljava/lang/IllegalStateException;
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2912
    const-string v2, "MediaPlaybackService"

    const-string v2, "setDataSource-IllegalStateException"

    invoke-static {v6, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2915
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->showErrorFileToast()V

    goto :goto_1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 2979
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    .line 2980
    return-void
.end method

.method public setR2VSMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    .line 3100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3101
    .local v0, eqValue:Landroid/os/Parcel;
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3104
    .local v1, eqValueReply:Landroid/os/Parcel;
    const v2, 0x12fd1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3105
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3106
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3107
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3110
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I

    .line 3111
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mR2VSvalue:I
    invoke-static {v2, p1}, Lcom/android/music/MediaPlaybackService;->access$3302(Lcom/android/music/MediaPlaybackService;I)I

    .line 3113
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "vol"

    .prologue
    .line 3086
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 3087
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 2955
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "MultiPlayer.start called"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 2956
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 2957
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mR2VSvalue:I
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$3300(Lcom/android/music/MediaPlaybackService;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setR2VSMode(I)V

    .line 2959
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2962
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 2963
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2964
    return-void
.end method
