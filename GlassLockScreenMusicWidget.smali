.class public Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;
.super Landroid/widget/RelativeLayout;
.source "GlassLockScreenMusicWidget.java"


# static fields
.field private static final MUSICPLAYER_CHECK_PLAY_STATUS:Ljava/lang/String; = "com.android.music.musicservicecommand.checkplaystatus"

.field private static final MUSICPLAYER_FF_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.down"

.field private static final MUSICPLAYER_FF_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.up"

.field private static final MUSICPLAYER_MEDIA_INFO:Ljava/lang/String; = "com.android.music.musicservicecommand.mediainfo"

.field private static final MUSICPLAYER_NEXT:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field private static final MUSICPLAYER_ON:I = 0x1

.field private static final MUSICPLAYER_PREVIOUS:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field private static final MUSICPLAYER_REW_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.down"

.field private static final MUSICPLAYER_REW_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.up"

.field private static final MUSICPLAYER_TOGGLEPAUSE:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field private static final SOUND_TOUCH_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GlassLockScreenMusicWidget"


# instance fields
.field private final AWAKE_POKE_MILLIS:I

.field private final DEBUG:Z

.field private final MSG_MEDIA_UPDATE:I

.field private final SHINK_ANIMATION_START:I

.field private final STREAMING_MEDIA_UPDATE:I

.field private currentAlbumID:Ljava/lang/String;

.field private currentArtist:Ljava/lang/String;

.field private currentTitle:Ljava/lang/String;

.field private isMaxLayout:Z

.field private isTopLayout:Z

.field private mAlbumArtBitmap:Landroid/graphics/Bitmap;

.field private mAlbumArtWithImage:Landroid/widget/ImageView;

.field private mBeforeButton:Landroid/widget/ImageButton;

.field private mBoxInMaxMusicController:Landroid/widget/LinearLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mFFLongPressed:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeightDifference:I

.field private mIsMoving:Z

.field private mIsPlaying:Z

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMaxMusicController:Landroid/widget/FrameLayout;

.field private mMediaUri:Landroid/net/Uri;

.field private mMinMusicControllerHandle:Landroid/widget/LinearLayout;

.field private mMusicInfoTextInMax:Landroid/widget/TextView;

.field private mMusicInfoTextInMin:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mREWLongPressed:Z

.field private mServiceNumber:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVisibleLayout:Z

.field private mWasShowed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 5
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->DEBUG:Z

    .line 75
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 84
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    .line 88
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 90
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    .line 91
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    .line 92
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    .line 99
    const/16 v2, 0x12c1

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->SHINK_ANIMATION_START:I

    .line 100
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->MSG_MEDIA_UPDATE:I

    .line 101
    const/16 v2, 0x12c3

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->STREAMING_MEDIA_UPDATE:I

    .line 107
    const v2, 0xea60

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->AWAKE_POKE_MILLIS:I

    .line 112
    iput v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I

    .line 116
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    .line 146
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 147
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 150
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPowerManager:Landroid/os/PowerManager;

    .line 152
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 153
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090080

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 155
    const v2, 0x1020282

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setFocusable(Z)V

    .line 196
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setFocusableInTouchMode(Z)V

    .line 197
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setDescendantFocusability(I)V

    .line 200
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->init()V

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMinLayout()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->resetMinTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    return-void
.end method

.method private addMinTimer()V
    .locals 4

    .prologue
    .line 983
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v2, "addMinTimer()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v1, :cond_0

    .line 986
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12c1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 987
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v6, "GlassLockScreenMusicWidget"

    .line 279
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v2, "Controller Initiation Running!!"

    invoke-static {v6, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const v2, 0x1020287

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    .line 283
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 284
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 286
    const v2, 0x102028c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    .line 287
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 288
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 290
    const v2, 0x1020283

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    .line 291
    const v2, 0x1020285

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    .line 292
    const v2, 0x1020284

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    .line 293
    const v2, 0x1020286

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    .line 296
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    .line 297
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$3;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 422
    const v2, 0x102028b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    .line 423
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$5;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 441
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 494
    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    .line 523
    .local v1, nextKeyListener:Landroid/view/View$OnKeyListener;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 525
    const v2, 0x1020289

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    .line 526
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 544
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$9;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$9;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 597
    new-instance v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    .line 626
    .local v0, beforeKeyListener:Landroid/view/View$OnKeyListener;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 628
    const v2, 0x102028a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    .line 629
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$11;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$11;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v2, "at init() send broadcast"

    invoke-static {v6, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 646
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->resetMinTimer()V

    .line 647
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 648
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 649
    return-void
.end method

.method private removeMinTimer()V
    .locals 3

    .prologue
    const/16 v2, 0x12c1

    .line 975
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "removeMinTimer()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private resetMinTimer()V
    .locals 2

    .prologue
    .line 993
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "resetMinTimer()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    .line 995
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V

    .line 996
    return-void
.end method

.method private setMaxLayout(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/16 v4, 0x190

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 907
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "setMaxLayout()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    if-eqz v0, :cond_0

    .line 936
    :goto_0
    return-void

    .line 913
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    .line 916
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 918
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 919
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 922
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_1

    .line 923
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    .line 929
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 932
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 935
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->resetMinTimer()V

    goto :goto_0

    .line 925
    :cond_1
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    goto :goto_1
.end method

.method private setMinLayout()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x0

    .line 940
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "setMinLayout()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    if-eqz v0, :cond_0

    .line 970
    :goto_0
    return-void

    .line 946
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    .line 949
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 951
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 953
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 956
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    .line 961
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_2

    .line 962
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    .line 967
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 968
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 969
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 964
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    goto :goto_1
.end method

.method private startTranslateAnimation(III)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 894
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v2, "startTranslateAnimation()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    if-eqz v1, :cond_0

    .line 903
    :goto_0
    return-void

    .line 898
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 899
    .local v0, animation:Landroid/view/animation/Animation;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 900
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 901
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 902
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 701
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 704
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 705
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 706
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 708
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    .line 709
    return-void
.end method

.method protected handleMediaUpdate(IILandroid/net/Uri;)V
    .locals 6
    .parameter "isPlaying"
    .parameter "isStop"
    .parameter "mediaUri"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 206
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "handleMediaUpdate !!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-nez p3, :cond_0

    .line 231
    :goto_0
    return-void

    .line 210
    :cond_0
    if-ne p1, v4, :cond_2

    move v0, v4

    .line 211
    .local v0, bIsPlaying:Z
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    .line 212
    if-ne p2, v4, :cond_3

    move v1, v4

    .line 214
    .local v1, bIsStop:Z
    :goto_2
    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 216
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 219
    :cond_1
    if-eqz v1, :cond_4

    .line 220
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 221
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    goto :goto_0

    .end local v0           #bIsPlaying:Z
    .end local v1           #bIsStop:Z
    :cond_2
    move v0, v5

    .line 210
    goto :goto_1

    .restart local v0       #bIsPlaying:Z
    :cond_3
    move v1, v5

    .line 212
    goto :goto_2

    .line 225
    .restart local v1       #bIsStop:Z
    :cond_4
    if-eqz v0, :cond_5

    .line 226
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x1080402

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 230
    :goto_3
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->updateMediaPlayer(Landroid/net/Uri;)V

    goto :goto_0

    .line 228
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x1080403

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method protected handleMediaUpdate(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "isPlaying"
    .parameter "hostType"
    .parameter "title"
    .parameter "artist"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 235
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "handleMediaUpdate 11!!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 241
    iput-object p4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 243
    if-ne p1, v5, :cond_3

    move v0, v5

    .line 244
    .local v0, bIsPlaying:Z
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    .line 245
    if-nez p2, :cond_4

    move v1, v5

    .line 256
    .local v1, bIsStop:Z
    :goto_2
    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 258
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 261
    :cond_2
    if-eqz v1, :cond_5

    .line 262
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 263
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    goto :goto_0

    .end local v0           #bIsPlaying:Z
    .end local v1           #bIsStop:Z
    :cond_3
    move v0, v4

    .line 243
    goto :goto_1

    .restart local v0       #bIsPlaying:Z
    :cond_4
    move v1, v4

    .line 245
    goto :goto_2

    .line 267
    .restart local v1       #bIsStop:Z
    :cond_5
    if-eqz v0, :cond_6

    .line 268
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x1080402

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 272
    :goto_3
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x1080403

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method public isControllerShowing()Z
    .locals 1

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1037
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-string v1, "GlassLockScreenMusicWidget"

    .line 652
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 655
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v0, "onKeyDown at GlasslockScreenMusic()"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startControllerAnimation()V

    .line 659
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v0, "startControllerAnimation()"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_0
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 663
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v0, "KEYCODE_VOLUME_UP()"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_1
    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    .line 668
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v0, "KEYCODE_VOLUME_DOWN()"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 691
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 695
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 696
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 697
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const-string v2, "GlassLockScreenMusicWidget"

    .line 675
    const-string v0, "GlassLockScreenMusicWidget"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume() isTopLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMaxLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    .line 678
    const-string v0, "GlassLockScreenMusicWidget"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHeightDifference = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 682
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_0

    .line 683
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    .line 687
    :goto_0
    return-void

    .line 685
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    goto :goto_0
.end method

.method public sendBroadcastAfterBooting(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-nez v0, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1051
    :cond_1
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "Phone is not boot completed. so can\'t broadcast"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V
    .locals 2
    .parameter "v"
    .parameter "intent"

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-nez v0, :cond_0

    .line 1064
    :goto_0
    return-void

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1059
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1062
    :cond_1
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "Phone is not boot completed. so can\'t broadcast"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBottomLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x50

    .line 726
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    .line 727
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    const v2, 0x1080398

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 728
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 730
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 731
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 734
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 735
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 736
    return-void
.end method

.method public setControllerVisibility(ZZ)V
    .locals 5
    .parameter "bIsVisible"
    .parameter "isMusicWidgetShowed"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1015
    const-string v0, "GlassLockScreenMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setControllerVisibility() : bIsVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVisibleLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    if-nez p1, :cond_2

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    .line 1018
    if-eqz p1, :cond_3

    .line 1019
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    if-eqz v0, :cond_1

    .line 1020
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    if-nez v0, :cond_0

    .line 1021
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 1022
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 1024
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V

    .line 1034
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v3

    .line 1017
    goto :goto_0

    .line 1027
    :cond_3
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    .line 1028
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    if-eqz v0, :cond_4

    .line 1029
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 1030
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 1032
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    goto :goto_1
.end method

.method public setTopLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 712
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    .line 713
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    const v2, 0x1080399

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 715
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 717
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 718
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 720
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 721
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 722
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    return-void
.end method

.method public startControllerAnimation()V
    .locals 2

    .prologue
    .line 1000
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "startControllerAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    .line 1002
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v0, :cond_0

    .line 1003
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMinLayout()V

    .line 1011
    :goto_0
    return-void

    .line 1005
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_1

    .line 1006
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    goto :goto_0

    .line 1008
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    goto :goto_0
.end method

.method public updateMediaPlayer(Landroid/net/Uri;)V
    .locals 17
    .parameter "mediaUri"

    .prologue
    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPowerManager:Landroid/os/PowerManager;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v14

    .line 742
    .local v14, mScreenOn:Z
    const-string v2, "GlassLockScreenMusicWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mScreenOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    if-nez v14, :cond_1

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    move v2, v0

    if-eqz v2, :cond_2

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 754
    :goto_1
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "updateMediaPlayer()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMediaUri:Landroid/net/Uri;

    move-object v2, v0

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 758
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "mediaUri is same return"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 751
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    .line 762
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMediaUri:Landroid/net/Uri;

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 766
    .local v11, mCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_7

    .line 767
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_5

    .line 768
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 770
    :try_start_0
    const-string v2, "title"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 772
    const-string v2, "artist"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 774
    const-string v2, "album_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 804
    .local v15, newTitleText:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_4

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/audio/albumart/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 813
    .local v8, currentAlbumArtURI:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 814
    .local v13, mInputStream:Ljava/io/InputStream;
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 815
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 816
    .local v10, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 820
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, v0

    invoke-virtual {v2, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v13

    .line 828
    :goto_3
    if-eqz v13, :cond_4

    .line 829
    const/4 v2, 0x0

    invoke-static {v13, v2, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 832
    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 841
    .end local v8           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v10           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #mInputStream:Ljava/io/InputStream;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    move-object v2, v0

    if-eqz v2, :cond_6

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 783
    .end local v15           #newTitleText:Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    move-object v9, v2

    .line 784
    .local v9, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 786
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "Can\'t get String from Cursor"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 796
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :cond_5
    const-string v2, "Unknown"

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 797
    const-string v2, "Unknown"

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 798
    const-string v2, "0"

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    goto/16 :goto_2

    .line 821
    .restart local v8       #currentAlbumArtURI:Landroid/net/Uri;
    .restart local v10       #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v13       #mInputStream:Ljava/io/InputStream;
    .restart local v15       #newTitleText:Ljava/lang/CharSequence;
    :catch_1
    move-exception v2

    move-object v9, v2

    .line 823
    .local v9, e:Ljava/io/FileNotFoundException;
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "Album Art doesn\'t exit."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 824
    .end local v9           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    move-object v9, v2

    .line 825
    .local v9, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 826
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "Maybe unknown url."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 833
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v9

    .line 835
    .local v9, e:Ljava/lang/Exception;
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "mInputStream.close() Failed!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 844
    .end local v8           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #mInputStream:Ljava/io/InputStream;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    move-object v2, v0

    if-nez v2, :cond_0

    .line 846
    const/16 v2, 0x8

    new-array v12, v2, [I

    fill-array-data v12, :array_0

    .line 856
    .local v12, mDefaultAlbumAriId:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    array-length v3, v12

    rem-int/2addr v2, v3

    aget v16, v12, v2

    .line 858
    .local v16, randomAlbumArtId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 862
    .end local v12           #mDefaultAlbumAriId:[I
    .end local v15           #newTitleText:Ljava/lang/CharSequence;
    .end local v16           #randomAlbumArtId:I
    :cond_7
    const/16 v2, 0x8

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 863
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    goto/16 :goto_0

    .line 846
    :array_0
    .array-data 0x4
        0x7et 0x3t 0x8t 0x1t
        0x7ft 0x3t 0x8t 0x1t
        0x80t 0x3t 0x8t 0x1t
        0x81t 0x3t 0x8t 0x1t
        0x82t 0x3t 0x8t 0x1t
        0x83t 0x3t 0x8t 0x1t
        0x84t 0x3t 0x8t 0x1t
        0x85t 0x3t 0x8t 0x1t
    .end array-data
.end method

.method public updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "title"
    .parameter "artist"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 869
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 871
    .local v0, mScreenOn:Z
    const-string v2, "GlassLockScreenMusicWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mScreenOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    if-nez v0, :cond_0

    .line 873
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 874
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 889
    :goto_0
    return-void

    .line 877
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v2, :cond_1

    .line 878
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 883
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, newTitleText:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 880
    .end local v1           #newTitleText:Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1
.end method
