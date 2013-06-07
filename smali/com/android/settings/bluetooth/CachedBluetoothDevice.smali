.class public Lcom/android/settings/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private mBtClassDrawable:I

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAfterPairing:Z

.field private mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDialog:Landroid/app/AlertDialog;

.field private mIsConnecting:Z

.field private mIsConnectingErrorPossible:Z

.field private mIsPairing:Z

.field private mIsUnpairing:Z

.field private final mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mName:Ljava/lang/String;

.field private mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRssi:S

.field private mUpdateBtClassDrawable:Z

.field private mVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "context"
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const v0, 0x7f020026

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDialog:Landroid/app/AlertDialog;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    .line 98
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairing:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsUnpairing:Z

    .line 101
    new-instance v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;-><init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    .line 212
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 213
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 214
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use CachedBluetoothDevice without Bluetooth hardware"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iput-object p2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 221
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairing:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelDiscovery()V
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 173
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 176
    :cond_0
    return-void
.end method

.method private connectAllProfiles()V
    .locals 5

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v3

    if-nez v3, :cond_1

    .line 514
    :cond_0
    return-void

    .line 503
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 505
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 506
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnectableProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 507
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v3, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    .line 509
    .local v2, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 510
    invoke-direct {p0, p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnectConnected(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    .line 511
    invoke-direct {p0, p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    goto :goto_0
.end method

.method private connectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z
    .locals 5
    .parameter "cachedDevice"
    .parameter "profile"

    .prologue
    const/4 v3, 0x0

    const-string v4, "CachedBluetoothDevice"

    .line 542
    invoke-direct {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 555
    :goto_0
    return v2

    .line 544
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v2, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    .line 546
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 547
    .local v1, status:I
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    const-string v2, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command sent successfully:CONNECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v2, 0x1

    goto :goto_0

    .line 553
    :cond_1
    const-string v2, "CachedBluetoothDevice"

    const-string v2, "Failed to connect"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 555
    goto :goto_0
.end method

.method private connectWithoutResettingTimer()V
    .locals 5

    .prologue
    .line 461
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    if-nez v4, :cond_2

    .line 462
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    move-result v4

    if-nez v4, :cond_2

    .line 497
    :cond_1
    :goto_0
    return-void

    .line 471
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 473
    const/4 v1, 0x0

    .line 474
    .local v1, preferredProfiles:I
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 475
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnectableProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 476
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v4, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    .line 478
    .local v3, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 479
    add-int/lit8 v1, v1, 0x1

    .line 484
    sget-object v4, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    if-eq v2, v4, :cond_4

    sget-object v4, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    if-ne v2, v4, :cond_5

    .line 485
    :cond_4
    invoke-direct {p0, p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnectConnected(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    .line 488
    :cond_5
    invoke-direct {p0, p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    goto :goto_1

    .line 494
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v3           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_6
    if-nez v1, :cond_1

    .line 495
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectAllProfiles()V

    goto :goto_0
.end method

.method private describe(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Ljava/lang/String;
    .locals 3
    .parameter "cachedDevice"
    .parameter "profile"

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    if-eqz p2, :cond_0

    .line 160
    const-string v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private describe(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Ljava/lang/String;
    .locals 1
    .parameter "profile"

    .prologue
    .line 167
    invoke-direct {p0, p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private disconnectConnected(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V
    .locals 7
    .parameter "device"
    .parameter "profile"

    .prologue
    .line 527
    iget-object v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v6, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    .line 529
    .local v5, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 530
    .local v2, cachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectedDevices()Ljava/util/Set;

    move-result-object v3

    .line 531
    .local v3, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v3, :cond_1

    .line 539
    :cond_0
    return-void

    .line 532
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 533
    .local v0, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 535
    .local v1, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 536
    invoke-direct {p0, v1, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    goto :goto_0
.end method

.method private disconnectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z
    .locals 5
    .parameter "cachedDevice"
    .parameter "profile"

    .prologue
    .line 344
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v2, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    .line 346
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 357
    .local v1, status:I
    invoke-static {v1}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 368
    :goto_0
    return v2

    .line 360
    :cond_0
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    const-string v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command sent successfully:DISCONNECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v2, 0x1

    goto :goto_0

    .line 368
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private dispatchAttributesChanged()V
    .locals 4

    .prologue
    .line 1285
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 1286
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;

    .line 1287
    .local v0, callback:Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
    invoke-interface {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 1289
    .end local v0           #callback:Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1290
    return-void
.end method

.method private ensurePaired()Z
    .locals 2

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->pair()V

    .line 569
    const/4 v0, 0x0

    .line 571
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private fetchBtClass()V
    .locals 1

    .prologue
    .line 856
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 857
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 858
    return-void
.end method

.method private fetchName()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 685
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 689
    :cond_0
    return-void
.end method

.method private fillData()V
    .locals 1

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 650
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 651
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 655
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 656
    return-void
.end method

.method private getOneOffSummary()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 1046
    const/4 v0, 0x0

    .local v0, isA2dpConnected:Z
    const/4 v2, 0x0

    .local v2, isHeadsetConnected:Z
    const/4 v1, 0x0

    .line 1047
    .local v1, isConnecting:Z
    const/4 v3, 0x0

    .line 1049
    .local v3, isHidConnected:Z
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1050
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v5, v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    .line 1052
    .local v4, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-ne v5, v8, :cond_3

    move v1, v9

    .line 1054
    :goto_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 1057
    .end local v4           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1058
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v5, v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    .line 1060
    .restart local v4       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-ne v5, v8, :cond_4

    move v5, v9

    :goto_1
    or-int/2addr v1, v5

    .line 1062
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 1065
    .end local v4           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1066
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v5, v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    .line 1068
    .restart local v4       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-ne v5, v8, :cond_5

    move v5, v9

    :goto_2
    or-int/2addr v1, v5

    .line 1070
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 1073
    .end local v4           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_2
    if-eqz v1, :cond_6

    .line 1075
    invoke-static {v8}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getConnectionStatusSummary(I)I

    move-result v5

    .line 1088
    :goto_3
    return v5

    .restart local v4       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_3
    move v1, v7

    .line 1052
    goto :goto_0

    :cond_4
    move v5, v7

    .line 1060
    goto :goto_1

    :cond_5
    move v5, v7

    .line 1068
    goto :goto_2

    .line 1077
    .end local v4           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_6
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 1078
    const v5, 0x7f08012f

    goto :goto_3

    .line 1079
    :cond_7
    if-eqz v0, :cond_8

    .line 1080
    const v5, 0x7f08012d

    goto :goto_3

    .line 1081
    :cond_8
    if-eqz v2, :cond_9

    .line 1082
    const v5, 0x7f08012e

    goto :goto_3

    .line 1084
    :cond_9
    if-eqz v3, :cond_a

    .line 1085
    const v5, 0x7f080583

    goto :goto_3

    :cond_a
    move v5, v7

    .line 1088
    goto :goto_3
.end method

.method private isConnectableProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z
    .locals 1
    .parameter "profile"

    .prologue
    .line 1106
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateProfiles()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 861
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 862
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 908
    :goto_0
    return v1

    .line 864
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 865
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;Ljava/util/List;)V

    move v1, v2

    .line 908
    goto :goto_0
.end method


# virtual methods
.method public askDisconnect()V
    .locals 8

    .prologue
    .line 372
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    .line 373
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 420
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto :goto_0

    .line 390
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 392
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 394
    const v5, 0x7f08005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 396
    :cond_2
    const v5, 0x7f080051

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, message:Ljava/lang/String;
    new-instance v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$2;-><init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 414
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public compareTo(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I
    .locals 6
    .parameter "another"

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1315
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    sub-int v0, v1, v2

    .line 1316
    .local v0, comparison:I
    if-eqz v0, :cond_2

    move v1, v0

    .line 1332
    :goto_2
    return v1

    .end local v0           #comparison:I
    :cond_0
    move v1, v3

    .line 1315
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 1319
    .restart local v0       #comparison:I
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v5, :cond_3

    move v1, v4

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v5, :cond_4

    move v2, v4

    :goto_4
    sub-int v0, v1, v2

    .line 1321
    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v3

    .line 1319
    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_4

    .line 1324
    :cond_5
    iget-boolean v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v1, :cond_6

    move v1, v4

    :goto_5
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v2, :cond_7

    move v2, v4

    :goto_6
    sub-int v0, v1, v2

    .line 1325
    if-eqz v0, :cond_8

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v3

    .line 1324
    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_6

    .line 1328
    :cond_8
    iget-short v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int v0, v1, v2

    .line 1329
    if-eqz v0, :cond_9

    move v1, v0

    goto :goto_2

    .line 1332
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public connect()V
    .locals 2

    .prologue
    .line 434
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->cancelDiscovery()V

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    .line 447
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer()V

    goto :goto_0
.end method

.method public connect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 522
    invoke-direct {p0, p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnectConnected(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    .line 523
    invoke-direct {p0, p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    .line 524
    return-void
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 330
    const-string v2, "CachedBluetoothDevice"

    const-string v3, "disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->cancelDiscovery()V

    .line 334
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 335
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    goto :goto_0

    .line 337
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    :cond_0
    return-void
.end method

.method public disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 340
    invoke-direct {p0, p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    .line 341
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 1299
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    .line 1300
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 1303
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDialog:Landroid/app/AlertDialog;

    .line 429
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 430
    return-void
.end method

.method public getBondState()I
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getBtClassDrawable()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f02002d

    const v3, 0x7f020028

    const v2, 0x7f020027

    .line 752
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    if-nez v0, :cond_0

    .line 753
    iget v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 847
    :goto_0
    return v0

    .line 755
    :cond_0
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 758
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 799
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 800
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->PRINTER:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    iput v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    move v0, v4

    .line 802
    goto :goto_0

    .line 761
    :sswitch_0
    const v0, 0x7f02002b

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 762
    const v0, 0x7f02002b

    goto :goto_0

    .line 765
    :sswitch_1
    const v0, 0x7f020025

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 766
    const v0, 0x7f020025

    goto :goto_0

    .line 769
    :sswitch_2
    iput v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    move v0, v4

    .line 770
    goto :goto_0

    .line 774
    :cond_1
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "mBtClass is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 803
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 804
    iput v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    move v0, v2

    .line 805
    goto :goto_0

    .line 806
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 807
    iput v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    move v0, v3

    .line 808
    goto :goto_0

    .line 811
    :cond_4
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Device profile number = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v0, :cond_8

    .line 816
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 817
    iput v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    move v0, v2

    .line 818
    goto :goto_0

    .line 820
    :cond_6
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 821
    iput v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    move v0, v3

    .line 822
    goto/16 :goto_0

    .line 825
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    const/16 v1, 0x500

    if-ne v0, v1, :cond_8

    .line 826
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 837
    const v0, 0x7f020026

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 840
    :goto_2
    iget v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto/16 :goto_0

    .line 828
    :sswitch_3
    const v0, 0x7f020029

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto :goto_2

    .line 831
    :sswitch_4
    const v0, 0x7f02002c

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto :goto_2

    .line 834
    :sswitch_5
    const v0, 0x7f02002a

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto :goto_2

    .line 845
    :cond_8
    iput-boolean v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 846
    const v0, 0x7f020026

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 847
    iget v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto/16 :goto_0

    .line 759
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x600 -> :sswitch_2
    .end sparse-switch

    .line 826
    :sswitch_data_1
    .sparse-switch
        0x540 -> :sswitch_3
        0x580 -> :sswitch_4
        0x5c0 -> :sswitch_5
    .end sparse-switch
.end method

.method public getConnectableProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1093
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1094
    .local v0, connectableProfiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;>;"
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 1095
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnectableProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1096
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1099
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    :cond_1
    return-object v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()I
    .locals 6

    .prologue
    .line 1019
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getOneOffSummary()I

    move-result v2

    .line 1020
    .local v2, oneOffSummary:I
    if-eqz v2, :cond_0

    move v5, v2

    .line 1036
    :goto_0
    return v5

    .line 1024
    :cond_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 1025
    .local v3, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v5, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    .line 1027
    .local v4, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 1029
    .local v0, connectionStatus:I
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/4 v5, 0x5

    if-ne v0, v5, :cond_1

    .line 1032
    :cond_2
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getConnectionStatusSummary(I)I

    move-result v5

    goto :goto_0

    .line 1036
    .end local v0           #connectionStatus:I
    .end local v3           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v4           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v5

    invoke-static {v5}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getPairingStatusSummary(I)I

    move-result v5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBusy()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 735
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 736
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v3, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 738
    .local v2, status:I
    invoke-static {v2}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusBusy(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    .line 747
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v2           #status:I
    :goto_0
    return v3

    .line 743
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    move v3, v5

    .line 744
    goto :goto_0

    .line 747
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 5

    .prologue
    .line 723
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 724
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v3, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 726
    .local v2, status:I
    invoke-static {v2}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 727
    const/4 v3, 0x1

    .line 731
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v2           #status:I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isHid()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    const/16 v1, 0x500

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 255
    goto :goto_0

    .line 257
    :cond_1
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "mBtClass is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 259
    goto :goto_0
.end method

.method public isHidMouse()Z
    .locals 2

    .prologue
    .line 266
    iget v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    const v1, 0x7f02002c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 696
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    return v0
.end method

.method onBondingDockConnect()V
    .locals 0

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect()V

    .line 454
    return-void
.end method

.method public onBondingStateChanged(I)V
    .locals 5
    .parameter "bondState"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    const-string v4, "CachedBluetoothDevice"

    .line 954
    const-string v0, "CachedBluetoothDevice"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBondingStateChanged: bondState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsPairing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsUnpairing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsUnpairing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConnectAfterPairing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsConnecting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    if-ne p1, v3, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 962
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 963
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    .line 966
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 979
    const/16 v0, 0xc

    if-ne p1, v0, :cond_3

    .line 980
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairing:Z

    .line 981
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsUnpairing:Z

    .line 982
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 983
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 984
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    .line 1007
    :cond_1
    :goto_0
    return-void

    .line 985
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    if-eqz v0, :cond_1

    .line 986
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHidMouse()Z

    move-result v0

    if-nez v0, :cond_1

    .line 987
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 988
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect()V

    goto :goto_0

    .line 993
    :cond_3
    if-ne p1, v3, :cond_1

    .line 994
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairing:Z

    .line 995
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsUnpairing:Z

    if-eqz v0, :cond_4

    .line 996
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsUnpairing:Z

    goto :goto_0

    .line 1002
    :cond_4
    const-string v0, "CachedBluetoothDevice"

    const-string v0, "onBondingStateChanged: Unpaired but not due to unpairing, unpair anyway to clean up..."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    goto :goto_0
.end method

.method public onClicked()V
    .locals 6

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x1

    const-string v5, "CachedBluetoothDevice"

    .line 292
    const-string v2, "CachedBluetoothDevice"

    const-string v2, "############ onClicked"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->askDisconnect()V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 300
    .local v0, bondState:I
    if-ne v0, v4, :cond_6

    .line 301
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->shouldHostConnect()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect()V

    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHidMouse()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    const v1, 0x7f08058b

    .line 312
    .local v1, resId:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 310
    .end local v1           #resId:I
    :cond_3
    const v1, 0x7f08058c

    .restart local v1       #resId:I
    goto :goto_1

    .line 315
    .end local v1           #resId:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect()V

    goto :goto_0

    .line 318
    :cond_5
    const-string v2, "CachedBluetoothDevice"

    const-string v2, "Bluetooth state is on"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 320
    :cond_6
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 321
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->pair()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v2, 0x1000

    .line 1207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    .line 1208
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1270
    :goto_0
    return-void

    .line 1214
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    goto :goto_0

    .line 1217
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto :goto_0

    .line 1227
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1228
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->pair()V

    goto :goto_0

    .line 1230
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect()V

    goto :goto_0

    .line 1236
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    goto :goto_0

    .line 1240
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1242
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1243
    if-nez v1, :cond_2

    .line 1245
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1246
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1248
    :cond_2
    const-class v2, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1249
    const-string v2, "device"

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1250
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1254
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->cancelDiscovery()V

    .line 1256
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1257
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1258
    if-nez v1, :cond_3

    .line 1260
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1261
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1263
    :cond_3
    const-class v2, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1264
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1265
    const-string v2, "android.bluetooth.device.extra.NAME"

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1266
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1208
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 9
    .parameter "menu"

    .prologue
    const v8, 0x7f080123

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1111
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1199
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    .line 1154
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1156
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 1157
    const v3, 0x7f080125

    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1159
    :cond_2
    const/4 v0, 0x0

    .line 1160
    .local v0, hasConnectableProfiles:Z
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 1161
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnectableProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1162
    const/4 v0, 0x1

    .line 1167
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1168
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1169
    const/4 v3, 0x3

    const v4, 0x7f080124

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1172
    :cond_5
    const v3, 0x7f080127

    invoke-interface {p1, v5, v7, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1187
    :goto_1
    if-eqz v0, :cond_0

    .line 1188
    const/4 v3, 0x5

    const v4, 0x7f080128

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1175
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1176
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->shouldHostConnect()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1177
    invoke-interface {p1, v5, v6, v5, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1183
    :cond_7
    :goto_2
    const v3, 0x7f080126

    invoke-interface {p1, v5, v7, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 1180
    :cond_8
    if-eqz v0, :cond_7

    .line 1181
    invoke-interface {p1, v5, v6, v5, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V
    .locals 6
    .parameter "profile"
    .parameter "newProfileState"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 181
    const-string v1, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProfileStateChanged: profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newProfileState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v1, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->convertState(I)I

    move-result v0

    .line 188
    .local v0, newState:I
    if-ne v0, v4, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 196
    :cond_0
    if-eq v0, v4, :cond_1

    if-ne v0, v5, :cond_2

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHidMouse()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    if-eqz v1, :cond_2

    .line 199
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 200
    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 209
    :cond_2
    return-void
.end method

.method public onUuidChanged()V
    .locals 2

    .prologue
    .line 924
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "onUuidChanged..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 945
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnecting:Z

    .line 947
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer()V

    .line 949
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 950
    return-void
.end method

.method public pair()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 577
    const-string v2, "CachedBluetoothDevice"

    const-string v3, "pair"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsUnpairing:Z

    .line 589
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 600
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 602
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 603
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 605
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 606
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairing:Z

    .line 617
    .end local v1           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v2

    if-nez v2, :cond_1

    .line 611
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const v4, 0x7f080118

    const v5, 0x7f080119

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->showError(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 616
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 693
    return-void
.end method

.method public refreshBtClass()V
    .locals 0

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 917
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 918
    return-void
.end method

.method public refreshName()V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 679
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 680
    return-void
.end method

.method public registerCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 1274
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    monitor-exit v0

    .line 1276
    return-void

    .line 1275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 1
    .parameter "btClass"

    .prologue
    .line 1010
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 1011
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 1012
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 1013
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 1015
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 673
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 675
    :cond_0
    return-void

    .line 671
    :cond_1
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method setRssi(S)V
    .locals 1
    .parameter "rssi"

    .prologue
    .line 711
    iget-short v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_0

    .line 712
    iput-short p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 713
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 715
    :cond_0
    return-void
.end method

.method setVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 701
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 702
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 704
    :cond_0
    return-void
.end method

.method public shouldHostConnect()Z
    .locals 3

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    .line 275
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->shouldHostConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unpair()V
    .locals 6

    .prologue
    const-string v5, "CachedBluetoothDevice"

    .line 620
    const-string v3, "CachedBluetoothDevice"

    const-string v3, "unpair"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 625
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsUnpairing:Z

    .line 626
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    .line 628
    .local v1, state:I
    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    .line 629
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 632
    :cond_0
    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    .line 633
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 634
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 635
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v2

    .line 636
    .local v2, successful:Z
    if-eqz v2, :cond_1

    .line 638
    const-string v3, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .end local v0           #dev:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #successful:Z
    :cond_1
    return-void
.end method

.method public unregisterCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 1280
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1281
    monitor-exit v0

    .line 1282
    return-void

    .line 1281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
