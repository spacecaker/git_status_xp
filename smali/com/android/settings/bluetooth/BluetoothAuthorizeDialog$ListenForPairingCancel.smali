.class Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAuthorizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenForPairingCancel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;-><init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 281
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "broadcom.android.bluetooth.intent.action.AGENT_CANCEL_USER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    :cond_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 285
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->access$100(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    #calls: Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onDecline()V
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->access$200(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V

    .line 289
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    #calls: Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->access$300(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V

    .line 296
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    :goto_0
    return-void

    .line 294
    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    #calls: Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->access$300(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V

    goto :goto_0
.end method
