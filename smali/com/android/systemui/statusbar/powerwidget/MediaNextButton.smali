.class public Lcom/android/systemui/statusbar/powerwidget/MediaNextButton;
.super Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;
.source "MediaNextButton.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;-><init>()V

    const-string v0, "toggleMediaNext"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaNextButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    const/16 v0, 0x57

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/powerwidget/MediaNextButton;->sendMediaKeyEvent(Landroid/content/Context;I)V

    .line 20
    return-void
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    const v0, 0x7f020080

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaNextButton;->mIcon:I

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaNextButton;->mState:I

    .line 15
    return-void
.end method
