.class public Lcom/lidroid/systemui/quickpanel/LockScreenActionButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "LockScreenActionButton.java"


# instance fields
.field private action:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/LockScreenActionButton;->action:Ljava/lang/String;

    .line 15
    const-string v0, "toggleLockScreenAction"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/LockScreenActionButton;->mType:Ljava/lang/String;

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/LockScreenActionButton;->mState:I

    .line 17
    return-void
.end method


# virtual methods
.method protected getText()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f090109

    return v0
.end method

.method protected handleLongClick()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method protected toggleState()V
    .locals 6

    .prologue
    .line 25
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/LockScreenActionButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 26
    .local v0, context:Landroid/content/Context;
    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 27
    .local v1, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 28
    return-void
.end method

.method protected updateState()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/LockScreenActionButton;->mState:I

    .line 21
    const v0, 0x7f02014c

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/LockScreenActionButton;->mIcon:I

    .line 22
    return-void
.end method
