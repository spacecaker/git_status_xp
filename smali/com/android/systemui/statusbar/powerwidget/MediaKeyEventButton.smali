.class public abstract Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "MediaKeyEventButton.java"


# instance fields
.field private mAM:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->mAM:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method protected getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->mAM:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 35
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->mAM:Landroid/media/AudioManager;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->mAM:Landroid/media/AudioManager;

    return-object v0
.end method

.method protected sendMediaKeyEvent(Landroid/content/Context;I)V
    .locals 13
    .parameter "context"
    .parameter "code"

    .prologue
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 22
    .local v1, eventtime:J
    new-instance v11, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    const/4 v5, 0x0

    invoke-direct {v11, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 23
    .local v11, downIntent:Landroid/content/Intent;
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v3, v1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 24
    .local v0, downEvent:Landroid/view/KeyEvent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v11, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 25
    const/4 v4, 0x0

    invoke-virtual {p1, v11, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 27
    new-instance v12, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    const/4 v5, 0x0

    invoke-direct {v12, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 28
    .local v12, upIntent:Landroid/content/Intent;
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-wide v4, v1

    move-wide v6, v1

    move v9, p2

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 29
    .local v3, upEvent:Landroid/view/KeyEvent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v12, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 30
    const/4 v4, 0x0

    invoke-virtual {p1, v12, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 31
    return-void
.end method
