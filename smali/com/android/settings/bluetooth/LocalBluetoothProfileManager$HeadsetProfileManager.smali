.class Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;
.super Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.source "LocalBluetoothProfileManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothHeadset$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeadsetProfileManager"
.end annotation


# instance fields
.field private mDelayedConnectDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDelayedDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

.field private mService:Landroid/bluetooth/BluetoothHeadset;

.field private mUiHandler:Landroid/os/Handler;

.field private profileReady:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .locals 2
    .parameter "localManager"

    .prologue
    const/4 v1, 0x0

    .line 364
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 358
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mUiHandler:Landroid/os/Handler;

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->profileReady:Z

    .line 360
    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mDelayedConnectDevice:Landroid/bluetooth/BluetoothDevice;

    .line 361
    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mDelayedDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

    .line 365
    new-instance v0, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    .line 366
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mDelayedConnectDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mDelayedConnectDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mDelayedDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mDelayedDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const-string v2, "LocalBluetoothProfileManager"

    .line 447
    invoke-static {}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->isManagerReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    const-string v1, "LocalBluetoothProfileManager"

    const-string v1, "HeadsetProfileManager delaying connect, manager not ready"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mDelayedConnectDevice:Landroid/bluetooth/BluetoothDevice;

    .line 451
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mDelayedDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

    .line 452
    const/4 v1, 0x1

    .line 462
    :goto_0
    return v1

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 458
    .local v0, currDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 459
    const-string v1, "LocalBluetoothProfileManager"

    const-string v1, "disconnectHeadset"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    .line 462
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->connectHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public convertState(I)I
    .locals 1
    .parameter "headsetState"

    .prologue
    .line 542
    packed-switch p1, :pswitch_data_0

    .line 550
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 544
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 546
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 548
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const/16 v2, 0x64

    .line 469
    invoke-static {}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->isManagerReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "HeadsetProfileManager delaying disconnect, manager not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mDelayedConnectDevice:Landroid/bluetooth/BluetoothDevice;

    .line 473
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mDelayedDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

    .line 474
    const/4 v1, 0x1

    .line 485
    :goto_0
    return v1

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 478
    .local v0, currDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 480
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-le v1, v2, :cond_1

    .line 481
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1, v2}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 483
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->disconnectHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0

    .line 485
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 3
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
    .line 434
    const/4 v1, 0x0

    .line 435
    .local v1, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 436
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 437
    new-instance v1, Ljava/util/HashSet;

    .end local v1           #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 438
    .restart local v1       #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_0
    return-object v1
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 502
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 503
    .local v0, currentDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->convertState(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getSummary(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 512
    .local v0, connectionStatus:I
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    const v1, 0x7f080135

    .line 515
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
    .line 521
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 429
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->profileReady:Z

    return v0
.end method

.method public onServiceConnected()V
    .locals 5

    .prologue
    .line 369
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->profileReady:Z

    .line 372
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager$1;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager$1;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    invoke-static {}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->access$300()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 410
    invoke-static {}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->access$300()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 411
    .end local p0
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    invoke-interface {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_0

    .line 415
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;>;"
    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 418
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->profileReady:Z

    .line 419
    invoke-static {}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->access$300()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 420
    invoke-static {}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->access$300()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 421
    .end local p0
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    invoke-interface {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_0

    .line 425
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;>;"
    :cond_0
    return-void
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .parameter "device"
    .parameter "preferred"

    .prologue
    const/16 v1, 0x64

    .line 531
    if-eqz p2, :cond_1

    .line 532
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public shouldHostConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 496
    const/4 v0, 0x1

    return v0
.end method

.method public virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 491
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method
