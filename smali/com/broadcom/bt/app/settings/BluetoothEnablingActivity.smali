.class public Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothEnablingActivity.java"


# instance fields
.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 109
    new-instance v0, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity$1;-><init>(Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 123
    new-instance v0, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity$2;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity$2;-><init>(Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    .local v0, contentView:Landroid/widget/TextView;
    const v2, 0x7f080527

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 74
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x108009b

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 75
    const v2, 0x7f080526

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 76
    invoke-direct {p0}, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 77
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->setupAlert()V

    .line 80
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 82
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 103
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 104
    const-string v0, "Failed to enable Bluetooth"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 94
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;->finish()V

    .line 98
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
