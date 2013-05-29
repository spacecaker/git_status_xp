.class public final Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "WifiSettingButton.java"


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 21
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->handleStateChanged(I)V

    return-void
.end method

.method private handleStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->updateStatus(I)V

    .line 32
    return-void
.end method

.method private updateIconsAndTextColor()V
    .locals 7

    .prologue
    const v6, 0x7f070010

    .line 86
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v3, 0x0

    .local v3, statusIconRes:I
    const/4 v4, -0x1

    .line 87
    .local v4, textColor:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 88
    .local v2, rootView:Landroid/view/View;
    const v5, 0x7f090007

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->getActivateStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 115
    :goto_0
    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setTextColor(I)V

    .line 118
    return-void

    .line 93
    :pswitch_1
    const v1, 0x7f020019

    .line 95
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setText(I)V

    goto :goto_0

    .line 98
    :pswitch_2
    const v1, 0x7f020018

    .line 100
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setText(I)V

    .line 101
    const v4, -0x333334

    .line 102
    goto :goto_0

    .line 104
    :pswitch_3
    const v1, 0x7f020018

    .line 106
    const v4, -0x333334

    .line 107
    const v5, 0x7f070019

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setText(I)V

    goto :goto_0

    .line 110
    :pswitch_4
    const v1, 0x7f020019

    .line 112
    const v5, 0x7f07001a

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setText(I)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateStatus(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    packed-switch p1, :pswitch_data_0

    .line 82
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->updateIconsAndTextColor()V

    .line 83
    return-void

    .line 65
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setActivateStatus(I)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setActivateStatus(I)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 74
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setActivateStatus(I)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 78
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setActivateStatus(I)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    const-string v1, "WifiSettingButton"

    .line 125
    const-string v0, "WifiSettingButton"

    const-string v0, "activate()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const-string v0, "WifiSettingButton"

    const-string v0, "Wifi is already enabled."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v0, "WifiSettingButton"

    const-string v0, "Set wifi enable."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabledDialog(Z)Z

    goto :goto_0
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 165
    const-string v0, "WifiSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabledDialog(Z)Z

    .line 169
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 41
    const-string v0, "WifiSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->updateStatus(I)V

    .line 52
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 57
    const-string v0, "WifiSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setText(I)V

    .line 122
    return-void
.end method
