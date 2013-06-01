.class public Lcom/android/music/MediaPlaybackService;
.super Landroid/app/Service;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MediaPlaybackService$MultiPlayer;,
        Lcom/android/music/MediaPlaybackService$ServiceStub;,
        Lcom/android/music/MediaPlaybackService$Shuffler;
    }
.end annotation


# static fields
.field public static final ASYNC_OPEN_COMPLETE:Ljava/lang/String; = "com.android.music.asyncopencomplete"

.field private static final BOOKMARKCOLIDX:I = 0x9

.field public static final CHECKPLAYSTATUS:Ljava/lang/String; = "com.android.music.musicservicecommand.checkplaystatus"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDREPEAT:Ljava/lang/String; = "repeat"

.field public static final CMDSHUFFLE:Ljava/lang/String; = "shuffle"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field private static final FADEIN:I = 0x4

.field private static final IDCOLIDX:I = 0x0

.field private static final IDLE_DELAY:I = 0xea60

.field public static final LAST:I = 0x3

.field private static final LOGTAG:Ljava/lang/String; = "MediaPlaybackService"

.field private static final MAX_HISTORY_SIZE:I = 0x64

.field public static final MEDIAINFO:Ljava/lang/String; = "com.android.music.musicservicecommand.mediainfo"

.field public static final META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field public static final NEXT:I = 0x2

.field public static final NEXT_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field private static final NOTI_DELAY:I = 0x1d4c0

.field private static final NOTI_HIDE:I = 0x64

.field public static final NOW:I = 0x1

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field public static final PLAYBACKSERVICE_STATUS:I = 0x1

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.android.music.playbackcomplete"

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field private static final PODCASTCOLIDX:I = 0x8

.field public static final PREVIOUS_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field public static final PROGRESSBAR_CHANGED:Ljava/lang/String; = "com.android.music.progressbarchnaged"

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.android.music.queuechanged"

.field public static final REFRESH_PROGRESSBAR:Ljava/lang/String; = "com.android.music.refreshui"

.field private static final RELEASE_WAKELOCK:I = 0x2

.field public static final REPEAT_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.repeat"

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CHANGED:Ljava/lang/String; = "com.android.music.repeatmodechanged"

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field private static final SERVER_DIED:I = 0x3

.field public static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field public static final SHUFFLE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.shuffle"

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_CHANGED:Ljava/lang/String; = "com.android.music.shufflemodechanged"

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field public static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field private static final TRACK_ENDED:I = 0x1


# instance fields
.field private final hexdigits:[C

.field private mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

.field private mAppWidgetProvider2:Lcom/android/music/MediaAppWidgetProvider2;

.field private mAppWidgetProvider3:Lcom/android/music/MediaAppWidgetProvider3;

.field private mAppWidgetProvider4:Lcom/android/music/MediaAppWidgetProvider4;

.field private mAppWidgetProvider5:Lcom/android/music/MediaAppWidgetProvider5;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShuffleList:[J

.field private final mBinder:Landroid/os/IBinder;

.field private mCardId:I

.field private mCursor:Landroid/database/Cursor;

.field mCursorCols:[Ljava/lang/String;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mFileToPlay:Ljava/lang/String;

.field private mHideNotificationHandler:Landroid/os/Handler;

.field private mHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPaused:Z

.field private mIsSupposedToBePlaying:Z

.field private mMediaMountedCount:I

.field private mMediaUri:Landroid/net/Uri;

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mOneShot:Z

.field private mOpenFailedCounter:I

.field private mPausedByTransientLossOfFocus:Z

.field private mPausedInCall:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlayList:[J

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mQuietMode:Z

.field private final mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

.field private mRepeatMode:I

.field private mResumeAfterCall:Z

.field private mService:Lcom/android/music/IMediaPlaybackService;

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mShuffleMode:I

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 460
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 122
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 123
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 124
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    .line 125
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[J

    .line 127
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    .line 128
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 129
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    .line 131
    iput v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 133
    new-instance v0, Lcom/android/music/MediaPlaybackService$Shuffler;

    invoke-direct {v0, v4}, Lcom/android/music/MediaPlaybackService$Shuffler;-><init>(Lcom/android/music/MediaPlaybackService$Shuffler;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    .line 134
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 135
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 136
    const-string v1, "audio._id AS _id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 137
    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 138
    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 139
    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 140
    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 141
    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 142
    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 143
    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 144
    const-string v2, "is_podcast"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 145
    const-string v2, "bookmark"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    .line 150
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    iput v5, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    .line 153
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 154
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z

    .line 155
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mPausedInCall:Z

    .line 156
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 157
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 160
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 161
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->timer:Ljava/util/Timer;

    .line 168
    invoke-static {}, Lcom/android/music/MediaAppWidgetProvider;->getInstance()Lcom/android/music/MediaAppWidgetProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

    .line 170
    invoke-static {}, Lcom/android/music/MediaAppWidgetProvider2;->getInstance()Lcom/android/music/MediaAppWidgetProvider2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider2:Lcom/android/music/MediaAppWidgetProvider2;

    .line 172
    invoke-static {}, Lcom/android/music/MediaAppWidgetProvider3;->getInstance()Lcom/android/music/MediaAppWidgetProvider3;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider3:Lcom/android/music/MediaAppWidgetProvider3;

    .line 174
    invoke-static {}, Lcom/android/music/MediaAppWidgetProvider4;->getInstance()Lcom/android/music/MediaAppWidgetProvider4;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider4:Lcom/android/music/MediaAppWidgetProvider4;

    .line 176
    invoke-static {}, Lcom/android/music/MediaAppWidgetProvider5;->getInstance()Lcom/android/music/MediaAppWidgetProvider5;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider5:Lcom/android/music/MediaAppWidgetProvider5;

    .line 182
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 225
    new-instance v0, Lcom/android/music/MediaPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$1;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHideNotificationHandler:Landroid/os/Handler;

    .line 238
    new-instance v0, Lcom/android/music/MediaPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$2;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 273
    new-instance v0, Lcom/android/music/MediaPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$3;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 356
    new-instance v0, Lcom/android/music/MediaPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$4;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 428
    new-instance v0, Lcom/android/music/MediaPlaybackService$5;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$5;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 541
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 545
    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->hexdigits:[C

    .line 851
    new-instance v0, Lcom/android/music/MediaPlaybackService$6;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$6;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 2189
    new-instance v0, Lcom/android/music/MediaPlaybackService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$ServiceStub;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 461
    return-void

    .line 541
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method static synthetic access$0(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHideNotificationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$10(Lcom/android/music/MediaPlaybackService;)I
    .locals 1
    .parameter

    .prologue
    .line 123
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$11(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mOneShot:Z

    return v0
.end method

.method static synthetic access$12(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 934
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13(Lcom/android/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return-void
.end method

.method static synthetic access$14(Lcom/android/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$15(Lcom/android/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return-void
.end method

.method static synthetic access$16(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->toggleShuffle()V

    return-void
.end method

.method static synthetic access$17(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->cycleRepeat()V

    return-void
.end method

.method static synthetic access$18(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider;
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

    return-object v0
.end method

.method static synthetic access$19(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider2;
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider2:Lcom/android/music/MediaAppWidgetProvider2;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z

    return v0
.end method

.method static synthetic access$20(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider3;
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider3:Lcom/android/music/MediaAppWidgetProvider3;

    return-object v0
.end method

.method static synthetic access$21(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider4;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider4:Lcom/android/music/MediaAppWidgetProvider4;

    return-object v0
.end method

.method static synthetic access$22(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider5;
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider5:Lcom/android/music/MediaAppWidgetProvider5;

    return-object v0
.end method

.method static synthetic access$23(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$24(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$25(Lcom/android/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 548
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$26(Lcom/android/music/MediaPlaybackService;)I
    .locals 1
    .parameter

    .prologue
    .line 152
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$27(Lcom/android/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mOneShot:Z

    return-void
.end method

.method static synthetic access$28(Lcom/android/music/MediaPlaybackService;)I
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$29(Lcom/android/music/MediaPlaybackService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    return-void
.end method

.method static synthetic access$3(Lcom/android/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z

    return-void
.end method

.method static synthetic access$30(Lcom/android/music/MediaPlaybackService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    return-void
.end method

.method static synthetic access$31(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->reloadQueue()V

    return-void
.end method

.method static synthetic access$4(Lcom/android/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mPausedInCall:Z

    return-void
.end method

.method static synthetic access$5(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->startAndFadeIn()V

    return-void
.end method

.method static synthetic access$6(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$9(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1135
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    return-void
.end method

.method private addToPlayList([JI)V
    .locals 7
    .parameter "list"
    .parameter "position"

    .prologue
    .line 977
    array-length v0, p1

    .line 978
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 979
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 980
    const/4 p2, 0x0

    .line 982
    :cond_0
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 983
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-le p2, v3, :cond_1

    .line 984
    iget p2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 988
    :cond_1
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v2, v3, p2

    .line 989
    .local v2, tailsize:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-gtz v1, :cond_2

    .line 994
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_3

    .line 997
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 998
    return-void

    .line 990
    :cond_2
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 989
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 995
    :cond_3
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int v4, p2, v1

    aget-wide v5, p1, v1

    aput-wide v5, v3, v4

    .line 994
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private cycleRepeat()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 343
    .local v0, mode:I
    if-nez v0, :cond_1

    .line 344
    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->setRepeatMode(I)V

    .line 353
    :cond_0
    :goto_0
    const-string v1, "com.android.music.repeatmodechanged"

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 354
    return-void

    .line 345
    :cond_1
    if-ne v0, v1, :cond_2

    .line 346
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->setRepeatMode(I)V

    .line 347
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getShuffleMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackService;->setShuffleMode(I)V

    goto :goto_0

    .line 351
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackService;->setRepeatMode(I)V

    goto :goto_0
.end method

.method private delayHideNotification()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 221
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHideNotificationHandler:Landroid/os/Handler;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHideNotificationHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 223
    return-void
.end method

.method private doAutoShuffleUpdate()V
    .locals 9

    .prologue
    .line 1566
    const/4 v2, 0x0

    .line 1568
    .local v2, notify:Z
    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    const/16 v7, 0xa

    if-le v6, v7, :cond_0

    .line 1569
    const/4 v6, 0x0

    iget v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    const/16 v8, 0x9

    sub-int/2addr v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/music/MediaPlaybackService;->removeTracks(II)I

    .line 1570
    const/4 v2, 0x1

    .line 1573
    :cond_0
    const/4 v6, 0x7

    iget v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gez v8, :cond_2

    const/4 v8, -0x1

    :goto_0
    sub-int/2addr v7, v8

    sub-int v3, v6, v7

    .line 1574
    .local v3, to_add:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v3, :cond_3

    .line 1582
    if-eqz v2, :cond_1

    .line 1583
    const-string v6, "com.android.music.queuechanged"

    invoke-direct {p0, v6}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1585
    :cond_1
    return-void

    .line 1573
    .end local v0           #i:I
    .end local v3           #to_add:I
    :cond_2
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 1576
    .restart local v0       #i:I
    .restart local v3       #to_add:I
    :cond_3
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[J

    array-length v7, v7

    invoke-virtual {v6, v7}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v1

    .line 1577
    .local v1, idx:I
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[J

    aget-wide v4, v6, v1

    .line 1578
    .local v4, which:J
    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1579
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    aput-wide v4, v6, v7

    .line 1580
    const/4 v2, 0x1

    .line 1574
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private ensurePlayListCapacity(I)V
    .locals 5
    .parameter "size"

    .prologue
    .line 960
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    array-length v3, v3

    if-le p1, v3, :cond_1

    .line 964
    :cond_0
    mul-int/lit8 v3, p1, 0x2

    new-array v2, v3, [J

    .line 965
    .local v2, newlist:[J
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    array-length v3, v3

    move v1, v3

    .line 966
    .local v1, len:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_3

    .line 969
    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    .line 973
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #newlist:[J
    :cond_1
    return-void

    .line 965
    .restart local v2       #newlist:[J
    :cond_2
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    move v1, v3

    goto :goto_0

    .line 967
    .restart local v0       #i:I
    .restart local v1       #len:I
    :cond_3
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 966
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getBookmark()J
    .locals 2

    .prologue
    .line 1851
    monitor-enter p0

    .line 1852
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1853
    monitor-exit p0

    const-wide/16 v0, 0x0

    .line 1855
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 1851
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private gotoIdleState()V
    .locals 4

    .prologue
    .line 1529
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1530
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1531
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1532
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->stopForeground(Z)V

    .line 1533
    return-void
.end method

.method private isPodcast()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1842
    monitor-enter p0

    .line 1843
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1844
    monitor-exit p0

    move v0, v2

    .line 1846
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 1842
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v2

    .line 1846
    goto :goto_1
.end method

.method private makeAutoShuffleList()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1604
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1605
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1607
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1608
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "is_music=1"

    .line 1609
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1607
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1610
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 1623
    :cond_0
    if-eqz v6, :cond_1

    .line 1624
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v10

    .line 1627
    :goto_0
    return v1

    .line 1613
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1614
    .local v8, len:I
    new-array v9, v8, [J

    .line 1615
    .local v9, list:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-lt v7, v8, :cond_4

    .line 1619
    iput-object v9, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1623
    if-eqz v6, :cond_3

    .line 1624
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v1, v11

    .line 1620
    goto :goto_0

    .line 1616
    :cond_4
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1617
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v9, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1615
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1621
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[J
    :catch_0
    move-exception v1

    .line 1623
    if-eqz v6, :cond_5

    .line 1624
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v1, v10

    .line 1627
    goto :goto_0

    .line 1622
    :catchall_0
    move-exception v1

    .line 1623
    if-eqz v6, :cond_6

    .line 1624
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1626
    :cond_6
    throw v1
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 936
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 937
    .local v0, i:Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 938
    const-string v1, "artist"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    const-string v1, "album"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    const-string v1, "track"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    const-string v1, "pos"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 942
    const-string v1, "dur"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 943
    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 945
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 952
    :goto_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

    invoke-virtual {v1, p0, p1}, Lcom/android/music/MediaAppWidgetProvider;->notifyChange(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 953
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider2:Lcom/android/music/MediaAppWidgetProvider2;

    invoke-virtual {v1, p0, p1}, Lcom/android/music/MediaAppWidgetProvider2;->notifyChange(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 954
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider3:Lcom/android/music/MediaAppWidgetProvider3;

    invoke-virtual {v1, p0, p1}, Lcom/android/music/MediaAppWidgetProvider3;->notifyChange(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 955
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider4:Lcom/android/music/MediaAppWidgetProvider4;

    invoke-virtual {v1, p0, p1}, Lcom/android/music/MediaAppWidgetProvider4;->notifyChange(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 956
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider5:Lcom/android/music/MediaAppWidgetProvider5;

    invoke-virtual {v1, p0, p1}, Lcom/android/music/MediaAppWidgetProvider5;->notifyChange(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 957
    return-void

    .line 948
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_0
.end method

.method private openCurrent()V
    .locals 9

    .prologue
    .line 1136
    monitor-enter p0

    .line 1137
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1141
    :cond_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_1

    .line 1142
    monitor-exit p0

    .line 1163
    :goto_0
    return-void

    .line 1144
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1146
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 1148
    .local v8, id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1149
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1150
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1148
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1151
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 1152
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/music/MediaPlaybackService;->open(Ljava/lang/String;Z)V

    .line 1155
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->isPodcast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1156
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v6

    .line 1159
    .local v6, bookmark:J
    const-wide/16 v0, 0x1388

    sub-long v0, v6, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 1136
    .end local v6           #bookmark:J
    :cond_2
    monitor-exit p0

    goto :goto_0

    .end local v8           #id:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reloadQueue()V
    .locals 24

    .prologue
    .line 612
    const/16 v17, 0x0

    .line 614
    .local v17, q:Ljava/lang/String;
    const/4 v14, 0x0

    .line 615
    .local v14, newstyle:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    move v12, v0

    .line 616
    .local v12, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "cardid"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 617
    const/4 v14, 0x1

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "cardid"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    move v5, v0

    xor-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 620
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    move v3, v0

    if-ne v12, v3, :cond_1

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "queue"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 625
    :cond_1
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v18, v3

    .line 626
    .local v18, qlen:I
    :goto_0
    const/4 v3, 0x1

    move/from16 v0, v18

    move v1, v3

    if-le v0, v1, :cond_3

    .line 628
    const/4 v15, 0x0

    .line 629
    .local v15, plen:I
    const/4 v13, 0x0

    .line 630
    .local v13, n:I
    const/16 v22, 0x0

    .line 631
    .local v22, shift:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move v0, v11

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    .line 652
    :goto_2
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "curpos"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 655
    .local v16, pos:I
    if-ltz v16, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    move v3, v0

    move/from16 v0, v16

    move v1, v3

    if-lt v0, v1, :cond_9

    .line 657
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 759
    .end local v11           #i:I
    .end local v13           #n:I
    .end local v15           #plen:I
    .end local v16           #pos:I
    .end local v22           #shift:I
    :cond_3
    :goto_3
    return-void

    .line 625
    .end local v18           #qlen:I
    :cond_4
    const/4 v3, 0x0

    move/from16 v18, v3

    goto :goto_0

    .line 632
    .restart local v11       #i:I
    .restart local v13       #n:I
    .restart local v15       #plen:I
    .restart local v18       #qlen:I
    .restart local v22       #shift:I
    :cond_5
    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 633
    .local v9, c:C
    const/16 v3, 0x3b

    if-ne v9, v3, :cond_6

    .line 634
    add-int/lit8 v3, v15, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    move-object v3, v0

    int-to-long v4, v13

    aput-wide v4, v3, v15

    .line 636
    add-int/lit8 v15, v15, 0x1

    .line 637
    const/4 v13, 0x0

    .line 638
    const/16 v22, 0x0

    .line 631
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 640
    :cond_6
    const/16 v3, 0x30

    if-lt v9, v3, :cond_7

    const/16 v3, 0x39

    if-gt v9, v3, :cond_7

    .line 641
    const/16 v3, 0x30

    sub-int v3, v9, v3

    shl-int v3, v3, v22

    add-int/2addr v13, v3

    .line 649
    :goto_5
    add-int/lit8 v22, v22, 0x4

    goto :goto_4

    .line 642
    :cond_7
    const/16 v3, 0x61

    if-lt v9, v3, :cond_8

    const/16 v3, 0x66

    if-gt v9, v3, :cond_8

    .line 643
    add-int/lit8 v3, v9, 0xa

    const/16 v4, 0x61

    sub-int/2addr v3, v4

    shl-int v3, v3, v22

    add-int/2addr v13, v3

    goto :goto_5

    .line 646
    :cond_8
    const/4 v15, 0x0

    .line 647
    goto :goto_2

    .line 660
    .end local v9           #c:C
    .restart local v16       #pos:I
    :cond_9
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 668
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 669
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    move v7, v0

    aget-wide v6, v6, v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 667
    invoke-static/range {v3 .. v8}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 670
    .local v10, crsr:Landroid/database/Cursor;
    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_b

    .line 672
    :cond_a
    const-wide/16 v3, 0xbb8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 674
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    move v8, v0

    aget-wide v7, v7, v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 673
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 677
    :cond_b
    if-eqz v10, :cond_c

    .line 678
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 691
    :cond_c
    const/16 v3, 0x14

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 692
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 693
    invoke-direct/range {p0 .. p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 694
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_d

    .line 697
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    goto/16 :goto_3

    .line 701
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "seekpos"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    .line 702
    .local v20, seekpos:J
    const-wide/16 v3, 0x0

    cmp-long v3, v20, v3

    if-ltz v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v3

    cmp-long v3, v20, v3

    if-gez v3, :cond_12

    move-wide/from16 v3, v20

    :goto_6
    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 703
    const-string v3, "MediaPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "restored queue, currently at position "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 705
    const-string v5, " (requested "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 703
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "repeatmode"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 708
    .local v19, repmode:I
    const/4 v3, 0x2

    move/from16 v0, v19

    move v1, v3

    if-eq v0, v1, :cond_e

    const/4 v3, 0x1

    move/from16 v0, v19

    move v1, v3

    if-eq v0, v1, :cond_e

    .line 709
    const/16 v19, 0x0

    .line 711
    :cond_e
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "shufflemode"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 714
    .local v23, shufmode:I
    const/4 v3, 0x2

    move/from16 v0, v23

    move v1, v3

    if-eq v0, v1, :cond_f

    const/4 v3, 0x1

    move/from16 v0, v23

    move v1, v3

    if-eq v0, v1, :cond_f

    .line 715
    const/16 v23, 0x0

    .line 717
    :cond_f
    if-eqz v23, :cond_10

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object v3, v0

    const-string v4, "history"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 720
    if-eqz v17, :cond_13

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v18, v3

    .line 721
    :goto_7
    const/4 v3, 0x1

    move/from16 v0, v18

    move v1, v3

    if-le v0, v1, :cond_10

    .line 722
    const/4 v15, 0x0

    .line 723
    const/4 v13, 0x0

    .line 724
    const/16 v22, 0x0

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 726
    const/4 v11, 0x0

    :goto_8
    move v0, v11

    move/from16 v1, v18

    if-lt v0, v1, :cond_14

    .line 752
    :cond_10
    :goto_9
    const/4 v3, 0x2

    move/from16 v0, v23

    move v1, v3

    if-ne v0, v1, :cond_11

    .line 753
    invoke-direct/range {p0 .. p0}, Lcom/android/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v3

    if-nez v3, :cond_11

    .line 754
    const/16 v23, 0x0

    .line 757
    :cond_11
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    goto/16 :goto_3

    .line 702
    .end local v19           #repmode:I
    .end local v23           #shufmode:I
    :cond_12
    const-wide/16 v3, 0x0

    goto/16 :goto_6

    .line 720
    .restart local v19       #repmode:I
    .restart local v23       #shufmode:I
    :cond_13
    const/4 v3, 0x0

    move/from16 v18, v3

    goto :goto_7

    .line 727
    :cond_14
    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 728
    .restart local v9       #c:C
    const/16 v3, 0x3b

    if-ne v9, v3, :cond_16

    .line 729
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    move v3, v0

    if-lt v13, v3, :cond_15

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    goto :goto_9

    .line 734
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    move-object v3, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 735
    const/4 v13, 0x0

    .line 736
    const/16 v22, 0x0

    .line 726
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 738
    :cond_16
    const/16 v3, 0x30

    if-lt v9, v3, :cond_17

    const/16 v3, 0x39

    if-gt v9, v3, :cond_17

    .line 739
    const/16 v3, 0x30

    sub-int v3, v9, v3

    shl-int v3, v3, v22

    add-int/2addr v13, v3

    .line 747
    :goto_b
    add-int/lit8 v22, v22, 0x4

    goto :goto_a

    .line 740
    :cond_17
    const/16 v3, 0x61

    if-lt v9, v3, :cond_18

    const/16 v3, 0x66

    if-gt v9, v3, :cond_18

    .line 741
    add-int/lit8 v3, v9, 0xa

    const/16 v4, 0x61

    sub-int/2addr v3, v4

    shl-int v3, v3, v22

    add-int/2addr v13, v3

    goto :goto_b

    .line 744
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    goto :goto_9
.end method

.method private removeTracksInternal(II)I
    .locals 8
    .parameter "first"
    .parameter "last"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1647
    monitor-enter p0

    .line 1648
    if-ge p2, p1, :cond_0

    :try_start_0
    monitor-exit p0

    .line 1681
    :goto_0
    return v4

    .line 1649
    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 1650
    :cond_1
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v4, :cond_2

    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int p2, v4, v6

    .line 1652
    :cond_2
    const/4 v0, 0x0

    .line 1653
    .local v0, gotonext:Z
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt p1, v4, :cond_5

    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt v4, p2, :cond_5

    .line 1654
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1655
    const/4 v0, 0x1

    .line 1659
    :cond_3
    :goto_1
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v4, p2

    sub-int v2, v4, v6

    .line 1660
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-lt v1, v2, :cond_6

    .line 1663
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1665
    if-eqz v0, :cond_4

    .line 1666
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v4, :cond_7

    .line 1667
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1668
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1681
    :cond_4
    :goto_3
    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1647
    .end local v0           #gotonext:Z
    .end local v1           #i:I
    .end local v2           #num:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1656
    .restart local v0       #gotonext:Z
    :cond_5
    :try_start_1
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-le v4, p2, :cond_3

    .line 1657
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1661
    .restart local v1       #i:I
    .restart local v2       #num:I
    :cond_6
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int v5, p1, v1

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v7, p2, 0x1

    add-int/2addr v7, v1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    .line 1660
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1670
    :cond_7
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v4, v5, :cond_8

    .line 1671
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1673
    :cond_8
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    .line 1674
    .local v3, wasPlaying:Z
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1675
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1676
    if-eqz v3, :cond_4

    .line 1677
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private saveBookmarkIfNeeded()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    .line 1537
    :try_start_0
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->isPodcast()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1538
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v4

    .line 1539
    .local v4, pos:J
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v0

    .line 1540
    .local v0, bookmark:J
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    .line 1541
    .local v2, duration:J
    cmp-long v8, v4, v0

    if-gez v8, :cond_0

    add-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gtz v8, :cond_1

    .line 1542
    :cond_0
    cmp-long v8, v4, v0

    if-lez v8, :cond_2

    sub-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gez v8, :cond_2

    .line 1561
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    :cond_1
    :goto_0
    return-void

    .line 1547
    .restart local v0       #bookmark:J
    .restart local v2       #duration:J
    .restart local v4       #pos:J
    :cond_2
    const-wide/16 v8, 0x3a98

    cmp-long v8, v4, v8

    if-ltz v8, :cond_3

    add-long v8, v4, v10

    cmp-long v8, v8, v2

    if-lez v8, :cond_4

    .line 1549
    :cond_3
    const-wide/16 v4, 0x0

    .line 1553
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1554
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "bookmark"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1556
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1555
    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1557
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1559
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private saveQueue(Z)V
    .locals 13
    .parameter "full"

    .prologue
    const-wide/16 v9, 0x0

    const-string v12, ";"

    const-string v11, "0;"

    .line 549
    iget-boolean v7, p0, Lcom/android/music/MediaPlaybackService;->mOneShot:Z

    if-eqz v7, :cond_0

    .line 609
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 554
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_1

    .line 555
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .local v6, q:Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 564
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v3, :cond_3

    .line 578
    const-string v7, "queue"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 579
    const-string v7, "cardid"

    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 580
    iget v7, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-eqz v7, :cond_1

    .line 582
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v3

    .line 583
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 584
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v3, :cond_6

    .line 597
    const-string v7, "history"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 600
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v6           #q:Ljava/lang/StringBuilder;
    :cond_1
    const-string v7, "curpos"

    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 601
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v7}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 602
    const-string v7, "seekpos"

    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v8}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v8

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 604
    :cond_2
    const-string v7, "repeatmode"

    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 605
    const-string v7, "shufflemode"

    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 606
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 565
    .restart local v2       #i:I
    .restart local v3       #len:I
    .restart local v6       #q:Ljava/lang/StringBuilder;
    :cond_3
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v4, v7, v2

    .line 566
    .local v4, n:J
    cmp-long v7, v4, v9

    if-nez v7, :cond_5

    .line 567
    const-string v7, "0;"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 570
    :cond_4
    const-wide/16 v7, 0xf

    and-long/2addr v7, v4

    long-to-int v0, v7

    .line 571
    .local v0, digit:I
    const/4 v7, 0x4

    shr-long/2addr v4, v7

    .line 572
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->hexdigits:[C

    aget-char v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 569
    .end local v0           #digit:I
    :cond_5
    cmp-long v7, v4, v9

    if-nez v7, :cond_4

    .line 574
    const-string v7, ";"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 585
    .end local v4           #n:J
    :cond_6
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 586
    .local v4, n:I
    if-nez v4, :cond_8

    .line 587
    const-string v7, "0;"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 590
    :cond_7
    and-int/lit8 v0, v4, 0xf

    .line 591
    .restart local v0       #digit:I
    shr-int/lit8 v4, v4, 0x4

    .line 592
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->hexdigits:[C

    aget-char v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 589
    .end local v0           #digit:I
    :cond_8
    if-nez v4, :cond_7

    .line 594
    const-string v7, ";"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method private startAndFadeIn()V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 271
    return-void
.end method

.method private startProgressUpdate()V
    .locals 6

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/music/MediaPlaybackService$8;

    invoke-direct {v1, p0}, Lcom/android/music/MediaPlaybackService$8;-><init>(Lcom/android/music/MediaPlaybackService;)V

    .line 2162
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    .line 2154
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 2163
    return-void
.end method

.method private stop(Z)V
    .locals 3
    .parameter "remove_status_icon"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1300
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1303
    :cond_0
    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1304
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1305
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1306
    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1308
    :cond_1
    if-eqz p1, :cond_3

    .line 1309
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1313
    :goto_0
    if-eqz p1, :cond_2

    .line 1314
    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1315
    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsPaused:Z

    .line 1316
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->sendMediaPlayInfo()V

    .line 1318
    :cond_2
    return-void

    .line 1311
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->stopForeground(Z)V

    goto :goto_0
.end method

.method private stopProgressUpdate()V
    .locals 1

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2169
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2170
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->timer:Ljava/util/Timer;

    .line 2173
    :cond_0
    return-void
.end method

.method private toggleShuffle()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 327
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 328
    .local v0, shuffle:I
    if-nez v0, :cond_1

    .line 329
    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackService;->setShuffleMode(I)V

    .line 330
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getRepeatMode()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 331
    invoke-virtual {p0, v3}, Lcom/android/music/MediaPlaybackService;->setRepeatMode(I)V

    .line 338
    :cond_0
    :goto_0
    const-string v1, "com.android.music.shufflemodechanged"

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 339
    return-void

    .line 333
    :cond_1
    if-eq v0, v2, :cond_2

    .line 334
    if-ne v0, v3, :cond_0

    .line 335
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->setShuffleMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 1
    .parameter "storagePath"

    .prologue
    .line 876
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 877
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 878
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 879
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 2177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " items in queue, currently at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2178
    const-string v0, "Currently loaded:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2180
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2181
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2182
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "actual: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$2(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shuffle mode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2186
    invoke-static {p2}, Lcom/android/music/MusicUtils;->debugDump(Ljava/io/PrintWriter;)V

    .line 2187
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1865
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 1867
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public enqueue([JI)V
    .locals 2
    .parameter "list"
    .parameter "action"

    .prologue
    const-string v0, "com.android.music.queuechanged"

    const-string v0, "com.android.music.metachanged"

    .line 1010
    monitor-enter p0

    .line 1011
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_2

    .line 1012
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/music/MediaPlaybackService;->addToPlayList([JI)V

    .line 1013
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1026
    :cond_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_1

    .line 1027
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1028
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1029
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1030
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1010
    :cond_1
    monitor-exit p0

    .line 1033
    :goto_0
    return-void

    .line 1016
    :cond_2
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/android/music/MediaPlaybackService;->addToPlayList([JI)V

    .line 1017
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1018
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1019
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1020
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1021
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1022
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1023
    monitor-exit p0

    goto :goto_0

    .line 1010
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumId()J
    .locals 3

    .prologue
    .line 1824
    monitor-enter p0

    .line 1825
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1826
    monitor-exit p0

    const-wide/16 v0, -0x1

    .line 1828
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "album_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 1824
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1815
    monitor-enter p0

    .line 1816
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1817
    monitor-exit p0

    const/4 v0, 0x0

    .line 1819
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "album"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 1815
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistId()J
    .locals 3

    .prologue
    .line 1806
    monitor-enter p0

    .line 1807
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1808
    monitor-exit p0

    const-wide/16 v0, -0x1

    .line 1810
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "artist_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 1806
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1797
    monitor-enter p0

    .line 1798
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1799
    monitor-exit p0

    const/4 v0, 0x0

    .line 1801
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "artist"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 1797
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 1761
    monitor-enter p0

    .line 1762
    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    monitor-exit p0

    .line 1766
    :goto_0
    return-wide v0

    .line 1761
    :cond_0
    monitor-exit p0

    .line 1766
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1761
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 1745
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method public getQueue()[J
    .locals 5

    .prologue
    .line 1125
    monitor-enter p0

    .line 1126
    :try_start_0
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1127
    .local v1, len:I
    new-array v2, v1, [J

    .line 1128
    .local v2, list:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 1131
    monitor-exit p0

    return-object v2

    .line 1129
    :cond_0
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 1128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1125
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 1774
    monitor-enter p0

    .line 1775
    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0

    return v0

    .line 1774
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 1741
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 1731
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1833
    monitor-enter p0

    .line 1834
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1835
    monitor-exit p0

    const/4 v0, 0x0

    .line 1837
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 1833
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected hideNotification()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mHideNotificationHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 202
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 203
    .local v0, status:Landroid/app/Notification;
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 204
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 205
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 206
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1358
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 7
    .parameter "index1"
    .parameter "index2"

    .prologue
    const/4 v6, 0x1

    .line 1086
    monitor-enter p0

    .line 1087
    :try_start_0
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p1, v3, :cond_0

    .line 1088
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int p1, v3, v6

    .line 1090
    :cond_0
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v3, :cond_1

    .line 1091
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int p2, v3, v6

    .line 1093
    :cond_1
    if-ge p1, p2, :cond_5

    .line 1094
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, p1

    .line 1095
    .local v1, tmp:J
    move v0, p1

    .local v0, i:I
    :goto_0
    if-lt v0, p2, :cond_3

    .line 1098
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aput-wide v1, v3, p2

    .line 1099
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ne v3, p1, :cond_4

    .line 1100
    iput p2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1116
    .end local v0           #i:I
    .end local v1           #tmp:J
    :cond_2
    :goto_1
    const-string v3, "com.android.music.queuechanged"

    invoke-direct {p0, v3}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1086
    monitor-exit p0

    .line 1118
    return-void

    .line 1096
    .restart local v0       #i:I
    .restart local v1       #tmp:J
    :cond_3
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v0

    .line 1095
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1101
    :cond_4
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-lt v3, p1, :cond_2

    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt v3, p2, :cond_2

    .line 1102
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1086
    .end local v0           #i:I
    .end local v1           #tmp:J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1104
    :cond_5
    if-ge p2, p1, :cond_2

    .line 1105
    :try_start_1
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, p1

    .line 1106
    .restart local v1       #tmp:J
    move v0, p1

    .restart local v0       #i:I
    :goto_2
    if-gt v0, p2, :cond_6

    .line 1109
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aput-wide v1, v3, p2

    .line 1110
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ne v3, p1, :cond_7

    .line 1111
    iput p2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1107
    :cond_6
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    sub-int v5, v0, v6

    aget-wide v4, v4, v5

    aput-wide v4, v3, v0

    .line 1106
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1112
    :cond_7
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-lt v3, p2, :cond_2

    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt v3, p1, :cond_2

    .line 1113
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public next(Z)V
    .locals 12
    .parameter "force"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 1420
    monitor-enter p0

    .line 1421
    :try_start_0
    iget-boolean v8, p0, Lcom/android/music/MediaPlaybackService;->mOneShot:Z

    if-eqz v8, :cond_0

    .line 1423
    const-wide/16 v8, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 1424
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1425
    monitor-exit p0

    .line 1526
    :goto_0
    return-void

    .line 1428
    :cond_0
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v8, :cond_1

    .line 1429
    const-string v8, "MediaPlaybackService"

    const-string v9, "No play queue"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    monitor-exit p0

    goto :goto_0

    .line 1420
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1435
    :cond_1
    :try_start_1
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v8, :cond_2

    .line 1436
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    iget v9, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1438
    :cond_2
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_3

    .line 1439
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1442
    :cond_3
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v8, v11, :cond_e

    .line 1446
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1447
    .local v4, numTracks:I
    new-array v7, v4, [I

    .line 1448
    .local v7, tracks:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v4, :cond_8

    .line 1452
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v3

    .line 1453
    .local v3, numHistory:I
    move v5, v4

    .line 1454
    .local v5, numUnplayed:I
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v3, :cond_9

    .line 1465
    if-gtz v5, :cond_5

    .line 1467
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v8, v10, :cond_4

    if-eqz p1, :cond_c

    .line 1469
    :cond_4
    move v5, v4

    .line 1470
    const/4 v1, 0x0

    :goto_3
    if-lt v1, v4, :cond_b

    .line 1485
    :cond_5
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    invoke-virtual {v8, v5}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v6

    .line 1486
    .local v6, skip:I
    const/4 v0, -0x1

    .line 1488
    .local v0, cnt:I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    aget v8, v7, v0

    if-ltz v8, :cond_6

    .line 1490
    add-int/lit8 v6, v6, -0x1

    .line 1491
    if-gez v6, :cond_6

    .line 1495
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1517
    .end local v0           #cnt:I
    .end local v1           #i:I
    .end local v3           #numHistory:I
    .end local v4           #numTracks:I
    .end local v5           #numUnplayed:I
    .end local v6           #skip:I
    .end local v7           #tracks:[I
    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1518
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1519
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1520
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1521
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->startProgressUpdate()V

    .line 1522
    const-string v8, "com.android.music.metachanged"

    invoke-direct {p0, v8}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1523
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/music/MediaPlaybackService;->mIsPaused:Z

    .line 1524
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->sendMediaPlayInfo()V

    .line 1420
    monitor-exit p0

    goto :goto_0

    .line 1449
    .restart local v1       #i:I
    .restart local v4       #numTracks:I
    .restart local v7       #tracks:[I
    :cond_8
    aput v1, v7, v1

    .line 1448
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1455
    .restart local v3       #numHistory:I
    .restart local v5       #numUnplayed:I
    :cond_9
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1456
    .local v2, idx:I
    if-ge v2, v4, :cond_a

    aget v8, v7, v2

    if-ltz v8, :cond_a

    .line 1457
    add-int/lit8 v5, v5, -0x1

    .line 1458
    const/4 v8, -0x1

    aput v8, v7, v2

    .line 1454
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1471
    .end local v2           #idx:I
    :cond_b
    aput v1, v7, v1

    .line 1470
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1475
    :cond_c
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1476
    iget-boolean v8, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v8, :cond_d

    .line 1477
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1478
    const-string v8, "com.android.music.playstatechanged"

    invoke-direct {p0, v8}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1479
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/music/MediaPlaybackService;->mIsPaused:Z

    .line 1480
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->sendMediaPlayInfo()V

    .line 1482
    :cond_d
    monitor-exit p0

    goto/16 :goto_0

    .line 1496
    .end local v1           #i:I
    .end local v3           #numHistory:I
    .end local v4           #numTracks:I
    .end local v5           #numUnplayed:I
    .end local v7           #tracks:[I
    :cond_e
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v8, v10, :cond_f

    .line 1497
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 1498
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_4

    .line 1500
    :cond_f
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    iget v9, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v9, v11

    if-lt v8, v9, :cond_12

    .line 1502
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-nez v8, :cond_10

    if-nez p1, :cond_10

    .line 1504
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1505
    const-string v8, "com.android.music.playbackcomplete"

    invoke-direct {p0, v8}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1506
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1507
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/music/MediaPlaybackService;->mIsPaused:Z

    .line 1508
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->sendMediaPlayInfo()V

    .line 1509
    monitor-exit p0

    goto/16 :goto_0

    .line 1510
    :cond_10
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v8, v10, :cond_11

    if-eqz p1, :cond_7

    .line 1511
    :cond_11
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto/16 :goto_4

    .line 1514
    :cond_12
    iget v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 765
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 465
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 467
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 468
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 469
    const-class v7, Lcom/android/music/MediaButtonIntentReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 471
    const-string v4, "Music"

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lcom/android/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 472
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getCardId(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    .line 474
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->registerExternalStorageListener()V

    .line 477
    new-instance v4, Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {v4, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    .line 478
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 480
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->reloadQueue()V

    .line 482
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 483
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v4, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v4, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v4, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    const-string v4, "com.android.music.musicservicecommand.next"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    const-string v4, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    const-string v4, "com.android.music.musicservicecommand.shuffle"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    const-string v4, "com.android.music.musicservicecommand.repeat"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string v4, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 493
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 494
    .local v3, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 495
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 496
    .local v2, pm:Landroid/os/PowerManager;
    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 497
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 501
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 502
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v5, 0xea60

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 504
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 509
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    const-string v1, "MediaPlaybackService"

    const-string v2, "Service being destroyed while still playing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->release()V

    .line 514
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    .line 516
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 519
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 520
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 521
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mHideNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->hideNotification()V

    .line 524
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 526
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 529
    :cond_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 530
    .local v0, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 532
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 533
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 534
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 535
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 537
    :cond_2
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 538
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 539
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 772
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 776
    iput p3, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    .line 777
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 779
    if-eqz p1, :cond_1

    .line 780
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, action:Ljava/lang/String;
    const-string v3, "command"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, cmd:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onStartCommand "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 784
    const-string v3, "next"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.music.musicservicecommand.next"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 785
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 816
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #cmd:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 817
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 818
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 819
    return v7

    .line 786
    .end local v2           #msg:Landroid/os/Message;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #cmd:Ljava/lang/String;
    :cond_2
    const-string v3, "previous"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 787
    :cond_3
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v3

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    .line 788
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->prev()V

    goto :goto_0

    .line 790
    :cond_4
    invoke-virtual {p0, v9, v10}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 791
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_0

    .line 793
    :cond_5
    const-string v3, "togglepause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 794
    :cond_6
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 795
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 796
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto :goto_0

    .line 798
    :cond_7
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_0

    .line 800
    :cond_8
    const-string v3, "pause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 801
    :cond_9
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 802
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto :goto_0

    .line 803
    :cond_a
    const-string v3, "stop"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 804
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 805
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 806
    invoke-virtual {p0, v9, v10}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto :goto_0

    .line 807
    :cond_b
    const-string v3, "shuffle"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "com.android.music.musicservicecommand.shuffle"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 808
    :cond_c
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->toggleShuffle()V

    goto/16 :goto_0

    .line 809
    :cond_d
    const-string v3, "repeat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "com.android.music.musicservicecommand.repeat"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 810
    :cond_e
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->cycleRepeat()V

    goto/16 :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 824
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 827
    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 829
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v4

    .line 848
    :goto_0
    return v1

    .line 838
    :cond_1
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 839
    :cond_2
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 840
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v1, v4

    .line 841
    goto :goto_0

    .line 845
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->hideNotification()V

    .line 846
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->sendMediaPlayInfo()V

    .line 847
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->stopSelf(I)V

    move v1, v4

    .line 848
    goto :goto_0
.end method

.method public open(Ljava/lang/String;Z)V
    .locals 9
    .parameter "path"
    .parameter "oneshot"

    .prologue
    const/4 v8, 0x1

    .line 1191
    monitor-enter p0

    .line 1192
    if-nez p1, :cond_0

    .line 1193
    :try_start_0
    monitor-exit p0

    .line 1260
    :goto_0
    return-void

    .line 1196
    :cond_0
    if-eqz p2, :cond_1

    .line 1197
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 1198
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1199
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1200
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1204
    :cond_1
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_2

    .line 1206
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1210
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "content://media/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1211
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1212
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 1213
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1221
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1222
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 1223
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 1224
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1225
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1237
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_2
    :goto_2
    :try_start_2
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1238
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1239
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mMediaUri:Landroid/net/Uri;

    .line 1240
    iput-boolean p2, p0, Lcom/android/music/MediaPlaybackService;->mOneShot:Z

    .line 1241
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1242
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1243
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    const/16 v5, 0xa

    if-ge v2, v5, :cond_3

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-le v2, v8, :cond_3

    .line 1245
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 1247
    :cond_3
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-eqz v2, :cond_5

    .line 1249
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 1250
    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    if-nez v2, :cond_4

    .line 1251
    const v2, 0x7f08004c

    const/4 v5, 0x0

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1253
    :cond_4
    const-string v2, "MediaPlaybackService"

    const-string v5, "Failed to open file for playback"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_5
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->startProgressUpdate()V

    .line 1191
    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1215
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_6
    :try_start_3
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1216
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v3, "_data=?"

    .line 1217
    .restart local v3       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 1227
    :cond_7
    :try_start_4
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 1228
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1229
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1230
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    aput-wide v6, v2, v5

    .line 1231
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 1234
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 1257
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    :try_start_5
    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public open([JI)V
    .locals 10
    .parameter "list"
    .parameter "position"

    .prologue
    .line 1043
    monitor-enter p0

    .line 1044
    :try_start_0
    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1045
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v3

    .line 1048
    .local v3, oldId:J
    array-length v1, p1

    .line 1049
    .local v1, listlength:I
    const/4 v2, 0x1

    .line 1050
    .local v2, newlist:Z
    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v6, v1, :cond_1

    .line 1052
    const/4 v2, 0x0

    .line 1053
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_4

    .line 1060
    .end local v0           #i:I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 1061
    const/4 v6, -0x1

    invoke-direct {p0, p1, v6}, Lcom/android/music/MediaPlaybackService;->addToPlayList([JI)V

    .line 1062
    const-string v6, "com.android.music.queuechanged"

    invoke-direct {p0, v6}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1064
    :cond_2
    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1065
    .local v5, oldpos:I
    if-ltz p2, :cond_6

    .line 1066
    iput p2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1070
    :goto_2
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 1072
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1073
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1074
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v6

    cmp-long v6, v3, v6

    if-eqz v6, :cond_3

    .line 1075
    const-string v6, "com.android.music.metachanged"

    invoke-direct {p0, v6}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1043
    :cond_3
    monitor-exit p0

    .line 1078
    return-void

    .line 1054
    .end local v5           #oldpos:I
    .restart local v0       #i:I
    :cond_4
    aget-wide v6, p1, v0

    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v8, v8, v0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 1055
    const/4 v2, 0x1

    .line 1056
    goto :goto_1

    .line 1053
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1068
    .end local v0           #i:I
    .restart local v5       #oldpos:I
    :cond_6
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    iget v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v6, v7}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_2

    .line 1043
    .end local v1           #listlength:I
    .end local v2           #newlist:Z
    .end local v3           #oldId:J
    .end local v5           #oldpos:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public openAsync(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 1166
    monitor-enter p0

    .line 1167
    if-nez p1, :cond_0

    .line 1168
    :try_start_0
    monitor-exit p0

    .line 1181
    :goto_0
    return-void

    .line 1171
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 1172
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1173
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1174
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1176
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1178
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setDataSourceAsync(Ljava/lang/String;)V

    .line 1179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mOneShot:Z

    .line 1166
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1332
    monitor-enter p0

    .line 1333
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1334
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->pause()V

    .line 1336
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->stopProgressUpdate()V

    .line 1337
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->delayHideNotification()V

    .line 1338
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mPausedInCall:Z

    if-eqz v0, :cond_0

    .line 1339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z

    .line 1340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mPausedInCall:Z

    .line 1342
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsPaused:Z

    .line 1344
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->sendMediaPlayInfo()V

    .line 1345
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->showNotification()V

    .line 1346
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1347
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1332
    :cond_1
    monitor-exit p0

    .line 1350
    return-void

    .line 1332
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x7d0

    const/4 v6, 0x1

    .line 1266
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1268
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1269
    const-class v5, Lcom/android/music/MediaButtonIntentReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1270
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1271
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->startProgressUpdate()V

    .line 1273
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 1274
    .local v0, duration:J
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v2, v6, :cond_0

    cmp-long v2, v0, v7

    if-lez v2, :cond_0

    .line 1275
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v2

    sub-long v4, v0, v7

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 1276
    invoke-virtual {p0, v6}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 1279
    :cond_0
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->start()V

    .line 1280
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackService;->mIsPaused:Z

    .line 1281
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mHideNotificationHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1283
    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v2, :cond_1

    .line 1284
    iput-boolean v6, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1285
    const-string v2, "com.android.music.playstatechanged"

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1287
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->sendMediaPlayInfo()V

    .line 1288
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->showNotification()V

    .line 1297
    .end local v0           #duration:J
    :cond_2
    :goto_0
    return-void

    .line 1290
    :cond_3
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v2, :cond_2

    .line 1291
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->startProgressUpdate()V

    .line 1295
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackService;->setShuffleMode(I)V

    goto :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    .line 1877
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1386
    monitor-enter p0

    .line 1387
    :try_start_0
    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackService;->mOneShot:Z

    if-eqz v2, :cond_0

    .line 1389
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 1390
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1391
    monitor-exit p0

    .line 1417
    :goto_0
    return-void

    .line 1393
    :cond_0
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v2, v3, :cond_2

    .line 1395
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1396
    .local v0, histsize:I
    if-nez v0, :cond_1

    .line 1398
    monitor-exit p0

    goto :goto_0

    .line 1386
    .end local v0           #histsize:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1400
    .restart local v0       #histsize:I
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1401
    .local v1, pos:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1409
    .end local v0           #histsize:I
    .end local v1           #pos:Ljava/lang/Integer;
    :goto_1
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1410
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1411
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1412
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1413
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->startProgressUpdate()V

    .line 1414
    const-string v2, "com.android.music.metachanged"

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->sendMediaPlayInfo()V

    .line 1386
    monitor-exit p0

    goto :goto_0

    .line 1403
    :cond_2
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-lez v2, :cond_3

    .line 1404
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1406
    :cond_3
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 887
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 888
    new-instance v1, Lcom/android/music/MediaPlaybackService$7;

    invoke-direct {v1, p0}, Lcom/android/music/MediaPlaybackService$7;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 907
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 908
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 909
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 910
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 911
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 913
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public removeTrack(J)I
    .locals 4
    .parameter "id"

    .prologue
    .line 1692
    const/4 v1, 0x0

    .line 1693
    .local v1, numremoved:I
    monitor-enter p0

    .line 1694
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v2, :cond_1

    .line 1693
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1701
    if-lez v1, :cond_0

    .line 1702
    const-string v2, "com.android.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1704
    :cond_0
    return v1

    .line 1695
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 1696
    invoke-direct {p0, v0, v0}, Lcom/android/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 1697
    add-int/lit8 v0, v0, -0x1

    .line 1694
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1693
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeTracks(II)I
    .locals 2
    .parameter "first"
    .parameter "last"

    .prologue
    .line 1639
    invoke-direct {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v0

    .line 1640
    .local v0, numremoved:I
    if-lez v0, :cond_0

    .line 1641
    const-string v1, "com.android.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1643
    :cond_0
    return v0
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1887
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide p1

    .line 1889
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->seek(J)J

    move-result-wide v0

    .line 1891
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public sendMediaPlayInfo()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "isStop"

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.mediainfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, i:Landroid/content/Intent;
    const-string v1, "mediauri"

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 211
    const-string v1, "playing"

    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackService;->mIsPaused:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v1, :cond_2

    .line 213
    :cond_0
    const-string v1, "isStop"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    return-void

    :cond_1
    move v2, v4

    .line 211
    goto :goto_0

    .line 215
    :cond_2
    const-string v1, "isStop"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method public setQueuePosition(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 1784
    monitor-enter p0

    .line 1785
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1786
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1787
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1788
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1789
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1790
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1791
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 1784
    :cond_0
    monitor-exit p0

    .line 1794
    return-void

    .line 1784
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 1735
    monitor-enter p0

    .line 1736
    :try_start_0
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 1737
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 1735
    monitor-exit p0

    .line 1739
    return-void

    .line 1735
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 2
    .parameter "shufflemode"

    .prologue
    .line 1708
    monitor-enter p0

    .line 1709
    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v0, :cond_0

    .line 1710
    monitor-exit p0

    .line 1729
    :goto_0
    return-void

    .line 1712
    :cond_0
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 1713
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1714
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1715
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1716
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 1717
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1718
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1719
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1720
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1721
    monitor-exit p0

    goto :goto_0

    .line 1708
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1724
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 1727
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 1708
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected showNotification()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 187
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03001b

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 188
    .local v1, views:Landroid/widget/RemoteViews;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 189
    .local v0, status:Landroid/app/Notification;
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 190
    const/4 v2, 0x4

    iput v2, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 191
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 192
    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackService;->mIsPaused:Z

    if-nez v2, :cond_0

    const v2, 0x7f02008c

    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 195
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 194
    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 197
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 198
    return-void

    .line 193
    :cond_0
    const v2, 0x7f02008b

    iput v2, v0, Landroid/app/Notification;->icon:I

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1324
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1325
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->stopProgressUpdate()V

    .line 1326
    return-void
.end method
