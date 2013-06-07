.class Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;
.super Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HidProfileManager"
.end annotation


# instance fields
.field private mService:Lcom/broadcom/bt/service/hid/BluetoothHID;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .locals 2
    .parameter "localManager"

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 649
    new-instance v0, Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/hid/BluetoothHID;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    .line 650
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public convertState(I)I
    .locals 1
    .parameter "state"

    .prologue
    const/4 v0, 0x4

    .line 726
    packed-switch p1, :pswitch_data_0

    .line 738
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 728
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 730
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 734
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 726
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    const/16 v1, 0x64

    .line 665
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-le v0, v1, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1, v1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    .line 669
    const/4 v0, 0x1

    return v0
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getConnectedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->convertState(I)I

    move-result v0

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getSummary(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 696
    .local v0, connectionStatus:I
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    const v1, 0x7f080584

    .line 699
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getConnectionStatusSummary(I)I

    move-result v1

    goto :goto_0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x1

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .parameter "device"
    .parameter "preferred"

    .prologue
    const/16 v1, 0x64

    .line 715
    if-eqz p2, :cond_1

    .line 716
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1, v1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public shouldHostConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->shouldHostConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    const/16 v1, 0x64

    .line 675
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-le v0, v1, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1, v1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HidProfileManager;->mService:Lcom/broadcom/bt/service/hid/BluetoothHID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;)V

    .line 679
    const/4 v0, 0x1

    return v0
.end method
