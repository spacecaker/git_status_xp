.class public Lcom/android/music/MediaPlaybackActivity;
.super Landroid/app/Activity;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGestureListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;,
        Lcom/android/music/MediaPlaybackActivity$OnGestureListener;,
        Lcom/android/music/MediaPlaybackActivity$Worker;,
        Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;,
        Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;
    }
.end annotation


# instance fields
.field protected additionalPanelFromAlbumArt:Z

.field private albumInfo:Lcom/sec/android/app/music/MusicAlbumInfo;

.field private bRotate:Z

.field protected isShowPanel:Z

.field protected isShownAdditionalBar:Z

.field private final keyboard:[[I

.field private lastX:I

.field private lastY:I

.field private mAlbum:Landroid/widget/ImageView;

.field private mAlbumArtBitmap:Landroid/graphics/Bitmap;

.field private mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

.field private mAlbumArtWorker:Lcom/android/music/MediaPlaybackActivity$Worker;

.field private mAlbumName:Landroid/widget/TextView;

.field private mAlbumNameText:Ljava/lang/String;

.field private mArtistName:Landroid/widget/TextView;

.field private mArtistNameText:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field public mCurConfig:Z

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field private mDeviceHasDpad:Z

.field mDraggingLabel:Z

.field private mDuration:J

.field private mEqualizerName:Landroid/widget/TextView;

.field private mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

.field private mFlingHandler:Landroid/os/Handler;

.field private mFromTouch:Z

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGestureSweepListener:Lcom/android/music/MediaPlaybackActivity$OnGestureListener;

.field private final mHandler:Landroid/os/Handler;

.field mInitialX:I

.field private mIsFling:Z

.field private mIsPossibleNextPrevButton:Z

.field private mIsStreaming:Z

.field mLabelScroller:Landroid/os/Handler;

.field private mLastOrientation:I

.field private mLastSeekEventTime:J

.field mLastX:I

.field private mMTMV:Landroid/widget/ImageButton;

.field private mNextButton:Lcom/android/music/RepeatingImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayerPos:I

.field private mPosOverride:J

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrevButton:Lcom/android/music/RepeatingImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/widget/SeekBar;

.field private mQueueButton:Lcom/sec/android/app/music/IconTextButton;

.field private mQueueListener:Landroid/view/View$OnClickListener;

.field private mQueueSmallButton:Landroid/widget/ImageButton;

.field private mRepeatButton:Landroid/widget/ImageButton;

.field private mRepeatButtonImageValue:I

.field private mRepeatListener:Landroid/view/View$OnClickListener;

.field private mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

.field public mScreenMode:Z

.field private mSearchPopup:Landroid/app/AlertDialog;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mService:Lcom/android/music/IMediaPlaybackService;

.field private mShuffleButton:Landroid/widget/ImageButton;

.field private mShuffleButtonImageValue:I

.field private mShuffleListener:Landroid/view/View$OnClickListener;

.field private mStartSeekPos:J

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mSubMenu:Landroid/view/SubMenu;

.field mTextWidth:I

.field protected mTitleInfo:Landroid/view/ViewGroup;

.field protected mTitleInfoButton:Landroid/view/ViewGroup;

.field private mToast:Landroid/widget/Toast;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTotalTimeText:Ljava/lang/String;

.field private mTouchHandler:Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener;

.field private mTouchSlop:I

.field private mTrackName:Landroid/widget/TextView;

.field private mTrackNameText:Ljava/lang/String;

.field protected mViewAlbumImageTemp:Landroid/widget/ImageView;

.field protected mViewProgressBar:Landroid/view/ViewGroup;

.field mViewWidth:I

.field private osc:Landroid/content/ServiceConnection;

.field private paused:Z

.field public reNomalHandler:Landroid/os/Handler;

.field private seekmethod:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/16 v2, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 218
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 134
    iput-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    .line 144
    iput-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    .line 148
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackActivity;->isShownAdditionalBar:Z

    .line 149
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->isShowPanel:Z

    .line 153
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->additionalPanelFromAlbumArt:Z

    .line 168
    iput v3, p0, Lcom/android/music/MediaPlaybackActivity;->mPlayerPos:I

    .line 169
    iput-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->albumInfo:Lcom/sec/android/app/music/MusicAlbumInfo;

    .line 180
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 184
    iput-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 201
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->bRotate:Z

    .line 205
    iput-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mSubMenu:Landroid/view/SubMenu;

    .line 208
    iput v3, p0, Lcom/android/music/MediaPlaybackActivity;->mLastOrientation:I

    .line 211
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mIsStreaming:Z

    .line 214
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mIsFling:Z

    .line 216
    iput-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mSearchPopup:Landroid/app/AlertDialog;

    .line 650
    iput v6, p0, Lcom/android/music/MediaPlaybackActivity;->mInitialX:I

    .line 651
    iput v6, p0, Lcom/android/music/MediaPlaybackActivity;->mLastX:I

    .line 652
    iput v3, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    .line 653
    iput v3, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    .line 654
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    .line 739
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$5;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$5;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    .line 863
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$6;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$6;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 902
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$7;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$7;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueListener:Landroid/view/View$OnClickListener;

    .line 912
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$8;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$8;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleListener:Landroid/view/View$OnClickListener;

    .line 921
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$9;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$9;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatListener:Landroid/view/View$OnClickListener;

    .line 930
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$10;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$10;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 942
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$11;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$11;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 975
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$12;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$12;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mNextListener:Landroid/view/View$OnClickListener;

    .line 998
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$13;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$13;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    .line 1008
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$14;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$14;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    .line 1366
    const/4 v0, 0x3

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->keyboard:[[I

    .line 1809
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$15;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$15;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->osc:Landroid/content/ServiceConnection;

    .line 1865
    iput v3, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButtonImageValue:I

    .line 1866
    iput v3, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButtonImageValue:I

    .line 1981
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 1982
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z

    .line 1997
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackActivity;->mIsPossibleNextPrevButton:Z

    .line 2004
    iput-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 2051
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$16;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$16;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    .line 2111
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$17;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$17;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 2402
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$18;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$18;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mFlingHandler:Landroid/os/Handler;

    .line 219
    return-void

    .line 1366
    nop

    :array_0
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x36t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private MtmvClick()V
    .locals 5

    .prologue
    const v4, 0x7f090045

    const/4 v3, 0x0

    const-string v2, "srs_channel"

    .line 1690
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1691
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1692
    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    .line 1714
    :goto_0
    return-void

    .line 1695
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1696
    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    goto :goto_0

    .line 1701
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "srs_channel"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1702
    if-eqz v0, :cond_2

    .line 1704
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "srs_channel"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1706
    sget v0, Lcom/sec/android/app/music/R2vsUtil;->mValue:I

    invoke-static {v0}, Lcom/sec/android/app/music/R2vsUtil;->doConvertToMode(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/music/MusicUtils;->setR2VSMode(I)V

    .line 1712
    :goto_1
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->toggleMTMV()V

    goto :goto_0

    .line 1709
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "srs_channel"

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1710
    const/high16 v0, 0x20

    invoke-static {v0}, Lcom/android/music/MusicUtils;->setR2VSMode(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/music/MediaPlaybackActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/music/MediaPlaybackActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->MtmvClick()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/music/MediaPlaybackActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->toggleShuffle()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->cycleRepeat()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->doPauseResume()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/music/MediaPlaybackActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mIsPossibleNextPrevButton:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/music/MediaPlaybackActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackActivity;->mIsPossibleNextPrevButton:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mFlingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/music/MediaPlaybackActivity;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/MediaPlaybackActivity;->scanBackward(IJ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/music/MediaPlaybackActivity;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/MediaPlaybackActivity;->scanForward(IJ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->startPlayback()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/music/MediaPlaybackActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity;->mSearchPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/music/MediaPlaybackActivity;)Lcom/sec/android/app/music/IconTextButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueButton:Lcom/sec/android/app/music/IconTextButton;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueSmallButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mMTMV:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mEqualizerName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setEqualizerText()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setMTMVButtonImage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/music/MediaPlaybackActivity;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/music/MediaPlaybackActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/music/MediaPlaybackActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/music/MediaPlaybackActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->toggleMTMV()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->turnOffEQ()V

    return-void
.end method

.method static synthetic access$3702(Lcom/android/music/MediaPlaybackActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackActivity;->mIsFling:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/music/MediaPlaybackActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPlayerPos:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/music/MediaPlaybackActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/android/music/MediaPlaybackActivity;->mPlayerPos:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/music/MediaPlaybackActivity;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/music/MediaPlaybackActivity;->getArtwork(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/music/MediaPlaybackActivity;)Lcom/sec/android/app/music/MusicAlbumInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->albumInfo:Lcom/sec/android/app/music/MusicAlbumInfo;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/music/MediaPlaybackActivity;Lcom/sec/android/app/music/MusicAlbumInfo;)Lcom/sec/android/app/music/MusicAlbumInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity;->albumInfo:Lcom/sec/android/app/music/MusicAlbumInfo;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/music/MediaPlaybackActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDefaultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/music/MediaPlaybackActivity;Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/music/MediaPlaybackActivity;->getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/music/MediaPlaybackActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/music/MediaPlaybackActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/music/MediaPlaybackActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/music/MediaPlaybackActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/music/MediaPlaybackActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    return-wide v0
.end method

.method private cycleRepeat()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1743
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 1766
    :goto_0
    return-void

    .line 1747
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 1748
    if-nez v0, :cond_1

    .line 1749
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1750
    const v0, 0x7f09006f

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    .line 1762
    :goto_1
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    goto :goto_0

    .line 1763
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1751
    :cond_1
    if-ne v0, v1, :cond_3

    .line 1752
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1753
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1754
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1755
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    .line 1757
    :cond_2
    const v0, 0x7f090070

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    goto :goto_1

    .line 1759
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1760
    const v0, 0x7f090071

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 1674
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1675
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1676
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->pause()V

    .line 1680
    :goto_0
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    .line 1681
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    .line 1685
    :cond_0
    :goto_1
    return-void

    .line 1678
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1683
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getArtwork(IZ)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const-string v6, "fail to read image."

    const-string v5, "###"

    .line 2647
    .line 2648
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2650
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2652
    const-string v2, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getArtwork : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isbigImage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    if-nez v7, :cond_5

    .line 2655
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2656
    if-eqz v0, :cond_5

    .line 2657
    const-string v2, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getArtwork: uri ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2661
    if-lez p1, :cond_7

    .line 2662
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 2663
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v1

    .line 2674
    :goto_0
    if-eqz v0, :cond_0

    .line 2677
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2684
    :cond_0
    :goto_1
    if-nez v1, :cond_6

    .line 2685
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/music/MediaPlaybackActivity;->getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2694
    :goto_2
    return-object v0

    .line 2678
    :catch_0
    move-exception v0

    .line 2680
    const-string v0, "###"

    const-string v0, "fail to read image."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2666
    :catch_1
    move-exception v0

    move-object v1, v7

    .line 2667
    :goto_3
    :try_start_3
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException occured 1 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2674
    if-eqz v1, :cond_1

    .line 2677
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2684
    :cond_1
    :goto_4
    if-nez v7, :cond_5

    .line 2685
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/music/MediaPlaybackActivity;->getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 2678
    :catch_2
    move-exception v0

    .line 2680
    const-string v0, "###"

    const-string v0, "fail to read image."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2670
    :catch_3
    move-exception v0

    move-object v0, v7

    .line 2671
    :goto_5
    :try_start_5
    const-string v1, "###"

    const-string v2, "Memory allocation failed getArtwork"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2674
    if-eqz v0, :cond_2

    .line 2677
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 2684
    :cond_2
    :goto_6
    if-nez v7, :cond_5

    .line 2685
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/music/MediaPlaybackActivity;->getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 2678
    :catch_4
    move-exception v0

    .line 2680
    const-string v0, "###"

    const-string v0, "fail to read image."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2674
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_7
    if-eqz v1, :cond_3

    .line 2677
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2684
    :cond_3
    :goto_8
    if-nez v7, :cond_4

    .line 2685
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/music/MediaPlaybackActivity;->getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    :cond_4
    throw v0

    .line 2678
    :catch_5
    move-exception v1

    .line 2680
    const-string v1, "###"

    const-string v1, "fail to read image."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2674
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 2670
    :catch_6
    move-exception v1

    goto :goto_5

    .line 2666
    :catch_7
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :cond_5
    move-object v0, v7

    goto/16 :goto_2

    :cond_6
    move-object v0, v1

    goto/16 :goto_2

    :cond_7
    move-object v0, v7

    move-object v1, v7

    goto/16 :goto_0
.end method

.method private getDefaultArtwork(Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 2701
    const v0, 0x7f020001

    .line 2702
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 2703
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 2706
    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mDefaultBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2712
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2718
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDefaultBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 2707
    :catch_0
    move-exception v2

    .line 2708
    :try_start_2
    const-string v3, "###"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Memory allocation failed getDefaultArtwork:id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2711
    :catchall_0
    move-exception v0

    .line 2712
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2715
    :goto_1
    throw v0

    .line 2713
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private queueNextRefresh(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 2013
    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackActivity;->paused:Z

    if-nez v1, :cond_0

    .line 2014
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2015
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2016
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2018
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private refreshNow()J
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x0

    const-wide/16 v11, 0x1f4

    const-wide/16 v9, 0x0

    const-wide/16 v7, 0x3e8

    .line 2021
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    move-wide v0, v11

    .line 2048
    :goto_0
    return-wide v0

    .line 2024
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    cmp-long v0, v0, v9

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v0

    .line 2025
    :goto_1
    const-wide/16 v2, 0x3e8

    rem-long v2, v0, v2

    sub-long v2, v7, v2

    .line 2026
    cmp-long v4, v0, v9

    if-ltz v4, :cond_4

    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    cmp-long v4, v4, v9

    if-lez v4, :cond_4

    .line 2027
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const-wide/16 v5, 0x3e8

    div-long v5, v0, v5

    invoke-static {p0, v5, v6}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2029
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2030
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2038
    :goto_2
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/SeekBar;

    mul-long/2addr v0, v7

    iget-wide v5, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    div-long/2addr v0, v5

    long-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    move-wide v0, v2

    goto :goto_0

    .line 2024
    :cond_1
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    goto :goto_1

    .line 2033
    :cond_2
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    .line 2034
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    if-ne v2, v14, :cond_3

    move v2, v13

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-wide v2, v11

    .line 2035
    goto :goto_2

    :cond_3
    move v2, v14

    .line 2034
    goto :goto_3

    .line 2040
    :cond_4
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const-string v1, "--:--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2041
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_0

    .line 2046
    :catch_0
    move-exception v0

    move-wide v0, v11

    .line 2048
    goto :goto_0
.end method

.method private restoreRepeatButtonImage(I)V
    .locals 2
    .parameter

    .prologue
    .line 1869
    packed-switch p1, :pswitch_data_0

    .line 1882
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1886
    :goto_0
    return-void

    .line 1872
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1877
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1869
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private restoreShuffleButtonImage(I)V
    .locals 2
    .parameter

    .prologue
    .line 1889
    packed-switch p1, :pswitch_data_0

    .line 1899
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1902
    :goto_0
    return-void

    .line 1892
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1896
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1889
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private scanBackward(IJ)V
    .locals 12
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    const-wide/16 v10, 0x0

    .line 1595
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 1631
    :goto_0
    return-void

    .line 1597
    :cond_0
    if-nez p1, :cond_1

    .line 1598
    :try_start_0
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 1599
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 1600
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    goto :goto_0

    .line 1629
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1602
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 1603
    cmp-long v4, p2, v6

    if-gez v4, :cond_5

    .line 1605
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 1610
    :goto_1
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    sub-long v2, v4, p2

    .line 1611
    .local v2, newpos:J
    cmp-long v4, v2, v10

    if-gez v4, :cond_2

    .line 1613
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->prev()V

    .line 1614
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 1615
    .local v0, duration:J
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 1616
    add-long/2addr v2, v0

    .line 1618
    .end local v0           #duration:J
    :cond_2
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    if-gez p1, :cond_4

    .line 1619
    :cond_3
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    .line 1620
    iput-wide p2, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 1622
    :cond_4
    if-ltz p1, :cond_6

    .line 1623
    iput-wide v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 1627
    :goto_2
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    goto :goto_0

    .line 1608
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 1625
    .restart local v2       #newpos:J
    :cond_6
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private scanForward(IJ)V
    .locals 10
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    .line 1634
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 1670
    :goto_0
    return-void

    .line 1636
    :cond_0
    if-nez p1, :cond_1

    .line 1637
    :try_start_0
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 1638
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 1639
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    goto :goto_0

    .line 1668
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1641
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 1642
    cmp-long v4, p2, v6

    if-gez v4, :cond_5

    .line 1644
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 1649
    :goto_1
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    add-long v2, v4, p2

    .line 1650
    .local v2, newpos:J
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 1651
    .local v0, duration:J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    .line 1653
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->next()V

    .line 1654
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 1655
    sub-long/2addr v2, v0

    .line 1657
    :cond_2
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    if-gez p1, :cond_4

    .line 1658
    :cond_3
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    .line 1659
    iput-wide p2, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 1661
    :cond_4
    if-ltz p1, :cond_6

    .line 1662
    iput-wide v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 1666
    :goto_2
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    goto :goto_0

    .line 1647
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 1664
    .restart local v0       #duration:J
    .restart local v2       #newpos:J
    :cond_6
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private seekMethod1(I)Z
    .locals 9
    .parameter "keyCode"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x2

    .line 1411
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v3, :cond_0

    move v3, v6

    .line 1442
    :goto_0
    return v3

    .line 1412
    :cond_0
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    const/16 v3, 0xa

    if-ge v1, v3, :cond_c

    .line 1413
    const/4 v2, 0x0

    .local v2, y:I
    :goto_2
    const/4 v3, 0x3

    if-ge v2, v3, :cond_b

    .line 1414
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->keyboard:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    if-ne v3, p1, :cond_a

    .line 1415
    const/4 v0, 0x0

    .line 1417
    .local v0, dir:I
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-ne v1, v3, :cond_2

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ne v2, v3, :cond_2

    const/4 v0, 0x0

    .line 1429
    :cond_1
    :goto_3
    iput v1, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    .line 1430
    iput v2, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    .line 1432
    :try_start_0
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    mul-int/lit8 v6, v0, 0x5

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lcom/android/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1435
    :goto_4
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    .line 1436
    const/4 v3, 0x1

    goto :goto_0

    .line 1418
    :cond_2
    if-nez v2, :cond_3

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-le v1, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    .line 1419
    :cond_3
    if-nez v2, :cond_4

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-ge v1, v3, :cond_4

    const/4 v0, -0x1

    goto :goto_3

    .line 1421
    :cond_4
    if-ne v2, v4, :cond_5

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-le v1, v3, :cond_5

    const/4 v0, -0x1

    goto :goto_3

    .line 1422
    :cond_5
    if-ne v2, v4, :cond_6

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-ge v1, v3, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    .line 1424
    :cond_6
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ge v2, v3, :cond_7

    if-gt v1, v7, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    .line 1425
    :cond_7
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ge v2, v3, :cond_8

    if-lt v1, v8, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    .line 1427
    :cond_8
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-le v2, v3, :cond_9

    if-gt v1, v7, :cond_9

    const/4 v0, -0x1

    goto :goto_3

    .line 1428
    :cond_9
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-le v2, v3, :cond_1

    if-lt v1, v8, :cond_1

    const/4 v0, 0x1

    goto :goto_3

    .line 1413
    .end local v0           #dir:I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1412
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1440
    .end local v2           #y:I
    :cond_c
    iput v5, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    .line 1441
    iput v5, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    move v3, v6

    .line 1442
    goto/16 :goto_0

    .line 1433
    .restart local v0       #dir:I
    .restart local v2       #y:I
    :catch_0
    move-exception v3

    goto :goto_4
.end method

.method private seekMethod2(I)Z
    .locals 7
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x0

    .line 1447
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    move v2, v3

    .line 1459
    :goto_0
    return v2

    .line 1448
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 1449
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->keyboard:[[I

    aget-object v2, v2, v3

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 1450
    mul-int/lit8 v2, v0, 0x64

    div-int/lit8 v1, v2, 0xa

    .line 1452
    .local v1, seekpercentage:I
    :try_start_0
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v3

    int-to-long v5, v1

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Lcom/android/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    :goto_2
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    .line 1456
    const/4 v2, 0x1

    goto :goto_0

    .line 1448
    .end local v1           #seekpercentage:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1459
    goto :goto_0

    .line 1453
    .restart local v1       #seekpercentage:I
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private setEqualizerText()V
    .locals 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "equalizer"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 646
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mEqualizerName:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/sec/android/app/music/R2vsUtil;->doConvertToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    return-void
.end method

.method private setMTMVButtonImage()V
    .locals 4

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 617
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "srs_channel"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mMTMV:Landroid/widget/ImageButton;

    const v2, 0x7f0200c4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 623
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mEqualizerName:Landroid/widget/TextView;

    const v2, 0x7f070002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 640
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mMTMV:Landroid/widget/ImageButton;

    const v2, 0x7f0200c2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 630
    iget v1, p0, Lcom/android/music/MediaPlaybackActivity;->mLastOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 631
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mEqualizerName:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 635
    :cond_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mEqualizerName:Landroid/widget/TextView;

    const v2, 0x7f070001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setPauseButtonImage()V
    .locals 2

    .prologue
    .line 1956
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1959
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1969
    :goto_0
    return-void

    .line 1964
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1967
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setRepeatButtonImage()V
    .locals 2

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 1930
    :goto_0
    return-void

    .line 1910
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButtonImageValue:I

    packed-switch v0, :pswitch_data_0

    .line 1924
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1928
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1914
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1919
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1910
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setShuffleButtonImage()V
    .locals 2

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 1952
    :goto_0
    return-void

    .line 1936
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButtonImageValue:I

    packed-switch v0, :pswitch_data_0

    .line 1947
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1950
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1940
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1944
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1936
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showToast(I)V
    .locals 2
    .parameter

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1770
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    .line 1772
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 1773
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1774
    return-void
.end method

.method private startPlayback()V
    .locals 4

    .prologue
    .line 1777
    const-string v0, "###"

    const-string v1, "startPlayback ~~"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 1807
    :goto_0
    return-void

    .line 1780
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1781
    const-string v1, ""

    .line 1782
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1783
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1786
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1787
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1788
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1794
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->stop()V

    .line 1796
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1, v0}, Lcom/android/music/IMediaPlaybackService;->openFile(Ljava/lang/String;)V

    .line 1797
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->play()V

    .line 1798
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->setIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1804
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 1805
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    .line 1806
    invoke-direct {p0, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    goto :goto_0

    .line 1790
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1799
    :catch_0
    move-exception v0

    .line 1800
    const-string v1, "MediaPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t start playback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private toggleMTMV()V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setEqualizerText()V

    .line 601
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setMTMVButtonImage()V

    .line 602
    return-void
.end method

.method private toggleShuffle()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 1718
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 1740
    :goto_0
    return-void

    .line 1722
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 1723
    if-nez v0, :cond_2

    .line 1724
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1725
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1726
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1727
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    .line 1729
    :cond_1
    const v0, 0x7f090087

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    .line 1737
    :goto_1
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    goto :goto_0

    .line 1738
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1730
    :cond_2
    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_4

    .line 1732
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1733
    const v0, 0x7f090086

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    goto :goto_1

    .line 1735
    :cond_4
    const-string v1, "MediaPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid shuffle mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private turnOffEQ()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 605
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setEqualizerText()V

    .line 607
    invoke-virtual {p0, v0, v0}, Lcom/android/music/MediaPlaybackActivity;->showAdditionalPanel(ZZ)V

    .line 609
    return-void
.end method

.method private updateTrackInfo()V
    .locals 13

    .prologue
    const-wide/16 v4, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x3

    .line 2200
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 2325
    :goto_0
    return-void

    .line 2204
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 2205
    if-nez v6, :cond_1

    .line 2206
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2314
    :catch_0
    move-exception v0

    .line 2315
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->finish()V

    .line 2318
    :goto_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mFlingHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2319
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mFlingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2321
    iput-boolean v12, p0, Lcom/android/music/MediaPlaybackActivity;->mIsFling:Z

    goto :goto_0

    .line 2210
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v7

    .line 2211
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-gez v0, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2214
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2215
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2216
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2219
    iput-object v6, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackNameText:Ljava/lang/String;

    .line 2220
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackNameText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2222
    const-string v0, "###"

    const-string v1, "UpDateTrackInfo~~ 1111"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mIsFling:Z

    if-nez v0, :cond_2

    .line 2226
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->removeMessages(I)V

    .line 2227
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    const/4 v1, 0x3

    new-instance v2, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;-><init>(JJ)V

    invoke-virtual {v0, v1, v2}, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2301
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    .line 2303
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_b

    .line 2305
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTotalTimeText:Ljava/lang/String;

    .line 2311
    :goto_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mTotalTimeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2231
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2232
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2233
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 2234
    const-string v1, "<unknown>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_5

    .line 2238
    :cond_4
    const v0, 0x7f090091

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2241
    :cond_5
    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistNameText:Ljava/lang/String;

    .line 2243
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2244
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 2245
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v1

    .line 2246
    const-string v3, "<unknown>"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v0, :cond_c

    .line 2250
    :cond_6
    const v0, 0x7f090090

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-wide v9, v4

    .line 2254
    :goto_4
    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumNameText:Ljava/lang/String;

    .line 2256
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2258
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    .line 2259
    if-nez v0, :cond_7

    .line 2260
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/music/MediaPlaybackActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 2261
    if-eqz v0, :cond_a

    .line 2264
    :try_start_2
    const-string v1, "content://mms/part/"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2265
    const-string v1, "cl"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2270
    :goto_5
    if-ltz v1, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2273
    new-instance v2, Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 2281
    :goto_6
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 2288
    :cond_7
    :goto_7
    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackNameText:Ljava/lang/String;

    .line 2290
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2294
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mIsFling:Z

    if-nez v0, :cond_2

    .line 2295
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->removeMessages(I)V

    .line 2296
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    const/4 v1, 0x3

    new-instance v2, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;

    invoke-direct {v2, v9, v10, v7, v8}, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;-><init>(JJ)V

    invoke-virtual {v0, v1, v2}, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2297
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 2267
    :cond_8
    :try_start_4
    const-string v1, "_display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v1

    goto :goto_5

    :cond_9
    move-object v1, v6

    .line 2276
    goto :goto_6

    .line 2278
    :catch_1
    move-exception v1

    .line 2281
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 2282
    goto :goto_7

    .line 2281
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_a
    move-object v0, v6

    .line 2284
    goto :goto_7

    .line 2307
    :cond_b
    const-string v0, "--:--"

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTotalTimeText:Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3

    :cond_c
    move-wide v9, v1

    goto/16 :goto_4
.end method

.method private updateTrackInfoSimple()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2149
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 2196
    :cond_0
    :goto_0
    return-void

    .line 2154
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2155
    const-string v1, "test"

    const-string v2, "updateTrackInfoSimple_path "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    if-nez v0, :cond_2

    .line 2157
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2170
    :catch_0
    move-exception v0

    .line 2171
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->finish()V

    .line 2174
    :goto_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistNameText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2175
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackNameText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2176
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumNameText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2178
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mTotalTimeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2180
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 2181
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2191
    :goto_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->reNomalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2193
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->reNomalHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 2160
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v1

    .line 2161
    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2162
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2163
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2164
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 2166
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2167
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2168
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2184
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->getArtwork(IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2185
    :catch_1
    move-exception v0

    .line 2186
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method private useDpadMusicControl()Z
    .locals 1

    .prologue
    .line 1512
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDeviceHasDpad:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/android/music/RepeatingImageButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/android/music/RepeatingImageButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1515
    :cond_0
    const/4 v0, 0x1

    .line 1517
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method hideAdditionalPanel()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const-wide/16 v7, 0x12c

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 549
    iget-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mCurConfig:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 551
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 552
    .local v1, mPropertyBarFadeOut:Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 553
    .local v0, mProgressBarFadeOut:Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 555
    .local v2, mTitleInfoFadeOut:Landroid/view/animation/Animation;
    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 556
    invoke-virtual {v1}, Landroid/view/animation/Animation;->startNow()V

    .line 557
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 558
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 559
    invoke-virtual {v2, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 560
    invoke-virtual {v2}, Landroid/view/animation/Animation;->startNow()V

    .line 562
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 584
    .end local v0           #mProgressBarFadeOut:Landroid/view/animation/Animation;
    .end local v1           #mPropertyBarFadeOut:Landroid/view/animation/Animation;
    .end local v2           #mTitleInfoFadeOut:Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 565
    .restart local v0       #mProgressBarFadeOut:Landroid/view/animation/Animation;
    .restart local v1       #mPropertyBarFadeOut:Landroid/view/animation/Animation;
    .restart local v2       #mTitleInfoFadeOut:Landroid/view/animation/Animation;
    :cond_1
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 566
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 583
    .end local v0           #mProgressBarFadeOut:Landroid/view/animation/Animation;
    .end local v1           #mPropertyBarFadeOut:Landroid/view/animation/Animation;
    .end local v2           #mTitleInfoFadeOut:Landroid/view/animation/Animation;
    :cond_2
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->isShownAdditionalBar:Z

    goto :goto_0

    .line 568
    :cond_3
    iget-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mCurConfig:Z

    if-nez v3, :cond_2

    .line 569
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 570
    .restart local v1       #mPropertyBarFadeOut:Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 572
    .restart local v0       #mProgressBarFadeOut:Landroid/view/animation/Animation;
    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 573
    invoke-virtual {v1}, Landroid/view/animation/Animation;->startNow()V

    .line 574
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 575
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 576
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-nez v3, :cond_0

    .line 579
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 580
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public initLayout()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const v8, 0x7f0c0017

    const/16 v7, 0xff

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 340
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLayout- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mScreenMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->onScreen()V

    .line 346
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    invoke-virtual {v1, v4}, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 348
    iput-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    .line 350
    :cond_0
    new-instance v1, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtWorker:Lcom/android/music/MediaPlaybackActivity$Worker;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackActivity$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;-><init>(Lcom/android/music/MediaPlaybackActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    .line 352
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->setContentView(I)V

    .line 354
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->reNomalHandler:Landroid/os/Handler;

    .line 356
    const v1, 0x7f0c0014

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    .line 357
    const v1, 0x7f0c0015

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    .line 360
    const v1, 0x7f0c0013

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/SeekBar;

    .line 362
    const v1, 0x7f0c0005

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    .line 363
    const v1, 0x7f0c000c

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    .line 364
    const v1, 0x7f0c000e

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    .line 365
    const v1, 0x7f0c000d

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    .line 381
    const v1, 0x7f0c000a

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/music/RepeatingImageButton;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    .line 382
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/music/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    const-wide/16 v3, 0x104

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/music/RepeatingImageButton;->setRepeatListener(Lcom/android/music/RepeatingImageButton$RepeatListener;J)V

    .line 384
    const v1, 0x7f0c0009

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    .line 385
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 386
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    const v1, 0x7f0c0018

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/music/RepeatingImageButton;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    .line 388
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/music/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    const-wide/16 v3, 0x104

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/music/RepeatingImageButton;->setRepeatListener(Lcom/android/music/RepeatingImageButton$RepeatListener;J)V

    .line 392
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->navigation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    move v1, v6

    :goto_0
    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackActivity;->mDeviceHasDpad:Z

    .line 396
    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackActivity;->mScreenMode:Z

    if-ne v1, v6, :cond_4

    .line 397
    invoke-virtual {p0, v8}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/IconTextButton;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueButton:Lcom/sec/android/app/music/IconTextButton;

    .line 398
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueButton:Lcom/sec/android/app/music/IconTextButton;

    const v2, 0x7f02002d

    const v3, 0x7f0900a7

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/music/IconTextButton;->setImageAndText(II)V

    .line 399
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueButton:Lcom/sec/android/app/music/IconTextButton;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/IconTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    :cond_1
    :goto_1
    const v1, 0x7f0c0011

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    .line 408
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    const v1, 0x7f0c0008

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    .line 410
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    const-string v1, "com.android.music_preferences"

    invoke-virtual {p0, v1, v5}, Lcom/android/music/MediaPlaybackActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 414
    const v1, 0x7f0c0010

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mEqualizerName:Landroid/widget/TextView;

    .line 415
    const v1, 0x7f0c0007

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mMTMV:Landroid/widget/ImageButton;

    .line 417
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mMTMV:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/music/MediaPlaybackActivity$2;

    invoke-direct {v2, p0}, Lcom/android/music/MediaPlaybackActivity$2;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->toggleMTMV()V

    .line 426
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/SeekBar;

    instance-of v1, v1, Landroid/widget/SeekBar;

    if-eqz v1, :cond_2

    .line 427
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/SeekBar;

    .line 428
    .local v0, seeker:Landroid/widget/SeekBar;
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 430
    .end local v0           #seeker:Landroid/widget/SeekBar;
    :cond_2
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/SeekBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 433
    const v1, 0x7f0c000f

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mViewProgressBar:Landroid/view/ViewGroup;

    .line 434
    const/high16 v1, 0x7f0c

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mTitleInfo:Landroid/view/ViewGroup;

    .line 435
    const v1, 0x7f0c000b

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mTitleInfoButton:Landroid/view/ViewGroup;

    .line 437
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mTitleInfoButton:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/music/MediaPlaybackActivity$3;

    invoke-direct {v2, p0}, Lcom/android/music/MediaPlaybackActivity$3;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 480
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mTitleInfo:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 482
    new-instance v1, Lcom/android/music/MediaPlaybackActivity$OnGestureListener;

    invoke-direct {v1, p0}, Lcom/android/music/MediaPlaybackActivity$OnGestureListener;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mGestureSweepListener:Lcom/android/music/MediaPlaybackActivity$OnGestureListener;

    .line 483
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mGestureSweepListener:Lcom/android/music/MediaPlaybackActivity$OnGestureListener;

    invoke-direct {v1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 485
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 486
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 489
    const v1, 0x7f0c0006

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    .line 490
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 491
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 493
    new-instance v1, Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener;

    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;

    invoke-direct {v3, p0}, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    invoke-direct {v2, p0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-direct {v1, v2}, Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener;-><init>(Landroid/view/GestureDetector;)V

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mTouchHandler:Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener;

    .line 495
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTouchHandler:Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 496
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mTouchHandler:Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener;

    new-instance v2, Lcom/android/music/MediaPlaybackActivity$4;

    invoke-direct {v2, p0}, Lcom/android/music/MediaPlaybackActivity$4;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener;->setHandler(Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener$TouchHandler;)V

    .line 520
    return-void

    :cond_3
    move v1, v5

    .line 392
    goto/16 :goto_0

    .line 400
    :cond_4
    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackActivity;->mScreenMode:Z

    if-nez v1, :cond_1

    .line 401
    invoke-virtual {p0, v8}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueSmallButton:Landroid/widget/ImageButton;

    .line 402
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueSmallButton:Landroid/widget/ImageButton;

    const v2, 0x7f020030

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 403
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueSmallButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 1351
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 1365
    :cond_0
    :goto_0
    return-void

    .line 1354
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1356
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1357
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 1358
    const/4 v3, 0x1

    new-array v0, v3, [J

    .line 1359
    .local v0, list:[J
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v4

    aput-wide v4, v0, v3

    .line 1360
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1361
    .local v1, playlist:I
    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 1354
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x1

    .line 289
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->onScreen()V

    .line 292
    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurConfig onConfigurationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->mCurConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget v0, p0, Lcom/android/music/MediaPlaybackActivity;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v3, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 299
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/music/MediaPlaybackActivity;->mLastOrientation:I

    .line 301
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->initLayout()V

    .line 304
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    .line 308
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->isShownAdditionalBar:Z

    if-eqz v0, :cond_2

    .line 310
    invoke-virtual {p0, v3, v3}, Lcom/android/music/MediaPlaybackActivity;->showAdditionalPanel(ZZ)V

    .line 312
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->reNomalHandler:Landroid/os/Handler;

    .line 313
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->reNomalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/music/MediaPlaybackActivity$1;

    invoke-direct {v1, p0}, Lcom/android/music/MediaPlaybackActivity$1;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 323
    :goto_0
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfoSimple()V

    .line 324
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    .line 326
    iget v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButtonImageValue:I

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->restoreRepeatButtonImage(I)V

    .line 327
    iget v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButtonImageValue:I

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->restoreShuffleButtonImage(I)V

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 330
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->paused:Z

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 336
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 337
    return-void

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mViewProgressBar:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v1, 0x1

    .line 231
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 233
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->setVolumeControlStream(I)V

    .line 234
    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->requestWindowFeature(I)Z

    .line 235
    iput v1, p0, Lcom/android/music/MediaPlaybackActivity;->seekmethod:I

    .line 237
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$Worker;

    const-string v1, "album art worker"

    invoke-direct {v0, v1}, Lcom/android/music/MediaPlaybackActivity$Worker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtWorker:Lcom/android/music/MediaPlaybackActivity$Worker;

    .line 238
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->initLayout()V

    .line 241
    iput-object p0, p0, Lcom/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    .line 242
    if-eqz p1, :cond_0

    .line 251
    :goto_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTouchSlop:I

    .line 253
    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurConfig OnCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->mCurConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_streaming"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mIsStreaming:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1154
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1160
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 1161
    const/4 v0, 0x6

    const v1, 0x7f090044

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020025

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1162
    const/16 v0, 0x8

    const v1, 0x7f09005d

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1163
    const v0, 0x7f09001a

    invoke-interface {p1, v4, v5, v4, v0}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 1166
    const/16 v0, 0xf

    const v1, 0x7f090084

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1173
    new-instance v0, Lcom/sec/android/app/music/MusicDrmManager;

    invoke-direct {v0}, Lcom/sec/android/app/music/MusicDrmManager;-><init>()V

    .line 1176
    const/4 v1, 0x0

    .line 1178
    :try_start_0
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getFilePath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1185
    :goto_0
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1186
    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicDrmManager;->getOptionInfo()Landroid/drm/mobile2/Drm2Options;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1187
    if-nez v0, :cond_2

    move v0, v4

    .line 1200
    :goto_1
    if-eqz v0, :cond_0

    .line 1201
    const/16 v0, 0xe

    const v1, 0x7f090073

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020028

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1206
    :cond_0
    const/16 v0, 0xa

    const v1, 0x7f09002e

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1211
    const/16 v0, 0xd

    const v1, 0x7f0900a8

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020024

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    move v0, v5

    .line 1216
    :goto_2
    return v0

    .line 1179
    :catch_0
    move-exception v2

    .line 1180
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1190
    :cond_2
    :try_start_2
    iget-boolean v0, v0, Landroid/drm/mobile2/Drm2Options;->bRingtone:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1193
    :catch_1
    move-exception v0

    .line 1196
    const-string v0, "MediaPlaybackActivity"

    const-string v1, "onCreateOptionsMenu FileNotFoundException"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v4

    .line 1216
    goto :goto_2

    :cond_4
    move v0, v5

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtWorker:Lcom/android/music/MediaPlaybackActivity$Worker;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackActivity$Worker;->quit()V

    .line 1148
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1150
    return-void
.end method

.method public onGesture(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2727
    return-void
.end method

.method public onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2733
    return-void
.end method

.method public onGestureEnded(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2739
    return-void
.end method

.method public onGestureStarted(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2745
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 1523
    const/4 v0, -0x1

    .line 1524
    .local v0, direction:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 1526
    .local v1, repcnt:I
    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->seekmethod:I

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->seekMethod1(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v6

    .line 1591
    :goto_0
    return v2

    .line 1526
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->seekMethod2(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1529
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 1591
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1552
    :sswitch_0
    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->seekmethod:I

    sub-int v2, v6, v2

    iput v2, p0, Lcom/android/music/MediaPlaybackActivity;->seekmethod:I

    move v2, v6

    .line 1553
    goto :goto_0

    .line 1556
    :sswitch_1
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1559
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/android/music/RepeatingImageButton;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1560
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/android/music/RepeatingImageButton;->requestFocus()Z

    .line 1562
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->scanBackward(IJ)V

    move v2, v6

    .line 1563
    goto :goto_0

    .line 1565
    :sswitch_2
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1568
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/android/music/RepeatingImageButton;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1569
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/android/music/RepeatingImageButton;->requestFocus()Z

    .line 1571
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->scanForward(IJ)V

    move v2, v6

    .line 1572
    goto :goto_0

    .line 1576
    :sswitch_3
    if-ge v1, v6, :cond_6

    .line 1577
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->toggleShuffle()V

    :cond_6
    move v2, v6

    .line 1580
    goto :goto_0

    .line 1585
    :sswitch_4
    if-ge v1, v6, :cond_7

    .line 1586
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->doPauseResume()V

    :cond_7
    move v2, v6

    .line 1589
    goto :goto_0

    .line 1529
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_4
        0x2f -> :sswitch_3
        0x3e -> :sswitch_4
        0x4c -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const-wide/16 v2, 0x0

    .line 1465
    packed-switch p1, :pswitch_data_0

    .line 1508
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 1468
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 1472
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 1473
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1474
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 1475
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->prev()V

    .line 1485
    :cond_1
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 1486
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    move v0, v5

    .line 1487
    goto :goto_1

    .line 1477
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    goto :goto_2

    .line 1506
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1480
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->scanBackward(IJ)V

    .line 1481
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1482
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    goto :goto_2

    .line 1489
    :pswitch_1
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_4

    .line 1493
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    if-nez v0, :cond_5

    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    .line 1494
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1495
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->next()V

    .line 1502
    :cond_4
    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 1503
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    move v0, v5

    .line 1504
    goto :goto_1

    .line 1497
    :cond_5
    const/4 v0, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->scanForward(IJ)V

    .line 1498
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1499
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1465
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, " "

    const-string v9, "<unknown>"

    .line 757
    .line 766
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v6

    .line 767
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v7

    .line 768
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v8

    .line 769
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 777
    const-string v2, "<unknown>"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "<unknown>"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v8, :cond_0

    const-string v2, "recording"

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v10

    .line 859
    :goto_0
    return v0

    .line 770
    :catch_0
    move-exception v0

    move v0, v11

    .line 771
    goto :goto_0

    .line 772
    :catch_1
    move-exception v0

    move v0, v11

    .line 774
    goto :goto_0

    .line 785
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    move v0, v10

    .line 786
    goto :goto_0

    .line 789
    :cond_1
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "is_music"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 793
    if-eqz v0, :cond_f

    .line 794
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 795
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v11

    .line 797
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 799
    :goto_2
    if-nez v0, :cond_3

    move v0, v10

    .line 800
    goto :goto_0

    :cond_2
    move v1, v10

    .line 795
    goto :goto_1

    .line 803
    :cond_3
    if-eqz v6, :cond_6

    const-string v0, "<unknown>"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v11

    .line 806
    :goto_3
    if-eqz v7, :cond_7

    const-string v1, "<unknown>"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v11

    .line 809
    :goto_4
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 812
    const-string v2, "vnd.android.cursor.item/artist"

    move-object v3, v2

    move-object v4, v6

    move-object v2, v6

    .line 839
    :goto_5
    const v5, 0x7f09004b

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v4, v9, v10

    invoke-virtual {p0, v5, v9}, Lcom/android/music/MediaPlaybackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 841
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 842
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 843
    const-string v9, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    const-string v9, "query"

    invoke-virtual {v5, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    if-eqz v0, :cond_4

    .line 846
    const-string v0, "android.intent.extra.artist"

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    :cond_4
    if-eqz v1, :cond_5

    .line 849
    const-string v0, "android.intent.extra.album"

    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    :cond_5
    const-string v0, "android.intent.extra.title"

    invoke-virtual {v5, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    const-string v0, "android.intent.extra.focus"

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 856
    invoke-static {v5, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lcom/android/music/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v11

    .line 859
    goto/16 :goto_0

    :cond_6
    move v0, v10

    .line 803
    goto :goto_3

    :cond_7
    move v1, v10

    .line 806
    goto :goto_4

    .line 813
    :cond_8
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 815
    if-eqz v0, :cond_9

    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 820
    :goto_6
    const-string v3, "vnd.android.cursor.item/album"

    move-object v4, v7

    goto :goto_5

    :cond_9
    move-object v2, v7

    .line 818
    goto :goto_6

    .line 821
    :cond_a
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 823
    if-nez v8, :cond_b

    move v0, v11

    .line 826
    goto/16 :goto_0

    .line 830
    :cond_b
    if-eqz v0, :cond_c

    .line 831
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 835
    :goto_7
    const-string v3, "audio/*"

    move-object v4, v8

    goto/16 :goto_5

    :cond_c
    move-object v2, v8

    .line 833
    goto :goto_7

    .line 837
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t be here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move v1, v11

    goto/16 :goto_1

    :cond_f
    move v0, v11

    goto/16 :goto_2
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 1114
    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->setIntent(Landroid/content/Intent;)V

    .line 1116
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 1250
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1346
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 1253
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1254
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1255
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    move v0, v6

    .line 1256
    goto :goto_1

    .line 1261
    :cond_0
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1262
    const-class v1, Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1263
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1264
    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 1265
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->finish()V

    move v0, v6

    .line 1268
    goto :goto_1

    .line 1272
    :pswitch_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    :cond_1
    move v0, v6

    .line 1275
    goto :goto_1

    .line 1278
    :pswitch_4
    invoke-static {}, Lcom/android/music/MusicUtils;->togglePartyShuffle()V

    .line 1279
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    .line 1281
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    move v0, v6

    .line 1285
    goto :goto_1

    .line 1289
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1290
    const-class v1, Lcom/android/music/CreatePlaylist;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1291
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v6

    .line 1292
    goto :goto_1

    .line 1296
    :pswitch_6
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 1297
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1298
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "playlist"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1299
    invoke-static {p0, v0, v1, v2}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    move v0, v6

    .line 1300
    goto :goto_1

    .line 1306
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1307
    const-class v1, Lcom/sec/android/app/music/MusicSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1308
    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v6

    .line 1309
    goto :goto_1

    .line 1314
    :pswitch_8
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_2

    .line 1315
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 1316
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1317
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1320
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1321
    const v2, 0x7f090030

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1325
    :goto_2
    const-string v3, "description"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    const-string v2, "items"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1327
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1328
    const-class v2, Lcom/android/music/DeleteItems;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1329
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1330
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    move v0, v6

    .line 1334
    goto/16 :goto_1

    .line 1323
    :cond_3
    const v2, 0x7f09009f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1338
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1339
    const-string v1, "android.media.extra.AUDIO_SESSION"

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1340
    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v6

    .line 1341
    goto/16 :goto_1

    .line 1344
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1250
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f020026

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1221
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    move v0, v4

    .line 1243
    :goto_0
    return v0

    .line 1222
    :cond_0
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1223
    if-eqz v0, :cond_1

    .line 1224
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentShuffleMode()I

    move-result v1

    .line 1225
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1226
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1227
    const v1, 0x7f09005e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1234
    :cond_1
    :goto_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1235
    if-eqz v0, :cond_2

    .line 1236
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    .line 1237
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 1240
    :cond_2
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 1241
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    :goto_2
    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    move v0, v3

    .line 1243
    goto :goto_0

    .line 1229
    :cond_3
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1230
    const v1, 0x7f09005d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    move v0, v4

    .line 1241
    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    const-string v2, "###"

    .line 1120
    const-string v0, "###"

    const-string v0, "onResume ~~"

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1122
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 1123
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    .line 1125
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->toggleMTMV()V

    .line 1128
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/MusicUtils;->bIsSkipFlingEvent:Z

    .line 1129
    const-string v0, "###"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnResume bIsSkipFlingEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/music/MusicUtils;->bIsSkipFlingEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 1136
    return-void
.end method

.method public onScreen()V
    .locals 7

    .prologue
    const/16 v6, 0x140

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 258
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 259
    .local v2, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 260
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 261
    .local v1, deviceWidth:I
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 262
    .local v0, deviceHeight:I
    if-le v1, v0, :cond_0

    .line 263
    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mCurConfig:Z

    .line 267
    :goto_0
    iget-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mCurConfig:Z

    if-eqz v3, :cond_2

    .line 270
    if-ne v0, v6, :cond_1

    .line 271
    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mScreenMode:Z

    .line 282
    :goto_1
    const-string v3, "###"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnScreen Width :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Height :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 265
    :cond_0
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackActivity;->mCurConfig:Z

    goto :goto_0

    .line 273
    :cond_1
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackActivity;->mScreenMode:Z

    goto :goto_1

    .line 275
    :cond_2
    if-ne v1, v6, :cond_3

    .line 276
    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mScreenMode:Z

    goto :goto_1

    .line 278
    :cond_3
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackActivity;->mScreenMode:Z

    goto :goto_1
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 594
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1076
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1078
    const-string v0, "MediaPlaybackActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1081
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    :cond_0
    invoke-static {p0}, Lcom/android/music/MusicUtils;->checkLowStorageforMedia(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1084
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->finish()V

    .line 1110
    :goto_0
    return-void

    .line 1089
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->paused:Z

    .line 1091
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 1092
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    if-nez v0, :cond_2

    .line 1094
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1097
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1098
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1099
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1102
    const-string v1, "com.android.music.turnoffmtmv"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1103
    const-string v1, "com.android.music.turnoffeq"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1105
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1106
    const-string v0, "###"

    const-string v1, "onStart ~~"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 1108
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    .line 1109
    invoke-direct {p0, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1020
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->paused:Z

    .line 1022
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSearchPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSearchPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1037
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1044
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/MusicUtils;->bIsSkipFlingEvent:Z

    .line 1045
    const-string v0, "###"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop bIsSkipFlingEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/music/MusicUtils;->bIsSkipFlingEvent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1051
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1052
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 1054
    :try_start_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->hideNotification()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1066
    :cond_1
    :goto_1
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mIsPossibleNextPrevButton:Z

    .line 1068
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 1069
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 1070
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1071
    return-void

    .line 1061
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1038
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 667
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 668
    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->textViewForContainer(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    .line 669
    if-nez v1, :cond_0

    move v0, v4

    .line 736
    :goto_0
    return v0

    .line 672
    :cond_0
    if-nez v0, :cond_2

    .line 673
    const v0, -0x9f9fa0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 674
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/music/MediaPlaybackActivity;->mLastX:I

    iput v0, p0, Lcom/android/music/MediaPlaybackActivity;->mInitialX:I

    .line 675
    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    :cond_1
    :goto_1
    move v0, v4

    .line 736
    goto :goto_0

    .line 676
    :cond_2
    if-eq v0, v5, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 678
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 679
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 681
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 683
    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 684
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    if-eqz v0, :cond_8

    .line 685
    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    .line 686
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 687
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->mLastX:I

    sub-int/2addr v3, v2

    .line 688
    if-eqz v3, :cond_7

    .line 689
    iput v2, p0, Lcom/android/music/MediaPlaybackActivity;->mLastX:I

    .line 690
    add-int/2addr v0, v3

    .line 691
    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    if-le v0, v2, :cond_5

    .line 693
    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    sub-int/2addr v0, v2

    .line 694
    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    sub-int/2addr v0, v2

    .line 696
    :cond_5
    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    neg-int v2, v2

    if-ge v0, v2, :cond_6

    .line 698
    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    add-int/2addr v0, v2

    .line 699
    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    add-int/2addr v0, v2

    .line 701
    :cond_6
    invoke-virtual {v1, v0, v4}, Landroid/widget/TextView;->scrollTo(II)V

    :cond_7
    move v0, v5

    .line 703
    goto :goto_0

    .line 705
    :cond_8
    iget v0, p0, Lcom/android/music/MediaPlaybackActivity;->mInitialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    .line 706
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTouchSlop:I

    if-le v0, v2, :cond_1

    .line 708
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 712
    invoke-virtual {v1}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 713
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 715
    :cond_9
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 718
    if-nez v0, :cond_a

    move v0, v4

    .line 719
    goto/16 :goto_0

    .line 723
    :cond_a
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    .line 724
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    .line 725
    iget v0, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    if-le v0, v2, :cond_b

    .line 726
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 727
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    move v0, v4

    .line 728
    goto/16 :goto_0

    .line 730
    :cond_b
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    .line 731
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 732
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    move v0, v5

    .line 733
    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 222
    const-string v0, "###"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method showAdditionalPanel(ZZ)V
    .locals 3
    .parameter "fromalbumart"
    .parameter "bShowLyric"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 524
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTitleInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 525
    sget-boolean v0, Lcom/android/music/MusicUtils;->bIsSkipFlingEvent:Z

    if-eqz v0, :cond_0

    .line 544
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mCurConfig:Z

    if-ne v0, v2, :cond_2

    .line 529
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 531
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackActivity;->additionalPanelFromAlbumArt:Z

    .line 542
    :cond_1
    :goto_1
    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->isShownAdditionalBar:Z

    goto :goto_0

    .line 532
    :cond_2
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mCurConfig:Z

    if-nez v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 534
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackActivity;->additionalPanelFromAlbumArt:Z

    .line 536
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mScreenMode:Z

    if-nez v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mTitleInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method textViewForContainer(Landroid/view/View;)Landroid/widget/TextView;
    .locals 3
    .parameter "v"

    .prologue
    .line 657
    const v2, 0x7f0c000c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 658
    .local v1, vv:Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 663
    :goto_0
    return-object v2

    .line 659
    :cond_0
    const v2, 0x7f0c000e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 660
    if-eqz v1, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    goto :goto_0

    .line 661
    :cond_1
    const v2, 0x7f0c000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 662
    if-eqz v1, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    goto :goto_0

    .line 663
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
