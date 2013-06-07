.class public Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;
.super Landroid/widget/RelativeLayout;
.source "GlassLockScreenMusicWidget.java"


# static fields
.field private static final MUSICHUB_FF_DOWN_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.ff.down"

.field private static final MUSICHUB_FF_UP_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.ff.up"

.field private static final MUSICHUB_MEDIA_INFO:Ljava/lang/String; = "com.samsung.music.musicservicecommand.mediainfo"

.field private static final MUSICHUB_NEXT:Ljava/lang/String; = "com.samsung.music.musicservicecommand.next"

.field private static final MUSICHUB_ON:I = 0x2

.field private static final MUSICHUB_PREVIOUS:Ljava/lang/String; = "com.samsung.music.musicservicecommand.previous"

.field private static final MUSICHUB_REW_DOWN_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.rew.down"

.field private static final MUSICHUB_REW_UP_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.rew.up"

.field private static final MUSICHUB_TOGGLEPAUSE:Ljava/lang/String; = "com.samsung.music.musicservicecommand.togglepause"

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

    .line 162
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 63
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->DEBUG:Z

    .line 90
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 99
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    .line 105
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    .line 106
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 107
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    .line 108
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    .line 110
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 112
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    .line 118
    const/16 v2, 0x12c1

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->SHINK_ANIMATION_START:I

    .line 119
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->MSG_MEDIA_UPDATE:I

    .line 120
    const/16 v2, 0x12c3

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->STREAMING_MEDIA_UPDATE:I

    .line 125
    const v2, 0xea60

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->AWAKE_POKE_MILLIS:I

    .line 131
    iput v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I

    .line 135
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    .line 164
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 165
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 168
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPowerManager:Landroid/os/PowerManager;

    .line 170
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 171
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090084

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 173
    const v2, 0x10202ba

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v2, "com.samsung.music.musicservicecommand.mediainfo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 247
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setFocusable(Z)V

    .line 250
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setFocusableInTouchMode(Z)V

    .line 251
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setDescendantFocusability(I)V

    .line 254
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->init()V

    .line 255
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMinLayout()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->resetMinTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
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
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    return-void
.end method

.method private addMinTimer()V
    .locals 4

    .prologue
    .line 1020
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/policy/impl/JKaySettings;->lockscreenCollapseMusicWidgets:Z

    if-eqz v1, :cond_0

    .line 1021
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12c1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1022
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1024
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 331
    const v2, 0x10202bf

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    .line 332
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 333
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 335
    const v2, 0x10202c4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    .line 336
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 337
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 339
    const v2, 0x10202bb

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    .line 340
    const v2, 0x10202bd

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    .line 341
    const v2, 0x10202bc

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    .line 342
    const v2, 0x10202be

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    .line 345
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    .line 346
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$3;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 449
    const v2, 0x10202c3

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    .line 450
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$5;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 471
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 535
    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    .line 564
    .local v1, nextKeyListener:Landroid/view/View$OnKeyListener;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 566
    const v2, 0x10202c1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    .line 567
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 588
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$9;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$9;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 653
    new-instance v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    .line 682
    .local v0, beforeKeyListener:Landroid/view/View$OnKeyListener;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 684
    const v2, 0x10202c2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    .line 685
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$11;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$11;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 704
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->resetMinTimer()V

    .line 705
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 706
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 707
    return-void
.end method

.method private removeMinTimer()V
    .locals 2

    .prologue
    const/16 v1, 0x12c1

    .line 1014
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1016
    :cond_0
    return-void
.end method

.method private resetMinTimer()V
    .locals 0

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    .line 1029
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V

    .line 1030
    return-void
.end method

.method private setMaxLayout(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/16 v4, 0x190

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 949
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    if-eqz v0, :cond_0

    .line 976
    :goto_0
    return-void

    .line 953
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    .line 956
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 958
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 959
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 962
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_1

    .line 963
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    .line 969
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 971
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 972
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 975
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->resetMinTimer()V

    goto :goto_0

    .line 965
    :cond_1
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    goto :goto_1
.end method

.method private setMinLayout()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x0

    .line 981
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    if-eqz v0, :cond_0

    .line 1009
    :goto_0
    return-void

    .line 985
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    .line 988
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 990
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 991
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 992
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 996
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 997
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    .line 1000
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_2

    .line 1001
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    .line 1006
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1007
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 1003
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

    .line 936
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    if-eqz v1, :cond_0

    .line 944
    :goto_0
    return-void

    .line 939
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 940
    .local v0, animation:Landroid/view/animation/Animation;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 941
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 942
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 943
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 760
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 761
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 763
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 764
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 765
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 766
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 768
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    .line 769
    return-void
.end method

.method protected handleMediaUpdate(IILandroid/net/Uri;)V
    .locals 4
    .parameter "isPlaying"
    .parameter "isStop"
    .parameter "mediaUri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 261
    if-nez p3, :cond_0

    .line 284
    :goto_0
    return-void

    .line 263
    :cond_0
    if-ne p1, v2, :cond_2

    move v0, v2

    .line 264
    .local v0, bIsPlaying:Z
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    .line 265
    if-ne p2, v2, :cond_3

    move v1, v2

    .line 267
    .local v1, bIsStop:Z
    :goto_2
    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 269
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 272
    :cond_1
    if-eqz v1, :cond_4

    .line 273
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 274
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    goto :goto_0

    .end local v0           #bIsPlaying:Z
    .end local v1           #bIsStop:Z
    :cond_2
    move v0, v3

    .line 263
    goto :goto_1

    .restart local v0       #bIsPlaying:Z
    :cond_3
    move v1, v3

    .line 265
    goto :goto_2

    .line 278
    .restart local v1       #bIsStop:Z
    :cond_4
    if-eqz v0, :cond_5

    .line 279
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x1080458

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 283
    :goto_3
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->updateMediaPlayer(Landroid/net/Uri;)V

    goto :goto_0

    .line 281
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x1080459

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method protected handleMediaUpdate(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "isPlaying"
    .parameter "hostType"
    .parameter "title"
    .parameter "artist"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 288
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 292
    iput-object p4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 294
    if-ne p1, v2, :cond_3

    move v0, v2

    .line 295
    .local v0, bIsPlaying:Z
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    .line 296
    if-nez p2, :cond_4

    move v1, v2

    .line 306
    .local v1, bIsStop:Z
    :goto_2
    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 308
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 311
    :cond_2
    if-eqz v1, :cond_5

    .line 312
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 313
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    goto :goto_0

    .end local v0           #bIsPlaying:Z
    .end local v1           #bIsStop:Z
    :cond_3
    move v0, v3

    .line 294
    goto :goto_1

    .restart local v0       #bIsPlaying:Z
    :cond_4
    move v1, v3

    .line 296
    goto :goto_2

    .line 317
    .restart local v1       #bIsStop:Z
    :cond_5
    if-eqz v0, :cond_6

    .line 318
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x1080458

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 322
    :goto_3
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x1080459

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method public isControllerShowing()Z
    .locals 1

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1068
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 710
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 713
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startControllerAnimation()V

    .line 717
    :cond_0
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 721
    :cond_1
    const/16 v1, 0x19

    if-ne p1, v1, :cond_2

    .line 725
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 727
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string v1, "GlassLockScreenMusicWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown(): imm.isAccessoryKeyboardState()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    if-eqz v1, :cond_3

    .line 729
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 732
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 752
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 754
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 755
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 756
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    .line 740
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 742
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_0

    .line 743
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    .line 747
    :goto_0
    return-void

    .line 745
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    goto :goto_0
.end method

.method public sendBroadcastAfterBooting(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-nez v0, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V
    .locals 1
    .parameter "v"
    .parameter "intent"

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-nez v0, :cond_1

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setBottomLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x50

    .line 785
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    .line 786
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    const v2, 0x10803e0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 787
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 788
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 789
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 792
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 793
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    return-void
.end method

.method public setControllerVisibility(ZZ)V
    .locals 3
    .parameter "bIsVisible"
    .parameter "isMusicWidgetShowed"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1048
    if-nez p1, :cond_2

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    .line 1049
    if-eqz p1, :cond_3

    .line 1050
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    if-eqz v0, :cond_1

    .line 1051
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    if-nez v0, :cond_0

    .line 1052
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 1053
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 1055
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V

    .line 1065
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 1048
    goto :goto_0

    .line 1058
    :cond_3
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    .line 1059
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    if-eqz v0, :cond_4

    .line 1060
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 1061
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 1063
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    goto :goto_1
.end method

.method public setTopLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 772
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    .line 773
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    const v2, 0x10803e1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 775
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 776
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 777
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 779
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 780
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 781
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    return-void
.end method

.method public startControllerAnimation()V
    .locals 1

    .prologue
    .line 1034
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    .line 1035
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v0, :cond_0

    .line 1036
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMinLayout()V

    .line 1044
    :goto_0
    return-void

    .line 1038
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_1

    .line 1039
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    goto :goto_0

    .line 1041
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    goto :goto_0
.end method

.method public updateMediaPlayer(Landroid/net/Uri;)V
    .locals 17
    .parameter "mediaUri"

    .prologue
    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPowerManager:Landroid/os/PowerManager;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v14

    .line 800
    .local v14, mScreenOn:Z
    if-nez v14, :cond_1

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    move v2, v0

    if-eqz v2, :cond_3

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 812
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMediaUri:Landroid/net/Uri;

    move-object v2, v0

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 817
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMediaUri:Landroid/net/Uri;

    .line 818
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

    .line 821
    .local v11, mCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_6

    .line 822
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_4

    .line 823
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 825
    :try_start_0
    const-string v2, "title"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 827
    const-string v2, "artist"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 829
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

    .line 852
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 854
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

    .line 855
    .local v15, newTitleText:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 859
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 861
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

    .line 863
    .local v8, currentAlbumArtURI:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 864
    .local v13, mInputStream:Ljava/io/InputStream;
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 865
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 866
    .local v10, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 870
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, v0

    invoke-virtual {v2, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 877
    :goto_3
    if-eqz v13, :cond_2

    .line 878
    const/4 v2, 0x0

    invoke-static {v13, v2, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 881
    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 889
    .end local v8           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v10           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #mInputStream:Ljava/io/InputStream;
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    move-object v2, v0

    if-eqz v2, :cond_5

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 808
    .end local v11           #mCursor:Landroid/database/Cursor;
    .end local v15           #newTitleText:Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_1

    .line 837
    .restart local v11       #mCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v2

    move-object v9, v2

    .line 838
    .local v9, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_2

    .line 847
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :cond_4
    const-string v2, "Unknown"

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 848
    const-string v2, "Unknown"

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 849
    const-string v2, "0"

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    goto/16 :goto_2

    .line 873
    .restart local v8       #currentAlbumArtURI:Landroid/net/Uri;
    .restart local v10       #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v13       #mInputStream:Ljava/io/InputStream;
    .restart local v15       #newTitleText:Ljava/lang/CharSequence;
    :catch_1
    move-exception v2

    move-object v9, v2

    .line 874
    .restart local v9       #e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 875
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "Maybe unknown url."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 892
    .end local v8           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    .end local v10           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #mInputStream:Ljava/io/InputStream;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    move-object v2, v0

    if-nez v2, :cond_0

    .line 894
    const/16 v2, 0x8

    new-array v12, v2, [I

    fill-array-data v12, :array_0

    .line 900
    .local v12, mDefaultAlbumAriId:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    array-length v3, v12

    rem-int/2addr v2, v3

    aget v16, v12, v2

    .line 901
    .local v16, randomAlbumArtId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 905
    .end local v12           #mDefaultAlbumAriId:[I
    .end local v15           #newTitleText:Ljava/lang/CharSequence;
    .end local v16           #randomAlbumArtId:I
    :cond_6
    const/16 v2, 0x8

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 906
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    goto/16 :goto_0

    .line 882
    .restart local v8       #currentAlbumArtURI:Landroid/net/Uri;
    .restart local v10       #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v13       #mInputStream:Ljava/io/InputStream;
    .restart local v15       #newTitleText:Ljava/lang/CharSequence;
    :catch_2
    move-exception v2

    goto/16 :goto_4

    .line 871
    :catch_3
    move-exception v2

    goto/16 :goto_3

    .line 894
    :array_0
    .array-data 0x4
        0xe5t 0x3t 0x8t 0x1t
        0xe6t 0x3t 0x8t 0x1t
        0xe7t 0x3t 0x8t 0x1t
        0xe8t 0x3t 0x8t 0x1t
        0xe9t 0x3t 0x8t 0x1t
        0xeat 0x3t 0x8t 0x1t
        0xebt 0x3t 0x8t 0x1t
        0xect 0x3t 0x8t 0x1t
    .end array-data
.end method

.method public updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "title"
    .parameter "artist"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 912
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 914
    .local v0, mScreenOn:Z
    if-nez v0, :cond_0

    .line 915
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 916
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 931
    :goto_0
    return-void

    .line 919
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v2, :cond_1

    .line 920
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 925
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

    .line 926
    .local v1, newTitleText:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 922
    .end local v1           #newTitleText:Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1
.end method
