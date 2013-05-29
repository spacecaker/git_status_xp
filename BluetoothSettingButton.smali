.class public final Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "BluetoothSettingButton.java"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 22
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->handleStateChanged(I)V

    return-void
.end method

.method private couldClick()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 156
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 158
    .local v0, isAirPlaneMode:I
    if-ne v0, v4, :cond_0

    move v1, v3

    .line 167
    :goto_0
    return v1

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 163
    const-string v1, "BluetoothSettingButton"

    const-string v2, "mBluetoothAdapter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 164
    goto :goto_0

    :cond_1
    move v1, v4

    .line 167
    goto :goto_0
.end method

.method private handleStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->updateStatus(I)V

    .line 33
    return-void
.end method

.method private updateIconsAndTextColor()V
    .locals 7

    .prologue
    const v6, 0x7f070011

    .line 86
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v3, 0x0

    .local v3, statusIconRes:I
    const/4 v4, -0x1

    .line 87
    .local v4, textColor:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 88
    .local v2, rootView:Landroid/view/View;
    const v5, 0x7f090009

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->getActivateStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 115
    :goto_0
    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setTextColor(I)V

    .line 118
    return-void

    .line 93
    :pswitch_1
    const v1, 0x7f02000c

    .line 95
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setText(I)V

    goto :goto_0

    .line 98
    :pswitch_2
    const v1, 0x7f02000b

    .line 100
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setText(I)V

    .line 101
    const v4, -0x333334

    .line 102
    goto :goto_0

    .line 104
    :pswitch_3
    const v1, 0x7f02000b

    .line 106
    const v4, -0x333334

    .line 107
    const v5, 0x7f070019

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setText(I)V

    goto :goto_0

    .line 110
    :pswitch_4
    const v1, 0x7f02000c

    .line 112
    const v5, 0x7f07001a

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setText(I)V

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

    .line 64
    packed-switch p1, :pswitch_data_0

    .line 82
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->updateIconsAndTextColor()V

    .line 83
    return-void

    .line 66
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setActivateStatus(I)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setActivateStatus(I)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 74
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setActivateStatus(I)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 78
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setActivateStatus(I)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    const-string v1, "BluetoothSettingButton"

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->couldClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const-string v0, "BluetoothSettingButton"

    const-string v0, "activate() couldn\'t click"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string v0, "BluetoothSettingButton"

    const-string v0, "activate()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0
.end method

.method public deactivate()V
    .locals 2

    .prologue
    const-string v1, "BluetoothSettingButton"

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->couldClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const-string v0, "BluetoothSettingButton"

    const-string v0, "deactivate() couldn\'t click"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v0, "BluetoothSettingButton"

    const-string v0, "deactivate()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 42
    const-string v0, "BluetoothSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 48
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->updateStatus(I)V

    .line 53
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 58
    const-string v0, "BluetoothSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setText(I)V

    .line 122
    return-void
.end method
