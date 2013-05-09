.class final Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker;
.super Lcom/android/systemui/statusbar/powerwidget/StateTracker;
.source "WimaxButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/WimaxButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WimaxStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/powerwidget/WimaxButton$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker;-><init>()V

    return-void
.end method

.method private static wimaxStateToFiveState(I)I
    .locals 1
    .parameter "wimaxState"

    .prologue
    .line 90
    packed-switch p0, :pswitch_data_0

    .line 100
    const/4 v0, 0x6

    :goto_0
    return v0

    .line 92
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 94
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 98
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-static {p1}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p1}, Landroid/net/wimax/WimaxHelper;->getWimaxState(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker;->wimaxStateToFiveState(I)I

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x4

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    const-string v3, "4g_state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 80
    .local v2, wimaxState:I
    :goto_0
    invoke-static {v2}, Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker;->wimaxStateToFiveState(I)I

    move-result v1

    .line 81
    .local v1, widgetState:I
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 82
    .end local v1           #widgetState:I
    .end local v2           #wimaxState:I
    :cond_0
    return-void

    .line 74
    :cond_1
    const-string v3, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    const-string v3, "curWimaxEnabledState"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .restart local v2       #wimaxState:I
    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 48
    invoke-static {p1}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const-string v0, "PowerButton"

    const-string v1, "WiMAX is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker;Landroid/content/Context;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
