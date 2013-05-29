.class public final Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "DataConnectionSettingButtonXEC.java"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDataConnStateChangeHandler:Landroid/os/Handler;

.field private mHandleDataConnStateChangTimeOut:Ljava/lang/Runnable;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkModeChangedInitIntent:Landroid/content/Intent;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$2;-><init>(Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mDataConnStateChangeHandler:Landroid/os/Handler;

    .line 95
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$3;-><init>(Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mHandleDataConnStateChangTimeOut:Ljava/lang/Runnable;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mHandleDataConnStateChangTimeOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mDataConnStateChangeHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 189
    const-string v1, "DataConnectionSettingButtonXEC"

    const-string v2, "activate()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    return-void
.end method

.method public deactivate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    const-string v1, "DataConnectionSettingButtonXEC"

    const-string v2, "deactivate()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 204
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "android.intent.action.NETWORK_MODE_INITIATE_CHANGE"

    const-string v4, "DataConnectionSettingButtonXEC"

    .line 124
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 125
    const-string v2, "DataConnectionSettingButtonXEC"

    const-string v2, "onAttachedToWindow() - entered"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v2, "DataConnectionSettingButtonXEC"

    const-string v2, "OnAttachedToWindow - simcard is present"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.NETWORK_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.NETWORK_MODE_INITIATE_CHANGE"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 133
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 134
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->setActivateStatus(I)V

    .line 136
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .line 137
    .local v1, value:Z
    if-eqz v1, :cond_0

    .line 138
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->setActivateStatus(I)V

    .line 140
    :cond_0
    const-string v2, "DataConnectionSettingButtonXEC"

    const-string v2, "OnAttachedWindow, calling updateIcons and updateResources"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->updateIcons()V

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->updateResources()V

    .line 143
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.NETWORK_MODE_INITIATE_CHANGE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mNetworkModeChangedInitIntent:Landroid/content/Intent;

    .line 144
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mNetworkModeChangedInitIntent:Landroid/content/Intent;

    const-string v3, "state"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 146
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 151
    const-string v0, "DataConnectionSettingButtonXEC"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public updateIcons()V
    .locals 6

    .prologue
    const-string v5, "DataConnectionSettingButtonXEC"

    .line 155
    const-string v3, "DataConnectionSettingButtonXEC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIcons( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 159
    const-string v3, "DataConnectionSettingButtonXEC"

    const-string v3, "updateIcons - no simcard, returning"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->setActivateStatus(I)V

    .line 182
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string v3, "DataConnectionSettingButtonXEC"

    const-string v3, "updateIcons - simcard is present"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, iconRes:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 167
    .local v2, rootView:Landroid/view/View;
    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 170
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->getActivateStatus()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 180
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 172
    :pswitch_0
    const v1, 0x7f02000f

    .line 174
    goto :goto_1

    .line 176
    :pswitch_1
    const v1, 0x7f02000e

    goto :goto_1

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 184
    const-string v0, "DataConnectionSettingButtonXEC"

    const-string v1, "updateResources"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->setText(I)V

    .line 186
    return-void
.end method
