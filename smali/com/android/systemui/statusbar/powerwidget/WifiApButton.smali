.class public Lcom/android/systemui/statusbar/powerwidget/WifiApButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "WifiApButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/powerwidget/WifiApButton$1;,
        Lcom/android/systemui/statusbar/powerwidget/WifiApButton$WifiApStateTracker;
    }
.end annotation


# static fields
.field private static final sWifiApState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$WifiApStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$WifiApStateTracker;-><init>(Lcom/android/systemui/statusbar/powerwidget/WifiApButton$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton;->sWifiApState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleWifiAp"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    return-object v0
.end method

.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 144
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton;->sWifiApState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 128
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton;->sWifiApState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->toggleState(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const v2, 0x7f020111

    const v1, 0x7f020110

    .line 103
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton;->sWifiApState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton;->mState:I

    .line 104
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    :pswitch_0
    return-void

    .line 106
    :pswitch_1
    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton;->mIcon:I

    goto :goto_0

    .line 109
    :pswitch_2
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton;->mIcon:I

    goto :goto_0

    .line 117
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton;->sWifiApState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton;->mIcon:I

    goto :goto_0

    .line 120
    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/WifiApButton;->mIcon:I

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
