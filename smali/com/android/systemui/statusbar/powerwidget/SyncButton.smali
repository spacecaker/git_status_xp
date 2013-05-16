.class public Lcom/android/systemui/statusbar/powerwidget/SyncButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "SyncButton.java"


# instance fields
.field private mSyncObserver:Landroid/content/SyncStatusObserver;

.field private mSyncObserverHandle:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    .line 18
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/SyncButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/SyncButton$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/SyncButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mSyncObserver:Landroid/content/SyncStatusObserver;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    .line 16
    const-string v0, "toggleSync"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private getBackgroundDataState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 95
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 97
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method private getSyncState(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->getBackgroundDataState(Landroid/content/Context;)Z

    move-result v0

    .line 102
    .local v0, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 103
    .local v1, sync:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 91
    const/4 v1, 0x1

    return v1
.end method

.method protected setupButton(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setupButton(Landroid/view/View;)V

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 33
    const-string v0, "SyncButton"

    const-string v1, "Unregistering sync state listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 37
    const-string v0, "SyncButton"

    const-string v1, "Registering sync state listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mSyncObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 55
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 57
    .local v1, connManager:Landroid/net/ConnectivityManager;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->getBackgroundDataState(Landroid/content/Context;)Z

    move-result v0

    .line 58
    .local v0, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    .line 63
    .local v2, sync:Z
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 64
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 65
    invoke-static {v4}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 69
    :cond_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 74
    :cond_1
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 75
    invoke-static {v4}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 80
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 81
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 83
    :cond_3
    return-void
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->getSyncState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const v0, 0x7f020092

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mIcon:I

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mState:I

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    const v0, 0x7f020091

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mIcon:I

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncButton;->mState:I

    goto :goto_0
.end method
