.class public Lcom/android/music/MediaPlaybackService;
.super Landroid/app/Service;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MediaPlaybackService$ServiceStub;,
        Lcom/android/music/MediaPlaybackService$PlayControl;,
        Lcom/android/music/MediaPlaybackService$MultiPlayer;,
        Lcom/android/music/MediaPlaybackService$Shuffler;
    }
.end annotation


# static fields
.field private static final MUSIC_SIMPLE_NAME:Ljava/lang/String;

.field private static mPlayPrev:Z

.field private static mTrackEnd:Z


# instance fields
.field private final hexdigits:[C

.field private mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShuffleList:[J

.field private final mBinder:Landroid/os/IBinder;

.field private mCardId:I

.field private mCursor:Landroid/database/Cursor;

.field mCursorCols:[Ljava/lang/String;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mFileToPlay:Ljava/lang/String;

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

.field private mIB:Landroid/os/IBinder;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSupposedToBePlaying:Z

.field private mMaxVolume:F

.field private mMediaMountedCount:I

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mNotiImage:Landroid/graphics/Bitmap;

.field private mNotiManager:Landroid/app/NotificationManager;

.field private mNotification:Landroid/app/Notification;

.field private mOpenFailedCounter:I

.field private mPausedByOtherApp:Z

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;

.field private mPlayList:[J

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

.field private mPreferenceMusicSettings:Landroid/content/SharedPreferences;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mQueueIsSaveable:Z

.field private mQuietMode:Z

.field private mR2VSvalue:I

.field private final mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

.field private mRepeatMode:I

.field private mResumeAfterAlarm:Z

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mShuffleMode:I

.field private mSpkVolume:I

.field private mToast:Landroid/widget/Toast;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 204
    sput-boolean v0, Lcom/android/music/MediaPlaybackService;->mPlayPrev:Z

    .line 207
    sput-boolean v0, Lcom/android/music/MediaPlaybackService;->mTrackEnd:Z

    .line 256
    const-class v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/MediaPlaybackService;->MUSIC_SIMPLE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 699
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 161
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mResumeAfterAlarm:Z

    .line 167
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mR2VSvalue:I

    .line 191
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 192
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 193
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    .line 194
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[J

    .line 195
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    .line 196
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 197
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    .line 199
    iput v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 201
    new-instance v0, Lcom/android/music/MediaPlaybackService$Shuffler;

    invoke-direct {v0, v4}, Lcom/android/music/MediaPlaybackService$Shuffler;-><init>(Lcom/android/music/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    .line 202
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 209
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio._id AS _id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_podcast"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    .line 224
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    iput v5, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    .line 227
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 228
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 229
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 231
    iput-boolean v6, p0, Lcom/android/music/MediaPlaybackService;->mQueueIsSaveable:Z

    .line 233
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 234
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mPausedByOtherApp:Z

    .line 237
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;

    .line 244
    invoke-static {}, Lcom/android/music/MediaAppWidgetProvider;->getInstance()Lcom/android/music/MediaAppWidgetProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

    .line 250
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mMaxVolume:F

    .line 252
    iput v5, p0, Lcom/android/music/MediaPlaybackService;->mSpkVolume:I

    .line 266
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mNotiManager:Landroid/app/NotificationManager;

    .line 314
    new-instance v0, Lcom/android/music/MediaPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$1;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 443
    new-instance v0, Lcom/android/music/MediaPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$2;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 644
    new-instance v0, Lcom/android/music/MediaPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$3;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1002
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->hexdigits:[C

    .line 1362
    new-instance v0, Lcom/android/music/MediaPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$4;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 3438
    new-instance v0, Lcom/android/music/MediaPlaybackService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$ServiceStub;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 700
    return-void

    .line 1002
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

.method static synthetic access$100(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/music/MediaPlaybackService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->showToast(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$PlayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/android/music/MediaPlaybackService;->MUSIC_SIMPLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->turnOffMTMV()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->turnOffEQ()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->isMidiFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/music/MediaPlaybackService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->getMidiSpeakerVolume()F

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mSpkVolume:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mSpkVolume:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/music/MediaPlaybackService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/music/MediaPlaybackService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->getMidiHeadsetVolume()F

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mResumeAfterAlarm:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->startAndFadeIn()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mQueueIsSaveable:Z

    return p1
.end method

.method static synthetic access$2908(Lcom/android/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mPausedByOtherApp:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mPausedByOtherApp:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->reloadQueue()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mR2VSvalue:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mR2VSvalue:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/music/MediaPlaybackService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mMaxVolume:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/music/MediaPlaybackService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mMaxVolume:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method private addToPlayList([JI)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1497
    array-length v0, p1

    .line 1498
    if-gez p2, :cond_4

    .line 1499
    iput v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    move v1, v7

    .line 1502
    :goto_0
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1503
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-le v1, v2, :cond_0

    .line 1504
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1508
    :cond_0
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v2, v1

    .line 1509
    :goto_1
    if-lez v2, :cond_1

    .line 1510
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int v4, v1, v2

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int v6, v1, v2

    sub-int/2addr v6, v0

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 1509
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    move v2, v7

    .line 1514
    :goto_2
    if-ge v2, v0, :cond_2

    .line 1515
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int v4, v1, v2

    aget-wide v5, p1, v2

    aput-wide v5, v3, v4

    .line 1514
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1517
    :cond_2
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1519
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_3

    .line 1520
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1522
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1524
    :cond_3
    return-void

    :cond_4
    move v1, p2

    goto :goto_0
.end method

.method private doAutoShuffleUpdate()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2319
    .line 2322
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_5

    .line 2323
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    const/16 v1, 0x9

    sub-int/2addr v0, v1

    invoke-virtual {p0, v7, v0}, Lcom/android/music/MediaPlaybackService;->removeTracks(II)I

    move v0, v8

    .line 2327
    :goto_0
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gez v3, :cond_1

    const/4 v3, -0x1

    :goto_1
    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    move v2, v0

    move v0, v7

    .line 2328
    :goto_2
    if-ge v0, v1, :cond_3

    .line 2331
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    .line 2334
    :goto_3
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[J

    array-length v4, v4

    invoke-virtual {v3, v4}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v3

    .line 2335
    invoke-direct {p0, v3, v2}, Lcom/android/music/MediaPlaybackService;->wasRecentlyUsed(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2340
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2341
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v4, 0x64

    if-le v2, v4, :cond_0

    .line 2342
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v2, v7}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 2345
    :cond_0
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 2347
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[J

    aget-wide v5, v5, v3

    aput-wide v5, v2, v4

    .line 2328
    add-int/lit8 v0, v0, 0x1

    move v2, v8

    goto :goto_2

    .line 2327
    :cond_1
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 2338
    :cond_2
    div-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 2350
    :cond_3
    if-eqz v2, :cond_4

    .line 2351
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2354
    :cond_4
    return-void

    :cond_5
    move v0, v7

    goto :goto_0
.end method

.method private ensurePlayListCapacity(I)V
    .locals 5
    .parameter "size"

    .prologue
    .line 1480
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    array-length v3, v3

    if-le p1, v3, :cond_3

    .line 1484
    :cond_0
    mul-int/lit8 v3, p1, 0x2

    new-array v2, v3, [J

    .line 1485
    .local v2, newlist:[J
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    array-length v3, v3

    move v1, v3

    .line 1486
    .local v1, len:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1487
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 1486
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1485
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_1
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    move v1, v3

    goto :goto_0

    .line 1489
    .restart local v0       #i:I
    .restart local v1       #len:I
    :cond_2
    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    .line 1493
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #newlist:[J
    :cond_3
    return-void
.end method

.method private getBookmark()J
    .locals 2

    .prologue
    .line 2771
    monitor-enter p0

    .line 2772
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2773
    const-wide/16 v0, 0x0

    monitor-exit p0

    .line 2775
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 2776
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getFilePath()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2781
    monitor-enter p0

    .line 2782
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 2783
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 2789
    :goto_0
    return-object v1

    .line 2787
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 2791
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2788
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2789
    .local v0, e:Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v4

    goto :goto_0
.end method

.method private getMidiHeadsetVolume()F
    .locals 2

    .prologue
    .line 275
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 276
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v1, "situation=6;device=2"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method private getMidiSpeakerVolume()F
    .locals 2

    .prologue
    .line 270
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 271
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v1, "situation=6;device=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method private gotoIdleState()V
    .locals 4

    .prologue
    .line 2277
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2278
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2279
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2286
    return-void
.end method

.method private isMidiFile()Z
    .locals 7

    .prologue
    .line 280
    const/4 v3, 0x0

    .line 282
    .local v3, ret:Z
    const-string v2, "audio/mpeg"

    .line 285
    .local v2, mimeType:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    .line 288
    :try_start_0
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v6, "mime_type"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 293
    :goto_0
    const-string v4, "handleMessage MultiPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " midi volume mime_type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {v2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    .line 297
    .local v1, fileType:I
    const-string v4, "MultiPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " midi volume file_type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/16 v4, 0xd

    if-eq v1, v4, :cond_0

    const/16 v4, 0xe

    if-eq v1, v4, :cond_0

    const/16 v4, 0xf

    if-ne v1, v4, :cond_1

    .line 302
    :cond_0
    const/4 v3, 0x1

    .line 306
    .end local v1           #fileType:I
    :cond_1
    return v3

    .line 289
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 290
    .local v0, e:Landroid/database/CursorIndexOutOfBoundsException;
    invoke-virtual {v0}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method private isPodcast()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2762
    monitor-enter p0

    .line 2763
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2764
    monitor-exit p0

    move v0, v2

    .line 2766
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

    .line 2767
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v2

    .line 2766
    goto :goto_1
.end method

.method private makeAutoShuffleList()Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2398
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2401
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "is_music=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2404
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_2

    .line 2417
    :cond_0
    if-eqz v0, :cond_1

    .line 2418
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v6

    .line 2421
    :goto_0
    return v0

    .line 2407
    :cond_2
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 2408
    new-array v2, v1, [J

    move v3, v6

    .line 2409
    :goto_1
    if-ge v3, v1, :cond_3

    .line 2410
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 2411
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 2409
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2413
    :cond_3
    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2417
    if-eqz v0, :cond_4

    .line 2418
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    goto :goto_0

    .line 2415
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 2417
    :goto_2
    if-eqz v0, :cond_5

    .line 2418
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v6

    .line 2421
    goto :goto_0

    .line 2417
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_6

    .line 2418
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 2417
    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    .line 2415
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private makeMusicNotification()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 745
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020106

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    .line 746
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 747
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 748
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 749
    return-void
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1460
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1461
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1462
    const-string v1, "artist"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1463
    const-string v1, "album"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1464
    const-string v1, "track"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1466
    const-string v1, "playing"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1467
    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1469
    const-string v0, "com.android.music.queuechanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1470
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 1476
    :goto_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

    invoke-virtual {v0, p0, p1}, Lcom/android/music/MediaAppWidgetProvider;->notifyChange(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 1477
    return-void

    .line 1472
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_0
.end method

.method private openCurrent()V
    .locals 7

    .prologue
    .line 1670
    monitor-enter p0

    .line 1671
    :try_start_0
    const-string v0, "MediaPlaybackService"

    const-string v1, "openCurent"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1677
    :cond_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_1

    .line 1678
    monitor-exit p0

    .line 1707
    :goto_0
    return-void

    .line 1680
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1685
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 1691
    :try_start_2
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1694
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 1695
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->open(Ljava/lang/String;)V

    .line 1699
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->isPodcast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1700
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v0

    .line 1703
    const-wide/16 v2, 0x1388

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 1706
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1686
    :catch_0
    move-exception v0

    .line 1687
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private reloadQueue()V
    .locals 13

    .prologue
    const/16 v12, 0x61

    const/16 v11, 0x30

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1083
    .line 1086
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    .line 1087
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "cardid"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "cardid"

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    xor-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1091
    :cond_0
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    if-ne v0, v1, :cond_17

    .line 1094
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "queue"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1096
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1097
    :goto_1
    if-le v1, v10, :cond_6

    move v2, v9

    move v3, v9

    move v5, v9

    move v6, v9

    .line 1102
    :goto_2
    if-ge v2, v1, :cond_16

    .line 1103
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1104
    const/16 v8, 0x3b

    if-ne v7, v8, :cond_2

    .line 1105
    add-int/lit8 v3, v6, 0x1

    invoke-direct {p0, v3}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1106
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    int-to-long v7, v5

    aput-wide v7, v3, v6

    .line 1107
    add-int/lit8 v3, v6, 0x1

    move v5, v9

    move v6, v3

    move v3, v9

    .line 1102
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v1, v9

    .line 1096
    goto :goto_1

    .line 1111
    :cond_2
    if-lt v7, v11, :cond_3

    const/16 v8, 0x39

    if-gt v7, v8, :cond_3

    .line 1112
    sub-int/2addr v7, v11

    shl-int/2addr v7, v3

    add-int/2addr v5, v7

    .line 1120
    :goto_4
    add-int/lit8 v3, v3, 0x4

    goto :goto_3

    .line 1113
    :cond_3
    if-lt v7, v12, :cond_4

    const/16 v8, 0x66

    if-gt v7, v8, :cond_4

    .line 1114
    add-int/lit8 v7, v7, 0xa

    sub-int/2addr v7, v12

    shl-int/2addr v7, v3

    add-int/2addr v5, v7

    goto :goto_4

    :cond_4
    move v0, v9

    .line 1123
    :goto_5
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1125
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "curpos"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1126
    if-ltz v0, :cond_5

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v1, :cond_7

    .line 1128
    :cond_5
    iput v9, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1230
    :cond_6
    :goto_6
    return-void

    .line 1131
    :cond_7
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1138
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v5, v3, v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1141
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_9

    .line 1143
    :cond_8
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 1144
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v5, v5, v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1148
    :cond_9
    if-eqz v0, :cond_a

    .line 1149
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1162
    :cond_a
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 1163
    iput-boolean v10, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 1164
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1165
    iput-boolean v9, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 1166
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1168
    iput v9, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    goto :goto_6

    .line 1172
    :cond_b
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "seekpos"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1173
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_10

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    move-wide v2, v0

    :goto_7
    invoke-virtual {p0, v2, v3}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 1174
    const-string v2, "MediaPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restored queue, currently at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (requested "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "repeatmode"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1179
    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    if-eq v0, v10, :cond_c

    move v0, v9

    .line 1182
    :cond_c
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 1184
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "shufflemode"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1185
    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    if-eq v0, v10, :cond_d

    move v0, v9

    .line 1188
    :cond_d
    if-eqz v0, :cond_e

    .line 1190
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "history"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1191
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1192
    :goto_8
    if-le v2, v10, :cond_e

    .line 1196
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    move v3, v9

    move v4, v9

    move v5, v9

    .line 1197
    :goto_9
    if-ge v3, v2, :cond_e

    .line 1198
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1199
    const/16 v7, 0x3b

    if-ne v6, v7, :cond_13

    .line 1200
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v5, v4, :cond_12

    .line 1202
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 1223
    :cond_e
    :goto_a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 1224
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v1

    if-nez v1, :cond_f

    move v0, v9

    .line 1228
    :cond_f
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    goto/16 :goto_6

    .line 1173
    :cond_10
    const-wide/16 v2, 0x0

    goto/16 :goto_7

    :cond_11
    move v2, v9

    .line 1191
    goto :goto_8

    .line 1205
    :cond_12
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v4, v9

    move v5, v9

    .line 1197
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1209
    :cond_13
    if-lt v6, v11, :cond_14

    const/16 v7, 0x39

    if-gt v6, v7, :cond_14

    .line 1210
    sub-int/2addr v6, v11

    shl-int/2addr v6, v4

    add-int/2addr v5, v6

    .line 1218
    :goto_c
    add-int/lit8 v4, v4, 0x4

    goto :goto_b

    .line 1211
    :cond_14
    if-lt v6, v12, :cond_15

    const/16 v7, 0x66

    if-gt v6, v7, :cond_15

    .line 1212
    add-int/lit8 v6, v6, 0xa

    sub-int/2addr v6, v12

    shl-int/2addr v6, v4

    add-int/2addr v5, v6

    goto :goto_c

    .line 1215
    :cond_15
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    goto :goto_a

    :cond_16
    move v0, v6

    goto/16 :goto_5

    :cond_17
    move-object v0, v4

    goto/16 :goto_0
.end method

.method private removeTracksInternal(II)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2442
    monitor-enter p0

    .line 2443
    if-ge p2, p1, :cond_0

    :try_start_0
    monitor-exit p0

    move v0, v4

    .line 2483
    :goto_0
    return v0

    .line 2444
    :cond_0
    if-gez p1, :cond_9

    move v0, v4

    .line 2445
    :goto_1
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v1, :cond_8

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v1, v5

    .line 2448
    :goto_2
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt v0, v2, :cond_1

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt v2, v1, :cond_1

    .line 2449
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    move v2, v5

    .line 2454
    :goto_3
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v5

    .line 2455
    :goto_4
    if-ge v4, v3, :cond_3

    .line 2456
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int v6, v0, v4

    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v8, v1, 0x1

    add-int/2addr v8, v4

    aget-wide v7, v7, v8

    aput-wide v7, v5, v6

    .line 2455
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2451
    :cond_1
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-le v2, v1, :cond_2

    .line 2452
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    :cond_2
    move v2, v4

    goto :goto_3

    .line 2458
    :cond_3
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 2460
    if-eqz v2, :cond_5

    .line 2461
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v2, :cond_6

    .line 2462
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 2463
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2465
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_4

    .line 2466
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2467
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 2481
    :cond_4
    :goto_5
    const-string v2, "com.android.music.metachanged"

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2483
    :cond_5
    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 2484
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2470
    :cond_6
    :try_start_1
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v2, v3, :cond_7

    .line 2471
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2473
    :cond_7
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    .line 2474
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 2475
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 2476
    if-eqz v2, :cond_4

    .line 2477
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_8
    move v1, p2

    goto :goto_2

    :cond_9
    move v0, p1

    goto/16 :goto_1
.end method

.method private saveBookmarkIfNeeded()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    .line 2290
    :try_start_0
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->isPodcast()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2291
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v4

    .line 2292
    .local v4, pos:J
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v0

    .line 2293
    .local v0, bookmark:J
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    .line 2294
    .local v2, duration:J
    cmp-long v8, v4, v0

    if-gez v8, :cond_0

    add-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gtz v8, :cond_1

    :cond_0
    cmp-long v8, v4, v0

    if-lez v8, :cond_2

    sub-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gez v8, :cond_2

    .line 2314
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    :cond_1
    :goto_0
    return-void

    .line 2300
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

    .line 2302
    :cond_3
    const-wide/16 v4, 0x0

    .line 2306
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2307
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "bookmark"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2308
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 2310
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2312
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
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const-string v12, ";"

    const-string v11, "0;"

    .line 1011
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mQueueIsSaveable:Z

    if-nez v0, :cond_0

    .line 1080
    :goto_0
    return-void

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1017
    if-eqz p1, :cond_8

    .line 1018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1026
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    move v3, v8

    .line 1027
    :goto_1
    if-ge v3, v0, :cond_4

    .line 1028
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v4, v4, v3

    .line 1030
    cmp-long v6, v4, v9

    if-gez v6, :cond_1

    .line 1027
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1032
    :cond_1
    cmp-long v6, v4, v9

    if-nez v6, :cond_2

    .line 1033
    const-string v4, "0;"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1035
    :cond_2
    :goto_3
    cmp-long v6, v4, v9

    if-eqz v6, :cond_3

    .line 1036
    const-wide/16 v6, 0xf

    and-long/2addr v6, v4

    long-to-int v6, v6

    .line 1038
    const/4 v7, 0x4

    ushr-long/2addr v4, v7

    .line 1039
    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->hexdigits:[C

    aget-char v6, v7, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1041
    :cond_3
    const-string v4, ";"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1045
    :cond_4
    const-string v0, "queue"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1046
    const-string v0, "cardid"

    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1047
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-eqz v0, :cond_8

    .line 1049
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    .line 1050
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    move v4, v8

    .line 1051
    :goto_4
    if-ge v4, v3, :cond_7

    .line 1052
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1053
    if-nez v0, :cond_5

    .line 1054
    const-string v0, "0;"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    :goto_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    .line 1056
    :cond_5
    :goto_6
    if-eqz v0, :cond_6

    .line 1057
    and-int/lit8 v5, v0, 0xf

    .line 1058
    ushr-int/lit8 v0, v0, 0x4

    .line 1059
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->hexdigits:[C

    aget-char v5, v6, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1061
    :cond_6
    const-string v0, ";"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1064
    :cond_7
    const-string v0, "history"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1067
    :cond_8
    const-string v0, "curpos"

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1068
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1073
    const-string v0, "seekpos"

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1075
    :cond_9
    const-string v0, "repeatmode"

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1076
    const-string v0, "shufflemode"

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1077
    invoke-static {v1}, Lcom/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0
.end method

.method private setupMusicRemoteButtons(Landroid/widget/RemoteViews;)V
    .locals 21
    .parameter "remoteViews"

    .prologue
    .line 776
    const/4 v15, 0x0

    .line 778
    .local v15, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mNotiImage:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mNotiImage:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 780
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/MediaPlaybackService;->mNotiImage:Landroid/graphics/Bitmap;

    .line 784
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/MediaPlaybackService;->getAlbumId()J

    move-result-wide v8

    .line 785
    .local v8, albumid:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v6

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/MediaPlaybackService;->mNotiImage:Landroid/graphics/Bitmap;

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mNotiImage:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 788
    const v5, 0x7f0c0037

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mNotiImage:Landroid/graphics/Bitmap;

    move-object v6, v0

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 792
    :goto_0
    new-instance v13, Landroid/content/Intent;

    const-string v5, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v13, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    .local v13, intent:Landroid/content/Intent;
    const/high16 v5, 0x3400

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 794
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v13

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 796
    .local v17, requestMusicPlayingView:Landroid/app/PendingIntent;
    const v5, 0x7010002

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.music.musicservicecommand.previous"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 798
    .local v16, prev:Landroid/app/PendingIntent;
    const v5, 0x7010002

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.music.musicservicecommand.rew.down"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    .line 800
    .local v18, rewindButtonDown:Landroid/app/PendingIntent;
    const v5, 0x7010002

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 802
    .local v19, rewindButtonUp:Landroid/app/PendingIntent;
    const v5, 0x7010002

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    .line 806
    .local v20, togglePause:Landroid/app/PendingIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 807
    const v5, 0x7f0c003b

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 808
    const v5, 0x7f0c003a

    const/16 v6, 0x8

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 813
    :goto_1
    const v5, 0x7010002

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.music.musicservicecommand.next"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 815
    .local v14, next:Landroid/app/PendingIntent;
    const v5, 0x7010002

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.music.musicservicecommand.ff.down"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 817
    .local v11, fastforwardButtonDown:Landroid/app/PendingIntent;
    const v5, 0x7010002

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.music.musicservicecommand.ff.up"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 819
    .local v12, fastforwardButtonUp:Landroid/app/PendingIntent;
    const v5, 0x7f0c0037

    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 821
    const v5, 0x7f0c0039

    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mIB:Landroid/os/IBinder;

    move-object v5, v0

    const v6, 0x7f0c0039

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setOnLongClickPendingIntent(Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 824
    const v5, 0x7f0c003a

    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 825
    const v5, 0x7f0c003b

    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 827
    const v5, 0x7f0c003c

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService;->mIB:Landroid/os/IBinder;

    move-object v5, v0

    const v6, 0x7f0c003c

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move-object v3, v11

    move-object v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setOnLongClickPendingIntent(Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 829
    return-void

    .line 790
    .end local v11           #fastforwardButtonDown:Landroid/app/PendingIntent;
    .end local v12           #fastforwardButtonUp:Landroid/app/PendingIntent;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v14           #next:Landroid/app/PendingIntent;
    .end local v16           #prev:Landroid/app/PendingIntent;
    .end local v17           #requestMusicPlayingView:Landroid/app/PendingIntent;
    .end local v18           #rewindButtonDown:Landroid/app/PendingIntent;
    .end local v19           #rewindButtonUp:Landroid/app/PendingIntent;
    .end local v20           #togglePause:Landroid/app/PendingIntent;
    :cond_1
    const v5, 0x7f0c0037

    const v6, 0x7f0200f9

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 810
    .restart local v13       #intent:Landroid/content/Intent;
    .restart local v16       #prev:Landroid/app/PendingIntent;
    .restart local v17       #requestMusicPlayingView:Landroid/app/PendingIntent;
    .restart local v18       #rewindButtonDown:Landroid/app/PendingIntent;
    .restart local v19       #rewindButtonUp:Landroid/app/PendingIntent;
    .restart local v20       #togglePause:Landroid/app/PendingIntent;
    :cond_2
    const v5, 0x7f0c003b

    const/16 v6, 0x8

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 811
    const v5, 0x7f0c003a

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1
.end method

.method private showToast(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 615
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    .line 619
    :goto_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 620
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private startAndFadeIn()V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 312
    return-void
.end method

.method private stop(Z)V
    .locals 3
    .parameter "remove_status_icon"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1877
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1880
    :cond_0
    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1881
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1882
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1883
    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1885
    :cond_1
    if-eqz p1, :cond_3

    .line 1886
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1888
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->hideNotification()V

    .line 1893
    :goto_0
    if-eqz p1, :cond_2

    .line 1894
    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1896
    :cond_2
    return-void

    .line 1891
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->stopForeground(Z)V

    goto :goto_0
.end method

.method private turnOffEQ()V
    .locals 6

    .prologue
    const-string v5, "equalizer"

    const-string v4, "1"

    .line 600
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPreferenceMusicSettings:Landroid/content/SharedPreferences;

    const-string v3, "equalizer"

    const-string v3, "1"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 601
    .local v0, eqValue:I
    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    .line 602
    :cond_0
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPreferenceMusicSettings:Landroid/content/SharedPreferences;

    const-string v3, "equalizer"

    const-string v3, "1"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/music/R2vsUtil;->doConvertToMode(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/music/MusicUtils;->setR2VSMode(I)V

    .line 605
    const v2, 0x7f090019

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->showToast(I)V

    .line 607
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPreferenceMusicSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "equalizer"

    const-string v3, "1"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 608
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.turnoffeq"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 611
    .end local v1           #i:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private turnOffMTMV()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "srs_channel"

    .line 625
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPreferenceMusicSettings:Landroid/content/SharedPreferences;

    const-string v2, "srs_channel"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    const v1, 0x7f090045

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->showToast(I)V

    .line 629
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPreferenceMusicSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "srs_channel"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 630
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPreferenceMusicSettings:Landroid/content/SharedPreferences;

    const-string v2, "equalizer"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/music/R2vsUtil;->doConvertToMode(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/music/MusicUtils;->setR2VSMode(I)V

    .line 632
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.turnoffmtmv"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 633
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 635
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private wasRecentlyUsed(II)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2361
    if-nez p2, :cond_0

    move v0, v8

    .line 2377
    :goto_0
    return v0

    .line 2365
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2366
    if-ge v0, p2, :cond_3

    .line 2367
    const-string v1, "MediaPlaybackService"

    const-string v2, "lookback too big"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 2370
    :goto_1
    sub-int v2, v0, v9

    move v3, v8

    .line 2371
    :goto_2
    if-ge v3, v1, :cond_2

    .line 2372
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    sub-int v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    .line 2373
    int-to-long v6, p1

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    move v0, v9

    .line 2374
    goto :goto_0

    .line 2371
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v0, v8

    .line 2377
    goto :goto_0

    :cond_3
    move v1, p2

    goto :goto_1
.end method


# virtual methods
.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1385
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1386
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1387
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1388
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    .line 3425
    const-string v0, "Currently loaded:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3426
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3427
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3428
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3429
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$3500(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shuffle mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3433
    invoke-static {p2}, Lcom/android/music/MusicUtils;->debugDump(Ljava/io/PrintWriter;)V

    .line 3434
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 2800
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2801
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 2803
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public enqueue([JI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const-string v0, "com.android.music.queuechanged"

    const-string v0, "com.android.music.metachanged"

    .line 1536
    monitor-enter p0

    .line 1537
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_2

    .line 1538
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/music/MediaPlaybackService;->addToPlayList([JI)V

    .line 1539
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1552
    :cond_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_1

    .line 1553
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1554
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1555
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1556
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1558
    :cond_1
    monitor-exit p0

    .line 1559
    :goto_0
    return-void

    .line 1542
    :cond_2
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/android/music/MediaPlaybackService;->addToPlayList([JI)V

    .line 1543
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1544
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1545
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1546
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1547
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1548
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1549
    monitor-exit p0

    goto :goto_0

    .line 1558
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
    .line 2626
    monitor-enter p0

    .line 2627
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2628
    const-wide/16 v0, -0x1

    monitor-exit p0

    .line 2630
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

    .line 2631
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
    .line 2617
    monitor-enter p0

    .line 2618
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2619
    const/4 v0, 0x0

    monitor-exit p0

    .line 2621
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

    .line 2622
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
    .line 2608
    monitor-enter p0

    .line 2609
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2610
    const-wide/16 v0, -0x1

    monitor-exit p0

    .line 2612
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

    .line 2613
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
    .line 2599
    monitor-enter p0

    .line 2600
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2601
    const/4 v0, 0x0

    monitor-exit p0

    .line 2603
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

    .line 2604
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
    .line 2563
    monitor-enter p0

    .line 2564
    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2565
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    monitor-exit p0

    .line 2568
    :goto_0
    return-wide v0

    .line 2567
    :cond_0
    monitor-exit p0

    .line 2568
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 2567
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2859
    monitor-enter p0

    .line 2860
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->getAudioSessionId()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2861
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentAlbumInfo()Lcom/sec/android/app/music/MusicAlbumInfo;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2637
    new-instance v6, Lcom/sec/android/app/music/MusicAlbumInfo;

    invoke-direct {v6}, Lcom/sec/android/app/music/MusicAlbumInfo;-><init>()V

    .line 2642
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2647
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2651
    if-eqz v0, :cond_1

    .line 2653
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2654
    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/android/app/music/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    .line 2655
    const-string v1, "album"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/android/app/music/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    .line 2656
    const-string v1, "artist"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/android/app/music/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    .line 2657
    const-string v1, "album_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v6, Lcom/sec/android/app/music/MusicAlbumInfo;->mAlbumID:I

    .line 2660
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    .line 2663
    :goto_0
    return-object v0

    .line 2643
    :catch_0
    move-exception v0

    move-object v0, v4

    .line 2644
    goto :goto_0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 2547
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method public getNextAlbumInfo(I)Lcom/sec/android/app/music/MusicAlbumInfo;
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2714
    new-instance v6, Lcom/sec/android/app/music/MusicAlbumInfo;

    invoke-direct {v6}, Lcom/sec/android/app/music/MusicAlbumInfo;-><init>()V

    .line 2719
    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-nez v0, :cond_3

    .line 2721
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    .line 2722
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 2733
    :goto_0
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2737
    if-eqz v0, :cond_1

    .line 2739
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2740
    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/android/app/music/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    .line 2741
    const-string v1, "album"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/android/app/music/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    .line 2742
    const-string v1, "artist"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/android/app/music/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    .line 2743
    const-string v1, "album_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v6, Lcom/sec/android/app/music/MusicAlbumInfo;->mAlbumID:I

    .line 2746
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    .line 2749
    :goto_1
    return-object v0

    .line 2724
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v1, 0x1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 2727
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 2729
    :catch_0
    move-exception v0

    move-object v0, v4

    .line 2730
    goto :goto_1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevAlbumInfo(I)Lcom/sec/android/app/music/MusicAlbumInfo;
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2669
    new-instance v6, Lcom/sec/android/app/music/MusicAlbumInfo;

    invoke-direct {v6}, Lcom/sec/android/app/music/MusicAlbumInfo;-><init>()V

    .line 2673
    if-nez p1, :cond_4

    .line 2674
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2678
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-nez v1, :cond_3

    .line 2680
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-nez v1, :cond_2

    .line 2681
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v0, v1, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 2692
    :goto_1
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2696
    if-eqz v0, :cond_1

    .line 2698
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2699
    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/android/app/music/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    .line 2700
    const-string v1, "album"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/android/app/music/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    .line 2701
    const-string v1, "artist"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/android/app/music/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    .line 2702
    const-string v1, "album_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v6, Lcom/sec/android/app/music/MusicAlbumInfo;->mAlbumID:I

    .line 2705
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    .line 2708
    :goto_2
    return-object v0

    .line 2683
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 2686
    :cond_3
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v0, v1, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 2688
    :catch_0
    move-exception v0

    move-object v0, v4

    .line 2689
    goto :goto_2

    :cond_4
    move v0, p1

    goto/16 :goto_0
.end method

.method public getQueue()[J
    .locals 5

    .prologue
    .line 1659
    monitor-enter p0

    .line 1660
    :try_start_0
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1661
    .local v1, len:I
    new-array v2, v1, [J

    .line 1662
    .local v2, list:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1663
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 1662
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1665
    :cond_0
    monitor-exit p0

    return-object v2

    .line 1666
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
    .line 2576
    monitor-enter p0

    .line 2577
    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0

    return v0

    .line 2578
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
    .line 2543
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 2533
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2753
    monitor-enter p0

    .line 2754
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2755
    const/4 v0, 0x0

    monitor-exit p0

    .line 2757
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

    .line 2758
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected hideNotification()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "MediaPlaybackService"

    .line 754
    const-string v1, "MediaPlaybackService"

    const-string v1, "hideNotification()"

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 756
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.hide.notification"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 758
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_1

    .line 759
    const-string v1, "MediaPlaybackService"

    const-string v1, "MediaPlaybackservice::hideNotification: mNotiManager==null"

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->stopForeground(Z)V

    .line 766
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mNotiImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 767
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mNotiImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 768
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/MediaPlaybackService;->mNotiImage:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1935
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 1620
    monitor-enter p0

    .line 1621
    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p1, v0, :cond_7

    .line 1622
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v0, v8

    .line 1624
    :goto_0
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v1, :cond_6

    .line 1625
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v1, v8

    .line 1627
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1628
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v2, v2, v0

    move v4, v0

    .line 1629
    :goto_2
    if-ge v4, v1, :cond_0

    .line 1630
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v7, v4, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4

    .line 1629
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1632
    :cond_0
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aput-wide v2, v4, v1

    .line 1633
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ne v2, v0, :cond_2

    .line 1634
    iput v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1650
    :cond_1
    :goto_3
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1651
    monitor-exit p0

    .line 1652
    return-void

    .line 1635
    :cond_2
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-lt v2, v0, :cond_1

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt v0, v1, :cond_1

    .line 1636
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_3

    .line 1651
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1638
    :cond_3
    if-ge v1, v0, :cond_1

    .line 1639
    :try_start_1
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v2, v2, v0

    move v4, v0

    .line 1640
    :goto_4
    if-le v4, v1, :cond_4

    .line 1641
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    sub-int v7, v4, v8

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4

    .line 1640
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 1643
    :cond_4
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aput-wide v2, v4, v1

    .line 1644
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ne v2, v0, :cond_5

    .line 1645
    iput v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_3

    .line 1646
    :cond_5
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-lt v2, v1, :cond_1

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt v1, v0, :cond_1

    .line 1647
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_6
    move v1, p2

    goto :goto_1

    :cond_7
    move v0, p1

    goto :goto_0
.end method

.method public next(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    const-string v3, "MediaPlaybackService"

    .line 1998
    const-string v0, "MediaPlaybackService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "next(focrce)_ force : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    monitor-enter p0

    .line 2002
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/android/music/MediaPlaybackService;->mPlayPrev:Z

    .line 2006
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v0, :cond_0

    .line 2007
    const-string v0, "MediaPlaybackService"

    const-string v1, "No play queue"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    monitor-exit p0

    .line 2125
    :goto_0
    return-void

    .line 2011
    :cond_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v0, v2, :cond_d

    .line 2017
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_1

    .line 2018
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2020
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    .line 2021
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 2025
    :cond_2
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 2026
    new-array v2, v1, [I

    move v0, v7

    .line 2027
    :goto_1
    if-ge v0, v1, :cond_3

    .line 2028
    aput v0, v2, v0

    .line 2027
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2031
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    move v4, v7

    move v5, v1

    .line 2033
    :goto_2
    if-ge v4, v3, :cond_5

    .line 2034
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2035
    if-ge v0, v1, :cond_4

    aget v6, v2, v0

    if-ltz v6, :cond_4

    .line 2036
    add-int/lit8 v5, v5, -0x1

    .line 2037
    const/4 v6, -0x1

    aput v6, v2, v0

    :cond_4
    move v0, v5

    .line 2033
    add-int/lit8 v4, v4, 0x1

    move v5, v0

    goto :goto_2

    .line 2044
    :cond_5
    if-gtz v5, :cond_14

    .line 2046
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v0, v8, :cond_6

    if-eqz p1, :cond_a

    .line 2048
    :cond_6
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    move v0, v7

    .line 2052
    :goto_3
    if-ge v0, v1, :cond_7

    .line 2053
    aput v0, v2, v0

    .line 2052
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move v0, v1

    .line 2077
    :goto_4
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    invoke-virtual {v1, v0}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v0

    move v1, v0

    move v0, v9

    .line 2080
    :cond_8
    add-int/lit8 v0, v0, 0x1

    aget v3, v2, v0

    if-ltz v3, :cond_8

    .line 2082
    add-int/lit8 v1, v1, -0x1

    .line 2083
    if-gez v1, :cond_8

    .line 2087
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2119
    :cond_9
    :goto_5
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 2120
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 2121
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 2122
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 2123
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2124
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2057
    :cond_a
    :try_start_1
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 2058
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_b

    .line 2059
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2060
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2063
    :cond_b
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->showNotification()V

    .line 2064
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2065
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2066
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->hideNotification()V

    .line 2071
    :cond_c
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2072
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2073
    monitor-exit p0

    goto/16 :goto_0

    .line 2088
    :cond_d
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v0, v8, :cond_e

    .line 2089
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 2090
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_5

    .line 2092
    :cond_e
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_13

    .line 2094
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-ne v0, v2, :cond_11

    :cond_f
    if-nez p1, :cond_11

    .line 2100
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 2102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2103
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2106
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->showNotification()V

    .line 2107
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2108
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2109
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->hideNotification()V

    .line 2111
    :cond_10
    monitor-exit p0

    goto/16 :goto_0

    .line 2112
    :cond_11
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v0, v8, :cond_12

    if-eqz p1, :cond_9

    .line 2113
    :cond_12
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto/16 :goto_5

    .line 2116
    :cond_13
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :cond_14
    move v0, v5

    goto/16 :goto_4
.end method

.method public nextPosition()I
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 2158
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2159
    sget-boolean v1, Lcom/android/music/MediaPlaybackService;->mTrackEnd:Z

    .line 2161
    monitor-enter p0

    .line 2163
    :try_start_0
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v2, :cond_0

    .line 2164
    const-string v0, "MediaPlaybackService"

    const-string v1, "No play queue"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    monitor-exit p0

    move v0, v7

    .line 2270
    :goto_0
    return v0

    .line 2168
    :cond_0
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v2, v3, :cond_7

    .line 2172
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 2173
    new-array v2, v1, [I

    move v0, v7

    .line 2174
    :goto_1
    if-ge v0, v1, :cond_1

    .line 2175
    aput v0, v2, v0

    .line 2174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2178
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    move v4, v7

    move v5, v1

    .line 2180
    :goto_2
    if-ge v4, v3, :cond_3

    .line 2181
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2182
    if-ge v0, v1, :cond_2

    aget v6, v2, v0

    if-ltz v6, :cond_2

    .line 2183
    add-int/lit8 v5, v5, -0x1

    .line 2184
    const/4 v6, -0x1

    aput v6, v2, v0

    :cond_2
    move v0, v5

    .line 2180
    add-int/lit8 v4, v4, 0x1

    move v5, v0

    goto :goto_2

    .line 2191
    :cond_3
    if-gtz v5, :cond_e

    .line 2195
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    move v0, v7

    .line 2199
    :goto_3
    if-ge v0, v1, :cond_4

    .line 2200
    aput v0, v2, v0

    .line 2199
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v1

    .line 2225
    :goto_4
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    invoke-virtual {v1, v0}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v0

    move v1, v0

    move v0, v8

    .line 2228
    :cond_5
    add-int/lit8 v0, v0, 0x1

    aget v3, v2, v0

    if-ltz v3, :cond_5

    .line 2230
    add-int/lit8 v1, v1, -0x1

    .line 2231
    if-gez v1, :cond_5

    .line 2268
    :cond_6
    :goto_5
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2237
    :cond_7
    :try_start_1
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v2, v4, :cond_8

    .line 2239
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2242
    :cond_8
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_d

    .line 2244
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-ne v2, v3, :cond_b

    :cond_9
    if-nez v1, :cond_b

    .line 2250
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 2253
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->showNotification()V

    .line 2254
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2255
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2256
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->hideNotification()V

    .line 2258
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2259
    monitor-exit p0

    move v0, v7

    goto/16 :goto_0

    .line 2260
    :cond_b
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v4, :cond_c

    if-eqz v1, :cond_6

    :cond_c
    move v0, v7

    .line 2261
    goto :goto_5

    .line 2265
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    move v0, v5

    goto :goto_4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 1237
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "srs_channel"

    const-string v6, "audio"

    .line 834
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 836
    const-string v0, "MediaPlaybackService"

    const-string v1, "onCreate()_MediaPlaybaskService"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const-string v0, "audio"

    invoke-virtual {p0, v6}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 840
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/music/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 843
    const-string v0, "Music"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 844
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getCardId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    .line 852
    const-string v0, "com.android.music_preferences"

    invoke-virtual {p0, v0, v4}, Lcom/android/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferenceMusicSettings:Landroid/content/SharedPreferences;

    .line 853
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferenceMusicSettings:Landroid/content/SharedPreferences;

    const-string v1, "srs_channel"

    invoke-interface {v0, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 854
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPreferenceMusicSettings:Landroid/content/SharedPreferences;

    const-string v2, "equalizer"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 857
    if-ne v0, v5, :cond_2

    .line 858
    const-string v0, "audio"

    invoke-virtual {p0, v6}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 860
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferenceMusicSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "srs_channel"

    invoke-interface {v0, v7, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 862
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/music/R2vsUtil;->doConvertToMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mR2VSvalue:I

    .line 877
    :goto_0
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->registerExternalStorageListener()V

    .line 880
    new-instance v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    .line 881
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 883
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->reloadQueue()V

    .line 885
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 886
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 887
    const-string v1, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 888
    const-string v1, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 889
    const-string v1, "com.android.music.musicservicecommand.next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 890
    const-string v1, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 893
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 897
    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 900
    const-string v1, "com.android.music.musicservicecommand.rew.down"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 901
    const-string v1, "com.android.music.musicservicecommand.rew.up"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 902
    const-string v1, "com.android.music.musicservicecommand.ff.down"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 903
    const-string v1, "com.android.music.musicservicecommand.ff.up"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 905
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 907
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->makeMusicNotification()V

    .line 909
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 910
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 911
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 915
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 916
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 930
    new-instance v0, Lcom/android/music/MediaPlaybackService$PlayControl;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$PlayControl;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;

    .line 934
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mIB:Landroid/os/IBinder;

    .line 938
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 939
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mNotiManager:Landroid/app/NotificationManager;

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 943
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mNotiManager:Landroid/app/NotificationManager;

    const v1, 0x7010002

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 946
    return-void

    .line 865
    :cond_1
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/sec/android/app/music/R2vsUtil;->doConvertToMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mR2VSvalue:I

    goto/16 :goto_0

    .line 870
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/music/R2vsUtil;->doConvertToMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mR2VSvalue:I

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v2, "MediaPlaybackService"

    .line 952
    const-string v1, "MediaPlaybackService"

    const-string v1, "onDestroy()_MediaPlaybaskService"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    const-string v1, "MediaPlaybackService"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_0
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;

    .line 975
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 976
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 977
    const-string v1, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 979
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->release()V

    .line 980
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    .line 982
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 985
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 986
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 988
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 989
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 990
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 993
    :cond_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 994
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 995
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 996
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 998
    :cond_2
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 999
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1000
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 1245
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "MediaPlaybackService"

    .line 1249
    iput p3, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    .line 1250
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1252
    if-eqz p1, :cond_1

    .line 1253
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1254
    const-string v1, "command"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 1257
    const-string v2, "state"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1260
    const-string v3, "next"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.music.musicservicecommand.next"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1265
    invoke-virtual {p0, v5}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 1329
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1330
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1331
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1332
    return v5

    .line 1266
    :cond_2
    const-string v3, "previous"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1271
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 1272
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->prev()V

    goto :goto_0

    .line 1274
    :cond_4
    invoke-virtual {p0, v8, v9}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 1275
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_0

    .line 1277
    :cond_5
    const-string v3, "togglepause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1278
    :cond_6
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1279
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 1280
    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto :goto_0

    .line 1282
    :cond_7
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_0

    .line 1284
    :cond_8
    const-string v3, "pause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1285
    :cond_9
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 1286
    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto :goto_0

    .line 1287
    :cond_a
    const-string v0, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1290
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1292
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 1293
    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 1295
    :cond_b
    invoke-virtual {p0, v8, v9}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto/16 :goto_0

    .line 1296
    :cond_c
    const-string v0, "fastforward"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "pushed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1297
    const-string v0, "MediaPlaybackService"

    const-string v0, "Fast Forward Pressed"

    invoke-static {v6, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;

    invoke-virtual {v0, v5}, Lcom/android/music/MediaPlaybackService$PlayControl;->setFFButton(Z)V

    goto/16 :goto_0

    .line 1302
    :cond_d
    const-string v0, "rewind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "pushed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1303
    const-string v0, "MediaPlaybackService"

    const-string v0, "Rewind Pressed"

    invoke-static {v6, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;

    if-eqz v0, :cond_1

    .line 1306
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;

    invoke-virtual {v0, v5}, Lcom/android/music/MediaPlaybackService$PlayControl;->setRWButton(Z)V

    goto/16 :goto_0

    .line 1308
    :cond_e
    const-string v0, "fastforward"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "released"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1309
    const-string v0, "MediaPlaybackService"

    const-string v0, "Fast Forward Released"

    invoke-static {v6, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;

    if-eqz v0, :cond_1

    .line 1312
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;

    invoke-virtual {v0, v4}, Lcom/android/music/MediaPlaybackService$PlayControl;->setFFButton(Z)V

    goto/16 :goto_0

    .line 1314
    :cond_f
    const-string v0, "rewind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "released"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1315
    const-string v0, "MediaPlaybackService"

    const-string v0, "Rewind Released"

    invoke-static {v6, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;

    if-eqz v0, :cond_1

    .line 1318
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;

    invoke-virtual {v0, v4}, Lcom/android/music/MediaPlaybackService$PlayControl;->setRWButton(Z)V

    goto/16 :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 1337
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 1340
    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 1342
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v4

    .line 1359
    :goto_0
    return v1

    .line 1351
    :cond_1
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1352
    :cond_2
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1353
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v1, v4

    .line 1354
    goto :goto_0

    .line 1358
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->stopSelf(I)V

    move v1, v4

    .line 1359
    goto :goto_0
.end method

.method public open(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const-string v1, "MediaPlaybackService"

    .line 1717
    const-string v0, "MediaPlaybackService"

    const-string v0, "open(String path) & path"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    monitor-enter p0

    .line 1719
    if-nez p1, :cond_0

    .line 1720
    :try_start_0
    monitor-exit p0

    .line 1803
    :goto_0
    return-void

    .line 1725
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 1727
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1731
    const-string v1, "content://media/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1732
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move-object v4, v2

    move-object v3, v2

    .line 1742
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1743
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1744
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 1745
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1758
    :cond_1
    :goto_2
    :try_start_2
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1759
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1762
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->isMidiFile()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1763
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1764
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1765
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->getMidiHeadsetVolume()F

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mMaxVolume:F

    .line 1772
    :goto_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mMaxVolume:F

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 1775
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1776
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1777
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-le v0, v6, :cond_2

    .line 1780
    sget-boolean v0, Lcom/android/music/MediaPlaybackService;->mPlayPrev:Z

    if-ne v0, v6, :cond_9

    .line 1781
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->prev()V

    .line 1789
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-eqz v0, :cond_4

    .line 1791
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 1792
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    if-nez v0, :cond_3

    .line 1794
    const v0, 0x7f090062

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->showToast(I)V

    .line 1797
    :cond_3
    const-string v0, "MediaPlaybackService"

    const-string v1, "Failed to open file for playback"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    :cond_4
    :goto_5
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1736
    :cond_5
    :try_start_3
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1737
    const-string v2, "_data=?"

    .line 1738
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_1

    .line 1748
    :cond_6
    :try_start_4
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1749
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1750
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1751
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1752
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 1755
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 1767
    :cond_7
    :try_start_5
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->getMidiSpeakerVolume()F

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mMaxVolume:F

    goto/16 :goto_3

    .line 1770
    :cond_8
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mMaxVolume:F

    goto/16 :goto_3

    .line 1784
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    goto :goto_4

    .line 1800
    :cond_a
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5
.end method

.method public open([JI)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1569
    monitor-enter p0

    .line 1571
    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1575
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-ne v0, v8, :cond_3

    .line 1576
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 1581
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v0

    .line 1582
    array-length v2, p1

    .line 1584
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v3, v2, :cond_7

    move v3, v9

    .line 1587
    :goto_1
    if-ge v3, v2, :cond_6

    .line 1588
    aget-wide v4, p1, v3

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v6, v6, v3

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    move v2, v8

    .line 1594
    :goto_2
    if-eqz v2, :cond_1

    .line 1595
    const/4 v2, -0x1

    invoke-direct {p0, p1, v2}, Lcom/android/music/MediaPlaybackService;->addToPlayList([JI)V

    .line 1596
    const-string v2, "com.android.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1598
    :cond_1
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1599
    if-ltz p2, :cond_5

    .line 1600
    iput p2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1604
    :goto_3
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 1606
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1607
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1608
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1609
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1611
    :cond_2
    monitor-exit p0

    .line 1612
    return-void

    .line 1579
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    goto :goto_0

    .line 1611
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1587
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1602
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v2, v3}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_6
    move v2, v9

    goto :goto_2

    :cond_7
    move v2, v8

    goto :goto_2
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;

    if-eqz v0, :cond_0

    .line 1911
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayControl:Lcom/android/music/MediaPlaybackService$PlayControl;

    #calls: Lcom/android/music/MediaPlaybackService$PlayControl;->cancelAllTimer()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$PlayControl;->access$2200(Lcom/android/music/MediaPlaybackService$PlayControl;)V

    .line 1914
    :cond_0
    monitor-enter p0

    .line 1915
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1916
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1917
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->pause()V

    .line 1918
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1919
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1920
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1921
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1923
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->showNotification()V

    .line 1926
    :cond_1
    monitor-exit p0

    .line 1927
    return-void

    .line 1926
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
    const-wide/16 v6, 0x7d0

    const v1, 0x7f090016

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "MediaPlaybackService"

    .line 1814
    const-string v0, "MediaPlaybackService"

    const-string v0, "PLAY()......"

    invoke-static {v8, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1816
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1818
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1819
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    .line 1825
    :goto_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1874
    :goto_1
    return-void

    .line 1823
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0

    .line 1832
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    sget-object v2, Lcom/android/music/MediaPlaybackService;->MUSIC_SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1836
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1838
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/music/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1841
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1842
    const-string v0, "MediaPlaybackService"

    const-string v0, "Service_mPlayer.isInitialized()"

    invoke-static {v8, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 1845
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v2, v5, :cond_2

    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v2

    sub-long/2addr v0, v6

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    .line 1848
    invoke-virtual {p0, v4}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 1852
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->start()V

    .line 1855
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1856
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1858
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v0, :cond_3

    .line 1859
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1860
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1864
    :cond_3
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->showNotification()V

    .line 1873
    :cond_4
    :goto_2
    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mPausedByOtherApp:Z

    goto/16 :goto_1

    .line 1867
    :cond_5
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v0, :cond_4

    .line 1871
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->setShuffleMode(I)V

    goto :goto_2
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2810
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2811
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    .line 2813
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1963
    monitor-enter p0

    .line 1966
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/music/MediaPlaybackService;->mPlayPrev:Z

    .line 1968
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v0, v2, :cond_1

    .line 1970
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1971
    if-nez v0, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1975
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1989
    :goto_0
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1990
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1991
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1992
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1993
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1994
    monitor-exit p0

    .line 1995
    return-void

    .line 1979
    :cond_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1980
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 1994
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1983
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-lez v0, :cond_2

    .line 1984
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 1986
    :cond_2
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public prevPosition()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2129
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2130
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v1, v2, :cond_1

    .line 2132
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2133
    if-nez v0, :cond_0

    .line 2134
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prevPosition Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v0

    .line 2137
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2152
    :goto_0
    return v0

    .line 2140
    :cond_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 2141
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 2145
    :cond_1
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-lez v1, :cond_2

    .line 2146
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2148
    :cond_2
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1397
    new-instance v0, Lcom/android/music/MediaPlaybackService$5;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$5;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1431
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1432
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1433
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1434
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1435
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1437
    :cond_0
    return-void
.end method

.method public removeTrack(J)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2494
    .line 2495
    monitor-enter p0

    move v1, v0

    .line 2496
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_1

    .line 2497
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 2498
    invoke-direct {p0, v0, v0}, Lcom/android/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2499
    add-int/lit8 v0, v0, -0x1

    .line 2496
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2502
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2503
    if-lez v1, :cond_2

    .line 2504
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2506
    :cond_2
    return v1

    .line 2502
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeTracks(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2433
    const-string v0, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTracks()_first : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and last :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    invoke-direct {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v0

    .line 2435
    if-lez v0, :cond_0

    .line 2436
    const-string v1, "com.android.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2438
    :cond_0
    return v0
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2827
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    .line 2828
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide p1

    .line 2829
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->seek(J)J

    move-result-wide v0

    .line 2831
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setQueuePosition(I)V
    .locals 2
    .parameter

    .prologue
    .line 2586
    monitor-enter p0

    .line 2587
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 2588
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2589
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 2590
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 2591
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2592
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2593
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 2595
    :cond_0
    monitor-exit p0

    .line 2596
    return-void

    .line 2595
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setR2VSMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 2838
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setR2VSMode(I)V

    .line 2839
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 2537
    monitor-enter p0

    .line 2538
    :try_start_0
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 2539
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 2540
    monitor-exit p0

    .line 2541
    return-void

    .line 2540
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 2
    .parameter

    .prologue
    .line 2510
    monitor-enter p0

    .line 2511
    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v0, :cond_0

    .line 2512
    monitor-exit p0

    .line 2531
    :goto_0
    return-void

    .line 2514
    :cond_0
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 2515
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2516
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2517
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 2518
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 2519
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2520
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 2521
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 2522
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2523
    monitor-exit p0

    goto :goto_0

    .line 2530
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2526
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 2529
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 2530
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected showNotification()V
    .locals 8

    .prologue
    const v7, 0x7f0c003d

    const/4 v6, 0x0

    .line 704
    const-string v4, "MediaPlaybackService"

    const-string v5, "showNotification()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 706
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.music.musicservicecommand.hide.notification"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v6, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 709
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v4, :cond_0

    .line 710
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mNotiManager:Landroid/app/NotificationManager;

    .line 713
    :cond_0
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f03000c

    invoke-direct {v2, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 714
    .local v2, remoteViews:Landroid/widget/RemoteViews;
    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->setupMusicRemoteButtons(Landroid/widget/RemoteViews;)V

    .line 717
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 718
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    const v5, 0x7f020106

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 725
    :goto_0
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iput-object v2, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 726
    const-string v1, ""

    .line 728
    .local v1, notiText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 729
    .local v3, trackName:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " - "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 735
    :cond_1
    invoke-virtual {v2, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 736
    const/4 v4, -0x1

    invoke-virtual {v2, v7, v4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 737
    const-string v4, "setSelected"

    const/4 v5, 0x1

    invoke-virtual {v2, v7, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 739
    const v4, 0x7010002

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v4, v5}, Lcom/android/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 740
    return-void

    .line 719
    .end local v1           #notiText:Ljava/lang/String;
    .end local v3           #trackName:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v4}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_3

    .line 720
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iput v6, v4, Landroid/app/Notification;->icon:I

    goto :goto_0

    .line 722
    :cond_3
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    const v5, 0x7f020105

    iput v5, v4, Landroid/app/Notification;->icon:I

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1902
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1903
    return-void
.end method
