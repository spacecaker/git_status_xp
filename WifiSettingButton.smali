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
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->handleStateChanged(I)V

    return-void
.end method

.method private handleStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->updateStatus(I)V

    .line 35
    return-void
.end method

.method private updateIconsAndTextColor()V
    .locals 7

    .prologue
    .line 86
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .local v4, statusIconRes:I
    const/4 v5, -0x1

    .line 87
    .local v5, textColor:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 88
    .local v2, rootView:Landroid/view/View;
    const v6, 0x7f0a0006

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 89
    .local v0, icon:Landroid/widget/ImageView;
    const v6, 0x7f0a0008

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 91
    .local v3, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->getActivateStatus()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 106
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setTextColor(I)V

    .line 109
    return-void

    .line 93
    :pswitch_0
    const v1, 0x7f020024

    .line 94
    const v4, 0x7f02001b

    .line 95
    goto :goto_0

    .line 97
    :pswitch_1
    const v1, 0x7f020023

    .line 98
    const v4, 0x7f02001a

    .line 99
    goto :goto_0

    .line 101
    :pswitch_2
    const v1, 0x7f020022

    .line 102
    const v4, 0x7f020019

    .line 103
    const v5, -0x777778

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateStatus(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 66
    packed-switch p1, :pswitch_data_0

    .line 82
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->updateIconsAndTextColor()V

    .line 83
    return-void

    .line 68
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setActivateStatus(I)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 73
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setActivateStatus(I)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 78
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setActivateStatus(I)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public activate()V
    .locals 3

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 121
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/enterprise/WifiPolicy;->isWifiAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 132
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v1

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabledDialog(Z)Z

    goto :goto_0
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabledDialog(Z)Z

    .line 139
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->updateStatus(I)V

    .line 55
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 112
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->setText(I)V

    .line 113
    return-void
.end method
