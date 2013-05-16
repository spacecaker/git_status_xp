.class public Lcom/android/systemui/statusbar/powerwidget/WimaxButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "WimaxButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/powerwidget/WimaxButton$1;,
        Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker;
    }
.end annotation


# static fields
.field private static final sWimaxState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker;-><init>(Lcom/android/systemui/statusbar/powerwidget/WimaxButton$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->sWimaxState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleWimax"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    return-object v0
.end method

.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.wimax"

    const-string v2, "com.android.settings.wimax.WimaxSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 144
    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 149
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->sWimaxState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 150
    return-void
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 134
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->sWimaxState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->toggleState(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const v2, 0x7f020115

    const v1, 0x7f020114

    .line 109
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->sWimaxState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->mState:I

    .line 110
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    :pswitch_0
    return-void

    .line 112
    :pswitch_1
    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->mIcon:I

    goto :goto_0

    .line 115
    :pswitch_2
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->mIcon:I

    goto :goto_0

    .line 123
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->sWimaxState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->mIcon:I

    goto :goto_0

    .line 126
    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;->mIcon:I

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
