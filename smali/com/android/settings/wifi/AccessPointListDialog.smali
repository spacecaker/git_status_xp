.class public Lcom/android/settings/wifi/AccessPointListDialog;
.super Landroid/preference/PreferenceActivity;
.source "AccessPointListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AccessPointListDialog$Scanner;
    }
.end annotation


# instance fields
.field private mAccessPoints:Lcom/android/settings/ProgressCategory;

.field private mAddNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mKeyStoreNetworkId:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastPriority:I

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetNetworks:Z

.field private final mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

.field private mSelected:Lcom/android/settings/wifi/AccessPoint;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/android/settings/wifi/AccessPointListDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AccessPointListDialog$1;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    new-instance v0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;Lcom/android/settings/wifi/AccessPointListDialog$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/AccessPointListDialog;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointListDialog;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method private connect(I)V
    .locals 8
    .parameter "networkId"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 369
    if-ne p1, v6, :cond_0

    .line 398
    :goto_0
    return-void

    .line 374
    :cond_0
    iget v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    const v4, 0xf4240

    if-le v3, v4, :cond_3

    .line 375
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    sub-int v2, v3, v5

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 376
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3, v2}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 377
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v6, :cond_1

    .line 378
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 379
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 380
    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 381
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 375
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 384
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_2
    iput v7, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    .line 388
    .end local v2           #i:I
    :cond_3
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 389
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    iput p1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 390
    iget v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 391
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 392
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->saveNetworks()V

    .line 395
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p1, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 396
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 397
    iput-boolean v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    goto :goto_0
.end method

.method private enableNetworks()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 401
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 402
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2, v1}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 403
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 404
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 401
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 407
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    .line 408
    return-void
.end method

.method private forget(I)V
    .locals 1
    .parameter "networkId"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 365
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->saveNetworks()V

    .line 366
    return-void
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 473
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 475
    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->updateWifiState(I)V

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 478
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    goto :goto_0

    .line 479
    :cond_2
    const-string v3, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 480
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 481
    iput-object v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 483
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    goto :goto_0

    .line 484
    :cond_4
    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 485
    const-string v3, "newState"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SupplicantState;

    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 487
    :cond_5
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 488
    const-string v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    iput-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 489
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 490
    .local v2, state:Landroid/net/NetworkInfo$DetailedState;
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 492
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_0

    .line 493
    const-string v3, "AccessPointListDialog"

    const-string v4, "Network is connected, activity will finish"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, msg:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->finish()V

    goto :goto_0

    .line 498
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #state:Landroid/net/NetworkInfo$DetailedState;
    :cond_6
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 499
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/AccessPointListDialog;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    const/4 v1, 0x1

    .line 354
    invoke-static {p1}, Lcom/android/settings/wifi/WifiDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 356
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    .line 357
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    move v0, v1

    .line 360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetworks()V
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->enableNetworks()V

    .line 413
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 414
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 415
    return-void
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 342
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 343
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 344
    return-void
.end method

.method private updateAccessPoints()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const-string v12, "AccessPointListDialog"

    .line 418
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v1, accessPoints:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 421
    .local v3, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_3

    .line 422
    iput v11, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    .line 423
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 424
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v10, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    if-le v9, v10, :cond_0

    .line 425
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    .line 429
    :cond_0
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v9, :cond_2

    .line 430
    const/4 v9, 0x2

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 435
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 436
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v10, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v9, v10}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 437
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 431
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_2
    iget-boolean v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    if-eqz v9, :cond_1

    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 432
    iput v11, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    .line 441
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_3
    const-string v9, "AccessPointListDialog"

    const-string v9, "updateAccessPoints(), WifiConfigureation list updated"

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    .line 444
    .local v8, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v8, :cond_7

    .line 445
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 447
    .local v7, result:Landroid/net/wifi/ScanResult;
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v10, "[IBSS]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 452
    const/4 v4, 0x0

    .line 453
    .local v4, found:Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 454
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, v7}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 455
    const/4 v4, 0x1

    goto :goto_3

    .line 458
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_6
    if-nez v4, :cond_4

    .line 459
    new-instance v9, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v9, p0, v7}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 463
    .end local v4           #found:Z
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #result:Landroid/net/wifi/ScanResult;
    :cond_7
    const-string v9, "AccessPointListDialog"

    const-string v9, "updateAccessPoints(), ScanResult list updated"

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 466
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9, v11}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 467
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 468
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 470
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_8
    return-void
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 505
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_3

    .line 511
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 516
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 517
    if-eqz p1, :cond_2

    .line 518
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 521
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_4

    .line 522
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 521
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 513
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->resume()V

    goto :goto_1

    .line 525
    .restart local v0       #i:I
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v1, :cond_5

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v1, :cond_5

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 527
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 528
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->enableNetworks()V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 533
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->resume()V

    .line 535
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 540
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 538
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 300
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 302
    .local v1, forgetable:Z
    :goto_0
    const/4 v3, -0x3

    if-ne p2, v3, :cond_2

    if-eqz v1, :cond_2

    .line 303
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->forget(I)V

    .line 305
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3, v4}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 336
    :cond_0
    :goto_1
    return-void

    .end local v1           #forgetable:Z
    :cond_1
    move v1, v5

    .line 300
    goto :goto_0

    .line 306
    .restart local v1       #forgetable:Z
    :cond_2
    if-ne p2, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v3, :cond_0

    .line 307
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 309
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_3

    .line 310
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 311
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    goto :goto_1

    .line 313
    :cond_3
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v3, v4, :cond_4

    .line 314
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    .line 315
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 316
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->saveNetworks()V

    goto :goto_1

    .line 319
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 321
    .local v2, networkId:I
    if-ne v2, v4, :cond_5

    .line 322
    const v3, 0x7f0804a8

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 325
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 326
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 327
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v3, v3, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-nez v3, :cond_6

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 328
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->saveNetworks()V

    .line 329
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    goto :goto_1

    .line 331
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const v2, 0x7f030053

    const-string v4, "onChanged() finish"

    const-string v3, "AccessPointListDialog"

    .line 143
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 145
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 146
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->setContentView(I)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->registerForContextMenu(Landroid/view/View;)V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 150
    const-string v0, "AccessPointListDialog"

    const-string v0, "onChanged() finish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 153
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->setContentView(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->registerForContextMenu(Landroid/view/View;)V

    .line 156
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 157
    const-string v0, "AccessPointListDialog"

    const-string v0, "onChanged() finish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_1
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 248
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-nez v2, :cond_0

    .line 249
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 276
    :goto_0
    return v2

    .line 251
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 276
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 253
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 254
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    :cond_1
    :goto_1
    move v2, v4

    .line 268
    goto :goto_0

    .line 257
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v2, :cond_3

    .line 259
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 260
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 261
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 262
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 263
    .local v1, networkId:I
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 264
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    goto :goto_1

    .line 266
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #networkId:I
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2, v5}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_1

    .line 270
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->forget(I)V

    move v2, v4

    .line 271
    goto :goto_0

    .line 273
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    move v2, v4

    .line 274
    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 125
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 126
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 128
    const v1, 0x7f030053

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->setContentView(I)V

    .line 130
    const v1, 0x7f04002d

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->addPreferencesFromResource(I)V

    .line 132
    const-string v1, "access_points"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ProgressCategory;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    .line 133
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setOrderingAsAdded(Z)V

    .line 134
    const-string v1, "add_network"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAddNetwork:Landroid/preference/Preference;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->registerForContextMenu(Landroid/view/View;)V

    .line 137
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 138
    const-string v1, "AccessPointListDialog"

    const-string v2, "onCreate() finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 224
    instance-of v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 228
    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_1

    .line 229
    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    .end local v2           #preference:Landroid/preference/Preference;
    iput-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 230
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v3

    if-eq v3, v6, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-nez v3, :cond_2

    move v0, v7

    .line 231
    .local v0, connectable:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v6, :cond_3

    move v1, v7

    .line 232
    .local v1, forgetable:Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 233
    if-eqz v0, :cond_0

    .line 234
    const/4 v3, 0x3

    const v4, 0x7f080153

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 236
    :cond_0
    if-eqz v1, :cond_1

    .line 237
    const/4 v3, 0x4

    const v4, 0x7f080154

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 238
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_1

    .line 239
    const/4 v3, 0x5

    const v4, 0x7f080155

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 244
    .end local v0           #connectable:Z
    .end local v1           #forgetable:Z
    :cond_1
    return-void

    :cond_2
    move v0, v5

    .line 230
    goto :goto_0

    .restart local v0       #connectable:Z
    :cond_3
    move v1, v5

    .line 231
    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-ne p1, v0, :cond_0

    .line 348
    const-string v0, "AccessPointListDialog"

    const-string v1, "onDismiss(), dismiss mDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 351
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 184
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 188
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    if-eqz v0, :cond_2

    .line 189
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->enableNetworks()V

    .line 191
    :cond_2
    const-string v0, "AccessPointListDialog"

    const-string v1, "onPause() finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 281
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 282
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 283
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    :goto_0
    move v0, v3

    .line 296
    :goto_1
    return v0

    .line 284
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAddNetwork:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 285
    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 286
    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_notification_on"

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_2

    .line 294
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 163
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 164
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    iget v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    if-eq v0, v2, :cond_1

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 169
    iget v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    .line 171
    :cond_1
    iput v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    .line 172
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 173
    const-string v0, "AccessPointListDialog"

    const-string v1, "onResume() finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method
