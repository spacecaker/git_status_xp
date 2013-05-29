.class public final Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "BluetoothSettingButton.java"


# instance fields
.field private isAirPlaneMode:I

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private toastAlert:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->toastAlert:Landroid/widget/Toast;

    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->handleStateChanged(I)V

    return-void
.end method

.method private couldClick()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->isAirPlaneMode:I

    .line 199
    iget v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->isAirPlaneMode:I

    if-ne v0, v3, :cond_0

    move v0, v2

    .line 209
    :goto_0
    return v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    move v0, v2

    .line 206
    goto :goto_0

    :cond_1
    move v0, v3

    .line 209
    goto :goto_0
.end method

.method private handleStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->updateStatus(I)V

    .line 49
    return-void
.end method

.method private updateIconsAndTextColor()V
    .locals 7

    .prologue
    .line 99
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .local v4, statusIconRes:I
    const/4 v5, -0x1

    .line 100
    .local v5, textColor:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 101
    .local v2, rootView:Landroid/view/View;
    const v6, 0x7f0a0009

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 102
    .local v0, icon:Landroid/widget/ImageView;
    const v6, 0x7f0a000b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 104
    .local v3, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->getActivateStatus()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 119
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setTextColor(I)V

    .line 122
    return-void

    .line 106
    :pswitch_0
    const v1, 0x7f020014

    .line 107
    const v4, 0x7f02001b

    .line 108
    goto :goto_0

    .line 110
    :pswitch_1
    const v1, 0x7f020013

    .line 111
    const v4, 0x7f02001a

    .line 112
    goto :goto_0

    .line 114
    :pswitch_2
    const v1, 0x7f020012

    .line 115
    const v4, 0x7f020019

    .line 116
    const v5, -0x777778

    goto :goto_0

    .line 104
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

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->updateIconsAndTextColor()V

    .line 96
    return-void

    .line 82
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setActivateStatus(I)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setActivateStatus(I)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 91
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setActivateStatus(I)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public activate()V
    .locals 4

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->couldClick()Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    iget v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->isAirPlaneMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->toastAlert:Landroid/widget/Toast;

    const v2, 0x7f080027

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 134
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    :try_start_0
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;

    move-result-object v0

    .line 145
    .local v0, bp:Landroid/app/enterprise/IBluetoothPolicy;
    invoke-interface {v0}, Landroid/app/enterprise/IBluetoothPolicy;->isBluetoothEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    .end local v0           #bp:Landroid/app/enterprise/IBluetoothPolicy;
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->couldClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 64
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->updateStatus(I)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 125
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setText(I)V

    .line 126
    return-void
.end method
