.class public Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;
.super Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;
.source "MediaPlayPauseButton.java"


# instance fields
.field private mCurrentState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;->mCurrentState:I

    .line 10
    const-string v0, "toggleMediaPlayPause"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private isMusicActive(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 43
    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;->mCurrentState:I

    if-ne v2, v5, :cond_3

    .line 44
    iput v4, p0, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;->mCurrentState:I

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    .line 46
    .local v1, am:Landroid/media/AudioManager;
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;->mCurrentState:I

    .line 50
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;->mCurrentState:I

    if-ne v2, v3, :cond_2

    .line 54
    .end local v1           #am:Landroid/media/AudioManager;
    :goto_1
    return v3

    .restart local v1       #am:Landroid/media/AudioManager;
    :cond_1
    move v2, v4

    .line 47
    goto :goto_0

    :cond_2
    move v3, v4

    .line 50
    goto :goto_1

    .line 52
    .end local v1           #am:Landroid/media/AudioManager;
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;->mCurrentState:I

    if-ne v2, v3, :cond_4

    move v0, v3

    .line 53
    .local v0, active:Z
    :goto_2
    iput v5, p0, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;->mCurrentState:I

    move v3, v0

    .line 54
    goto :goto_1

    .end local v0           #active:Z
    :cond_4
    move v0, v4

    .line 52
    goto :goto_2
.end method


# virtual methods
.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const/16 v0, 0x55

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;->sendMediaKeyEvent(Landroid/content/Context;I)V

    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;->isMusicActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;->mCurrentState:I

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;->update(Landroid/content/Context;)V

    .line 35
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;->mState:I

    .line 21
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;->isMusicActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const v0, 0x7f020081

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;->mIcon:I

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    const v0, 0x7f020082

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;->mIcon:I

    goto :goto_0
.end method
