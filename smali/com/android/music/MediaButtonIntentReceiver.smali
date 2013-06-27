.class public Lcom/android/music/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# static fields
.field private static mDown:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mLastClickTime:J

.field private static mLaunched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 51
    sput-boolean v2, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    .line 52
    sput-boolean v2, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    .line 60
    new-instance v0, Lcom/android/music/MediaButtonIntentReceiver$1;

    invoke-direct {v0}, Lcom/android/music/MediaButtonIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-boolean p0, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    return p0
.end method

.method private isServiceAlive(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 86
    const/4 v3, 0x0

    .line 87
    .local v3, returnCheck:Z
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 88
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v5, 0x64

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 89
    .local v4, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 90
    .local v2, item:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.music"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    const/4 v3, 0x1

    .line 95
    .end local v2           #item:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    return v3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v11, "com.android.music.musicservicecommand"

    const-string v7, "togglepause"

    const-string v9, "command"

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-direct {p0, p1}, Lcom/android/music/MediaButtonIntentReceiver;->isServiceAlive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    const-string v1, "command"

    const-string v1, "pause"

    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "from"

    const-string v2, "Noisy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    :cond_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 119
    invoke-virtual {p0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 120
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 121
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v1, "com.android.music.AudioPreview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.previewservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    const-string v1, "command"

    const-string v1, "togglepause"

    invoke-virtual {v0, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 132
    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 137
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 138
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 144
    const/4 v0, 0x0

    .line 145
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move-object v5, v0

    .line 189
    :goto_1
    if-eqz v5, :cond_1

    .line 192
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 193
    const/16 v6, 0x4f

    if-eq v1, v6, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    const-string v0, "MediaButtonIntentReceiver"

    const-string v1, "isBluetoothA2dpOn() == false, playing with speaker"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :pswitch_1
    const-string v0, "stop"

    move-object v5, v0

    .line 148
    goto :goto_1

    .line 151
    :pswitch_2
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 158
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 159
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 160
    const-string v5, "com.sec.android.app.factorytest.FactoryTestMain"

    iget-object v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.sec.android.app.camera"

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 167
    :goto_2
    const-string v0, "togglepause"

    move-object v5, v7

    .line 168
    goto :goto_1

    .line 171
    :pswitch_3
    const-string v0, "togglepause"

    move-object v5, v7

    .line 172
    goto :goto_1

    .line 174
    :pswitch_4
    const-string v0, "next"

    move-object v5, v0

    .line 175
    goto :goto_1

    .line 177
    :pswitch_5
    const-string v0, "previous"

    move-object v5, v0

    .line 178
    goto :goto_1

    .line 181
    :pswitch_6
    const-string v0, "fastforward"

    move-object v5, v0

    .line 182
    goto :goto_1

    .line 184
    :pswitch_7
    const-string v0, "rewind"

    move-object v5, v0

    goto :goto_1

    .line 199
    :cond_3
    if-nez v2, :cond_7

    .line 200
    sget-boolean v0, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    if-eqz v0, :cond_5

    .line 201
    const-string v0, "togglepause"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-wide v0, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_4

    sget-wide v0, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v0, v3, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 204
    sget-object v0, Lcom/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/music/MediaButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/android/music/MediaButtonIntentReceiver;->abortBroadcast()V

    goto/16 :goto_0

    .line 212
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/music/MediaPlaybackService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    const-string v2, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const/16 v2, 0x4f

    if-ne v1, v2, :cond_6

    sget-wide v1, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v1, v3, v1

    const-wide/16 v6, 0x190

    cmp-long v1, v1, v6

    if-gez v1, :cond_6

    .line 216
    const-string v1, "command"

    const-string v1, "next"

    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 218
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 228
    :goto_4
    sput-boolean v10, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    .line 229
    sput-boolean v8, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_3

    .line 220
    :cond_6
    const-string v1, "command"

    invoke-virtual {v0, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v1, "state"

    const-string v2, "pushed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 225
    sput-wide v3, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    goto :goto_4

    .line 233
    :cond_7
    if-ne v2, v8, :cond_9

    const-string v0, "fastforward"

    if-eq v5, v0, :cond_8

    const-string v0, "rewind"

    if-ne v5, v0, :cond_9

    .line 235
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/MediaPlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v1, "command"

    invoke-virtual {v0, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v1, "state"

    const-string v2, "released"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 242
    :cond_9
    sget-object v0, Lcom/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    sput-boolean v10, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_3

    .line 164
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 145
    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
