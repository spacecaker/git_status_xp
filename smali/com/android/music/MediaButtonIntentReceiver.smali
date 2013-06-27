.class public Lcom/android/music/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# static fields
.field private static final LONG_PRESS_DELAY:I = 0x3e8

.field private static final MSG_LONGPRESS_TIMEOUT:I = 0x1

.field private static mDown:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mLastClickTime:J

.field private static mLaunched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 36
    sput-boolean v2, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    .line 37
    sput-boolean v2, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    .line 39
    new-instance v0, Lcom/android/music/MediaButtonIntentReceiver$1;

    invoke-direct {v0}, Lcom/android/music/MediaButtonIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    sput-boolean p0, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, intentAction:Ljava/lang/String;
    const-string v8, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 62
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/android/music/MediaPlaybackService;

    invoke-direct {v5, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v5, i:Landroid/content/Intent;
    const-string v8, "com.android.music.musicservicecommand"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v8, "command"

    const-string v9, "pause"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 138
    .end local v5           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v8, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 67
    const-string v8, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 70
    .local v2, event:Landroid/view/KeyEvent;
    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .line 75
    .local v7, keycode:I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 76
    .local v0, action:I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 82
    .local v3, eventtime:J
    const/4 v1, 0x0

    .line 83
    .local v1, command:Ljava/lang/String;
    packed-switch v7, :pswitch_data_0

    .line 99
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_0

    .line 100
    if-nez v0, :cond_5

    .line 101
    sget-boolean v8, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    if-eqz v8, :cond_3

    .line 102
    const-string v8, "togglepause"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-wide v8, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    sget-wide v8, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v8, v3, v8

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 105
    sget-object v8, Lcom/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v9, Lcom/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/music/MediaButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/music/MediaButtonIntentReceiver;->abortBroadcast()V

    goto :goto_0

    .line 85
    :pswitch_1
    const-string v1, "stop"

    .line 86
    goto :goto_1

    .line 89
    :pswitch_2
    const-string v1, "togglepause"

    .line 90
    goto :goto_1

    .line 92
    :pswitch_3
    const-string v1, "next"

    .line 93
    goto :goto_1

    .line 95
    :pswitch_4
    const-string v1, "previous"

    goto :goto_1

    .line 113
    :cond_3
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/android/music/MediaPlaybackService;

    invoke-direct {v5, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .restart local v5       #i:Landroid/content/Intent;
    const-string v8, "com.android.music.musicservicecommand"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/16 v8, 0x4f

    if-ne v7, v8, :cond_4

    sget-wide v8, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v8, v3, v8

    const-wide/16 v10, 0x12c

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 117
    const-string v8, "command"

    const-string v9, "next"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 119
    const-wide/16 v8, 0x0

    sput-wide v8, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 126
    :goto_3
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    .line 127
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_2

    .line 121
    :cond_4
    const-string v8, "command"

    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 123
    sput-wide v3, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    goto :goto_3

    .line 130
    .end local v5           #i:Landroid/content/Intent;
    :cond_5
    sget-object v8, Lcom/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_2

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
