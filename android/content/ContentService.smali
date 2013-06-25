.class public final Landroid/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentService$ObserverCall;,
        Landroid/content/ContentService$ObserverNode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Landroid/content/ContentService$ObserverNode;

.field private mSyncManager:Landroid/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 44
    new-instance v0, Landroid/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 95
    iput-object p1, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    .line 96
    iput-boolean p2, p0, Landroid/content/ContentService;->mFactoryTest:Z

    .line 97
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    .line 98
    return-void
.end method

.method private getSyncManager()Landroid/content/SyncManager;
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Landroid/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/SyncManager;

    iget-object v2, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Landroid/content/ContentService;->mFactoryTest:Z

    invoke-direct {v1, v2, v3}, Landroid/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    monitor-exit v0

    return-object v1

    .line 53
    :catch_0
    move-exception v1

    .line 54
    const-string v2, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static main(Landroid/content/Context;Z)Landroid/content/IContentService;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 461
    new-instance v0, Landroid/content/ContentService;

    invoke-direct {v0, p0, p1}, Landroid/content/ContentService;-><init>(Landroid/content/Context;Z)V

    .line 462
    const-string v1, "content"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 463
    return-object v0
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    .line 281
    const-string v2, "no permission to write the sync settings"

    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v6

    .line 284
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-static {v6, v7}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 289
    return-void

    .line 286
    :catchall_0
    move-exception v0

    .line 287
    invoke-static {v6, v7}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 288
    throw v0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 437
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 439
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 440
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 441
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 446
    return-void

    .line 443
    :catchall_0
    move-exception v2

    .line 444
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 445
    throw v2
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 221
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 222
    if-eqz v2, :cond_0

    .line 223
    invoke-virtual {v2, p1, p2}, Landroid/content/SyncManager;->clearScheduledSyncOperations(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2, p1, p2}, Landroid/content/SyncManager;->cancelActiveSync(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 229
    return-void

    .line 226
    :catchall_0
    move-exception v2

    .line 227
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 228
    throw v2
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    .line 63
    const-string v2, "caller doesn\'t have the DUMP permission"

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 69
    :try_start_1
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    if-nez v2, :cond_0

    .line 70
    const-string v2, "No SyncManager created!  (Disk full?)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :goto_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    monitor-exit p0

    return-void

    .line 72
    :cond_0
    :try_start_3
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v2

    .line 75
    :try_start_4
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 76
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 62
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentSync()Landroid/content/SyncInfo;
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    .line 392
    const-string v2, "no permission to read the sync stats"

    .line 391
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 395
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 396
    if-eqz v2, :cond_0

    .line 397
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncStorageEngine;->getCurrentSync()Landroid/content/SyncInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 400
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    move-object v0, v2

    .line 402
    :goto_0
    return-object v0

    .line 399
    :catchall_0
    move-exception v2

    .line 400
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 401
    throw v2

    .line 400
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 402
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    .line 316
    const-string v2, "no permission to read the sync settings"

    .line 315
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 319
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 320
    if-eqz v2, :cond_0

    .line 321
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 325
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    move v0, v2

    .line 327
    :goto_0
    return v0

    .line 324
    :catchall_0
    move-exception v2

    .line 325
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 326
    throw v2

    .line 325
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 327
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMasterSyncAutomatically()Z
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    .line 347
    const-string v2, "no permission to read the sync settings"

    .line 346
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 350
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 351
    if-eqz v2, :cond_0

    .line 352
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 355
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    move v0, v2

    .line 357
    :goto_0
    return v0

    .line 354
    :catchall_0
    move-exception v2

    .line 355
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 356
    throw v2

    .line 355
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 357
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    .line 304
    const-string v2, "no permission to read the sync settings"

    .line 303
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 307
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/SyncStorageEngine;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 310
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 307
    return-object v2

    .line 309
    :catchall_0
    move-exception v2

    .line 310
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 311
    throw v2
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 3

    .prologue
    .line 238
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 240
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 243
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 241
    return-object v2

    .line 242
    :catchall_0
    move-exception v2

    .line 243
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 244
    throw v2
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    .line 249
    const-string v2, "no permission to read the sync settings"

    .line 248
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 252
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 253
    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 258
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    move v0, v2

    .line 260
    :goto_0
    return v0

    .line 257
    :catchall_0
    move-exception v2

    .line 258
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 259
    throw v2

    .line 258
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 260
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    .line 407
    const-string v2, "no permission to read the sync stats"

    .line 406
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 410
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 411
    if-eqz v2, :cond_0

    .line 412
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/SyncStorageEngine;->getStatusByAccountAndAuthority(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 416
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    move-object v0, v2

    .line 418
    :goto_0
    return-object v0

    .line 415
    :catchall_0
    move-exception v2

    .line 416
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 417
    throw v2

    .line 416
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 418
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 375
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    .line 376
    const-string v2, "no permission to read the sync stats"

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 379
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 380
    if-eqz v2, :cond_0

    .line 381
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/SyncStorageEngine;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 385
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    move v0, v2

    .line 387
    :goto_0
    return v0

    .line 384
    :catchall_0
    move-exception v2

    .line 385
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 386
    throw v2

    .line 385
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 387
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    .line 423
    const-string v2, "no permission to read the sync stats"

    .line 422
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 426
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 427
    if-eqz v2, :cond_0

    .line 428
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/SyncStorageEngine;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 431
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    move v0, v2

    .line 433
    :goto_0
    return v0

    .line 430
    :catchall_0
    move-exception v2

    .line 431
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 432
    throw v2

    .line 431
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 433
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    const-string v2, "ContentService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    const-string v2, "ContentService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Notifying update of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from observer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 126
    const-string v4, ", syncToNetwork "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v8

    .line 132
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v10, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    :try_start_1
    iget-object v2, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    const/4 v4, 0x0

    move-object v3, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    .line 133
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :try_start_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 138
    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_2

    .line 164
    if-eqz p4, :cond_1

    .line 165
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 166
    if-eqz v2, :cond_1

    .line 167
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    :cond_1
    invoke-static {v8, v9}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 173
    return-void

    .line 133
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 170
    :catchall_1
    move-exception v2

    .line 171
    invoke-static {v8, v9}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 172
    throw v2

    .line 139
    :cond_2
    :try_start_5
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ContentService$ObserverCall;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 141
    :try_start_6
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object v4, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/content/ContentService$ObserverCall;->mSelfNotify:Z

    move v5, v0

    invoke-interface {v4, v5}, Landroid/database/IContentObserver;->onChange(Z)V

    .line 142
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object v4, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/content/ContentService$ObserverCall;->mSelfNotify:Z

    move v5, v0

    invoke-interface {v4, p1, v5}, Landroid/database/IContentObserver;->onChangeUri(Landroid/net/Uri;Z)V

    .line 143
    const-string v4, "ContentService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 144
    const-string v4, "ContentService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Notified "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "update at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 138
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v4

    :try_start_7
    iget-object v4, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 148
    :try_start_8
    const-string v5, "ContentService"

    const-string v6, "Found dead observer, removing"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 151
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/ContentService$ObserverCall;->mNode:Landroid/content/ContentService$ObserverNode;

    move-object v6, v0

    #getter for: Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/content/ContentService$ObserverNode;->access$0(Landroid/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    move-result-object v6

    .line 152
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 153
    const/4 v11, 0x0

    move v13, v11

    move v11, v10

    move v10, v13

    :goto_2
    if-lt v10, v11, :cond_4

    .line 147
    monitor-exit v4

    goto :goto_1

    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 154
    :cond_4
    :try_start_a
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .line 155
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    move-object v12, v0

    invoke-interface {v12}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    if-ne v12, v5, :cond_5

    .line 156
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 157
    add-int/lit8 v10, v10, -0x1

    .line 158
    add-int/lit8 v11, v11, -0x1

    .line 153
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IContentService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 84
    :catch_0
    move-exception v0

    .line 87
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 88
    const-string v1, "ContentService"

    const-string v2, "Content Service Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :cond_0
    throw v0
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid uri and observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    iget-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    iget-object v2, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v1, p1, p3, p2, v2}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;)V

    .line 105
    monitor-exit v0

    .line 110
    return-void

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    .line 293
    const-string v2, "no permission to write the sync settings"

    .line 292
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 296
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/content/SyncStorageEngine;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 300
    return-void

    .line 297
    :catchall_0
    move-exception v2

    .line 298
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 299
    throw v2
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 3
    .parameter

    .prologue
    .line 449
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 451
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 452
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 453
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 458
    return-void

    .line 455
    :catchall_0
    move-exception v2

    .line 456
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 457
    throw v2
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-static {p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 198
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v7

    .line 200
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    const-wide/16 v4, 0x0

    .line 203
    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 202
    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_0
    invoke-static {v7, v8}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 208
    return-void

    .line 205
    :catchall_0
    move-exception v0

    .line 206
    invoke-static {v7, v8}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 207
    throw v0
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    .line 332
    const-string v2, "no permission to write the sync settings"

    .line 331
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 335
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 336
    if-eqz v2, :cond_0

    .line 337
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 343
    return-void

    .line 340
    :catchall_0
    move-exception v2

    .line 341
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 342
    throw v2
.end method

.method public setMasterSyncAutomatically(Z)V
    .locals 3
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    .line 362
    const-string v2, "no permission to write the sync settings"

    .line 361
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 365
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 366
    if-eqz v2, :cond_0

    .line 367
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/SyncStorageEngine;->setMasterSyncAutomatically(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 372
    return-void

    .line 369
    :catchall_0
    move-exception v2

    .line 370
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 371
    throw v2
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    .line 265
    const-string v2, "no permission to write the sync settings"

    .line 264
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 268
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 269
    if-eqz v2, :cond_0

    .line 270
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 276
    return-void

    .line 273
    :catchall_0
    move-exception v2

    .line 274
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 275
    throw v2
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v1, p1}, Landroid/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 116
    monitor-exit v0

    .line 120
    return-void

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
