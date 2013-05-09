.class public Lcom/android/systemui/statusbar/powerwidget/WifiButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "WifiButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/powerwidget/WifiButton$1;,
        Lcom/android/systemui/statusbar/powerwidget/WifiButton$WifiStateTracker;
    }
.end annotation


# static fields
.field private static final sWifiState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/WifiButton$WifiStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/WifiButton$WifiStateTracker;-><init>(Lcom/android/systemui/statusbar/powerwidget/WifiButton$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->sWifiState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleWifi"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    return-object v0
.end method

.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 138
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->sWifiState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 124
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->sWifiState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->toggleState(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const v2, 0x7f020113

    const v1, 0x7f020112

    .line 99
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->sWifiState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->mState:I

    .line 100
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    :pswitch_0
    return-void

    .line 102
    :pswitch_1
    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->mIcon:I

    goto :goto_0

    .line 105
    :pswitch_2
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->mIcon:I

    goto :goto_0

    .line 113
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->sWifiState:Lcom/android/systemui/statusbar/powerwidget/StateTracker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->mIcon:I

    goto :goto_0

    .line 116
    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/WifiButton;->mIcon:I

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
