.class public Lcom/lidroid/systemui/quickpanel/WifiApButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "WifiApButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/systemui/quickpanel/WifiApButton$1;,
        Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker;
    }
.end annotation


# static fields
.field private static final sWifiApState:Lcom/lidroid/systemui/quickpanel/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker;-><init>(Lcom/lidroid/systemui/quickpanel/WifiApButton$1;)V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->sWifiApState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleWifiAp"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 153
    const v0, 0x30b003e

    return v0
.end method

.method protected handleLongClick()Z
    .locals 3

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 137
    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 142
    sget-object v0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->sWifiApState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/systemui/quickpanel/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 143
    return-void
.end method

.method protected toggleState()V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->sWifiApState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/systemui/quickpanel/StateTracker;->toggleState(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method protected updateState()V
    .locals 4

    .prologue
    const v3, 0x3020096

    const v2, 0x3020095

    .line 101
    sget-object v0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->sWifiApState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/systemui/quickpanel/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mState:I

    .line 102
    iget v0, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    :pswitch_0
    return-void

    .line 104
    :pswitch_1
    iput v2, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mIcon:I

    goto :goto_0

    .line 107
    :pswitch_2
    iput v3, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mIcon:I

    goto :goto_0

    .line 115
    :pswitch_3
    sget-object v0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->sWifiApState:Lcom/lidroid/systemui/quickpanel/StateTracker;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iput v3, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mIcon:I

    goto :goto_0

    .line 118
    :cond_0
    iput v2, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton;->mIcon:I

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
