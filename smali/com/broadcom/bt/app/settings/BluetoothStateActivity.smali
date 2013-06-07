.class public Lcom/broadcom/bt/app/settings/BluetoothStateActivity;
.super Landroid/app/Activity;
.source "BluetoothStateActivity.java"


# instance fields
.field private bluetoothState:I

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    new-instance v0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity$3;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity$3;-><init>(Lcom/broadcom/bt/app/settings/BluetoothStateActivity;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/settings/BluetoothStateActivity;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/settings/BluetoothStateActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->onBluetoothStateChanged(I)V

    return-void
.end method

.method private onBluetoothStateChanged(I)V
    .locals 3
    .parameter "bluetoothState"

    .prologue
    .line 105
    const-string v0, "BleutoothStateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnBluetoothStateChanged()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 108
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->setResult(I)V

    .line 109
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->finish()V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->setResult(I)V

    .line 112
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->finish()V

    goto :goto_0

    .line 113
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 114
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 115
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080148

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 117
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const-string v2, "BleutoothStateActivity"

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v0, "BleutoothStateActivity"

    const-string v0, "onCreate()"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->requestWindowFeature(I)Z

    .line 48
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 49
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->finish()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->bluetoothState:I

    .line 54
    iget v0, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->bluetoothState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 55
    const-string v0, "BleutoothStateActivity"

    const-string v0, "Bluetooth is Off"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080259

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080508

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080504

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/broadcom/bt/app/settings/BluetoothStateActivity$2;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity$2;-><init>(Lcom/broadcom/bt/app/settings/BluetoothStateActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080505

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/broadcom/bt/app/settings/BluetoothStateActivity$1;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity$1;-><init>(Lcom/broadcom/bt/app/settings/BluetoothStateActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    iget v0, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->bluetoothState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 72
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->setResult(I)V

    .line 73
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 90
    const-string v0, "BleutoothStateActivity"

    const-string v1, "OnDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 84
    const-string v0, "BleutoothStateActivity"

    const-string v1, "OnPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    return-void
.end method
