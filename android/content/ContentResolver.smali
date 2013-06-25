.class public abstract Landroid/content/ContentResolver;
.super Ljava/lang/Object;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentResolver$CursorWrapperInner;,
        Landroid/content/ContentResolver$OpenResourceIdResult;,
        Landroid/content/ContentResolver$ParcelFileDescriptorInner;
    }
.end annotation


# static fields
.field public static final CONTENT_SERVICE_NAME:Ljava/lang/String; = "content"

.field public static final CURSOR_DIR_BASE_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir"

.field public static final CURSOR_ITEM_BASE_TYPE:Ljava/lang/String; = "vnd.android.cursor.item"

.field public static final SCHEME_ANDROID_RESOURCE:Ljava/lang/String; = "android.resource"

.field public static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field public static final SCHEME_FILE:Ljava/lang/String; = "file"

.field private static final SLOW_THRESHOLD_MILLIS:I = 0x1f4

.field public static final SYNC_ERROR_AUTHENTICATION:I = 0x2

.field public static final SYNC_ERROR_CONFLICT:I = 0x5

.field public static final SYNC_ERROR_INTERNAL:I = 0x8

.field public static final SYNC_ERROR_IO:I = 0x3

.field public static final SYNC_ERROR_PARSE:I = 0x4

.field public static final SYNC_ERROR_SYNC_ALREADY_IN_PROGRESS:I = 0x1

.field public static final SYNC_ERROR_TOO_MANY_DELETIONS:I = 0x6

.field public static final SYNC_ERROR_TOO_MANY_RETRIES:I = 0x7

.field public static final SYNC_EXTRAS_ACCOUNT:Ljava/lang/String; = "account"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNC_EXTRAS_DISCARD_LOCAL_DELETIONS:Ljava/lang/String; = "discard_deletions"

.field public static final SYNC_EXTRAS_DO_NOT_RETRY:Ljava/lang/String; = "do_not_retry"

.field public static final SYNC_EXTRAS_EXPEDITED:Ljava/lang/String; = "expedited"

.field public static final SYNC_EXTRAS_FORCE:Ljava/lang/String; = "force"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNC_EXTRAS_IGNORE_BACKOFF:Ljava/lang/String; = "ignore_backoff"

.field public static final SYNC_EXTRAS_IGNORE_SETTINGS:Ljava/lang/String; = "ignore_settings"

.field public static final SYNC_EXTRAS_INITIALIZE:Ljava/lang/String; = "initialize"

.field public static final SYNC_EXTRAS_MANUAL:Ljava/lang/String; = "force"

.field public static final SYNC_EXTRAS_OVERRIDE_TOO_MANY_DELETIONS:Ljava/lang/String; = "deletions_override"

.field public static final SYNC_EXTRAS_UPLOAD:Ljava/lang/String; = "upload"

.field public static final SYNC_OBSERVER_TYPE_ACTIVE:I = 0x4

.field public static final SYNC_OBSERVER_TYPE_ALL:I = 0x7fffffff

.field public static final SYNC_OBSERVER_TYPE_PENDING:I = 0x2

.field public static final SYNC_OBSERVER_TYPE_SETTINGS:I = 0x1

.field public static final SYNC_OBSERVER_TYPE_STATUS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ContentResolver"

.field private static sContentService:Landroid/content/IContentService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/content/ContentResolver;->mRandom:Ljava/util/Random;

    .line 175
    iput-object p1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 176
    return-void
.end method

.method public static addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const-string v2, "force"

    .line 1089
    invoke-static {p2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 1090
    if-nez p0, :cond_0

    .line 1091
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1093
    :cond_0
    if-nez p1, :cond_1

    .line 1094
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authority must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1096
    :cond_1
    const-string v0, "force"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1097
    const-string v0, "do_not_retry"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1098
    const-string v0, "ignore_backoff"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1099
    const-string v0, "ignore_settings"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1100
    const-string v0, "initialize"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1101
    const-string v0, "force"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1102
    const-string v0, "expedited"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1103
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal extras were set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentService;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1282
    if-nez p1, :cond_0

    .line 1283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "you passed in a null callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1286
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ContentResolver$1;

    invoke-direct {v0, p1}, Landroid/content/ContentResolver$1;-><init>(Landroid/content/SyncStatusObserver;)V

    .line 1291
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/content/IContentService;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1292
    return-object v0

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1015
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/IContentService;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getContentService()Landroid/content/IContentService;
    .locals 1

    .prologue
    .line 1448
    sget-object v0, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    if-eqz v0, :cond_0

    .line 1449
    sget-object v0, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    .line 1455
    :goto_0
    return-object v0

    .line 1451
    :cond_0
    const-string v0, "content"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1453
    invoke-static {v0}, Landroid/content/IContentService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;

    move-result-object v0

    sput-object v0, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    .line 1455
    sget-object v0, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    goto :goto_0
.end method

.method public static getCurrentSync()Landroid/content/SyncInfo;
    .locals 3

    .prologue
    .line 1232
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/IContentService;->getCurrentSync()Landroid/content/SyncInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1163
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/IContentService;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getMasterSyncAutomatically()Z
    .locals 3

    .prologue
    .line 1190
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/IContentService;->getMasterSyncAutomatically()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
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
    .line 1144
    if-nez p0, :cond_0

    .line 1145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1147
    :cond_0
    if-nez p1, :cond_1

    .line 1148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authority must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1151
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/IContentService;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1152
    :catch_0
    move-exception v0

    .line 1153
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 3

    .prologue
    .line 1026
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1027
    :catch_0
    move-exception v0

    .line 1028
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1041
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/IContentService;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1247
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/IContentService;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1220
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/IContentService;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1261
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/IContentService;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private maybeLogQueryToEventLog(JLandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/16 v4, 0x64

    const-string v6, ""

    .line 1329
    invoke-direct {p0, p1, p2}, Landroid/content/ContentResolver;->samplePercentForDuration(J)I

    move-result v0

    .line 1330
    if-ge v0, v4, :cond_1

    .line 1331
    iget-object v1, p0, Landroid/content/ContentResolver;->mRandom:Ljava/util/Random;

    monitor-enter v1

    .line 1332
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentResolver;->mRandom:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 1333
    monitor-exit v1

    .line 1364
    :goto_0
    return-void

    .line 1331
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1339
    if-eqz p4, :cond_2

    move v2, v7

    .line 1340
    :goto_1
    array-length v3, p4

    if-lt v2, v3, :cond_3

    .line 1353
    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getInitialPackage()Ljava/lang/String;

    move-result-object v2

    .line 1356
    const v3, 0xcb22

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    .line 1357
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    .line 1358
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    .line 1359
    if-eqz p5, :cond_5

    move-object v5, p5

    :goto_2
    aput-object v5, v4, v1

    const/4 v1, 0x3

    .line 1360
    if-eqz p6, :cond_6

    move-object v5, p6

    :goto_3
    aput-object v5, v4, v1

    const/4 v1, 0x4

    .line 1361
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x5

    .line 1362
    if-eqz v2, :cond_7

    :goto_4
    aput-object v2, v4, v1

    const/4 v1, 0x6

    .line 1363
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 1355
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 1331
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1345
    :cond_3
    if-eqz v2, :cond_4

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1346
    :cond_4
    aget-object v3, p4, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1359
    :cond_5
    const-string v5, ""

    move-object v5, v6

    goto :goto_2

    .line 1360
    :cond_6
    const-string v5, ""

    move-object v5, v6

    goto :goto_3

    .line 1362
    :cond_7
    const-string v2, ""

    move-object v2, v6

    goto :goto_4
.end method

.method private maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x64

    const-string v6, ""

    .line 1368
    invoke-direct {p0, p1, p2}, Landroid/content/ContentResolver;->samplePercentForDuration(J)I

    move-result v0

    .line 1369
    if-ge v0, v1, :cond_1

    .line 1370
    iget-object v1, p0, Landroid/content/ContentResolver;->mRandom:Ljava/util/Random;

    monitor-enter v1

    .line 1371
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentResolver;->mRandom:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 1372
    monitor-exit v1

    .line 1385
    :goto_0
    return-void

    .line 1370
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1376
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getInitialPackage()Ljava/lang/String;

    move-result-object v1

    .line 1378
    const v2, 0xcb23

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1379
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 1380
    aput-object p4, v3, v4

    const/4 v4, 0x2

    .line 1381
    if-eqz p5, :cond_2

    move-object v5, p5

    :goto_1
    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 1382
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 1383
    if-eqz v1, :cond_3

    :goto_2
    aput-object v1, v3, v4

    const/4 v1, 0x5

    .line 1384
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 1377
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 1370
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1381
    :cond_2
    const-string v5, ""

    move-object v5, v6

    goto :goto_1

    .line 1383
    :cond_3
    const-string v1, ""

    move-object v1, v6

    goto :goto_2
.end method

.method public static modeToMode(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 571
    const-string/jumbo v0, "r"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    const/high16 v0, 0x1000

    .line 592
    :goto_0
    return v0

    .line 573
    :cond_0
    const-string/jumbo v0, "w"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "wt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    :cond_1
    const/high16 v0, 0x2c00

    goto :goto_0

    .line 577
    :cond_2
    const-string/jumbo v0, "wa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 578
    const/high16 v0, 0x2a00

    goto :goto_0

    .line 581
    :cond_3
    const-string/jumbo v0, "rw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 582
    const/high16 v0, 0x3800

    goto :goto_0

    .line 584
    :cond_4
    const-string/jumbo v0, "rwt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 585
    const/high16 v0, 0x3c00

    goto :goto_0

    .line 589
    :cond_5
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad mode for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 590
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 589
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1122
    invoke-static {p2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 1123
    if-nez p0, :cond_0

    .line 1124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1126
    :cond_0
    if-nez p1, :cond_1

    .line 1127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authority must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1130
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/IContentService;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    return-void

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static removeStatusChangeListener(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1303
    if-nez p0, :cond_0

    .line 1304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "you passed in a null handle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1307
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    check-cast p0, Landroid/content/ISyncStatusObserver$Stub;

    invoke-interface {v0, p0}, Landroid/content/IContentService;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 950
    invoke-static {p2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 952
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/IContentService;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private samplePercentForDuration(J)I
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x1f4

    .line 1320
    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 1321
    const/16 v0, 0x64

    .line 1323
    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1175
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/IContentService;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setMasterSyncAutomatically(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1204
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/IContentService;->setMasterSyncAutomatically(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1056
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/IContentService;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static validateSyncExtrasBundle(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 973
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 991
    return-void

    .line 973
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 974
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 975
    if-eqz v0, :cond_0

    .line 976
    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 977
    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 978
    instance-of v2, v0, Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 979
    instance-of v2, v0, Ljava/lang/Float;

    if-nez v2, :cond_0

    .line 980
    instance-of v2, v0, Ljava/lang/Double;

    if-nez v2, :cond_0

    .line 981
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 982
    instance-of v2, v0, Landroid/accounts/Account;

    if-nez v2, :cond_0

    .line 983
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unexpected value type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 983
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 986
    :catch_0
    move-exception v0

    .line 987
    throw v0

    .line 988
    :catch_1
    move-exception v0

    .line 989
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "error unparceling Bundle"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .locals 2
    .parameter

    .prologue
    .line 803
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 804
    if-eqz v0, :cond_0

    .line 805
    new-instance v1, Landroid/content/ContentProviderClient;

    invoke-direct {v1, p0, v0}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;)V

    move-object v0, v1

    .line 808
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
    .locals 2
    .parameter

    .prologue
    .line 823
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 824
    if-eqz v0, :cond_0

    .line 825
    new-instance v1, Landroid/content/ContentProviderClient;

    invoke-direct {v1, p0, v0}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;)V

    move-object v0, v1

    .line 828
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public final acquireExistingProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 771
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    .line 778
    :goto_0
    return-object v0

    .line 774
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 775
    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 778
    goto :goto_0
.end method

.method protected abstract acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
.end method

.method public final acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 752
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    .line 759
    :goto_0
    return-object v0

    .line 755
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 756
    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 759
    goto :goto_0
.end method

.method public final acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .parameter

    .prologue
    .line 785
    if-nez p1, :cond_0

    .line 786
    const/4 v0, 0x0

    .line 788
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 643
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 644
    if-nez v0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown authority "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_0
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 650
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 648
    return-object v1

    .line 649
    :catchall_0
    move-exception v1

    .line 650
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 651
    throw v1
.end method

.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 666
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v6

    .line 667
    if-nez v6, :cond_0

    .line 668
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 672
    invoke-interface {v6, p1, p2}, Landroid/content/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v7

    .line 673
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v1, v2, v0

    .line 674
    const-string v4, "bulkinsert"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move v0, v7

    .line 677
    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 679
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 677
    const/4 v0, 0x0

    goto :goto_0

    .line 678
    :catchall_0
    move-exception v0

    .line 679
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 680
    throw v0
.end method

.method public cancelSync(Landroid/net/Uri;)V
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1002
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1003
    return-void

    :cond_0
    move-object v0, v1

    .line 1002
    goto :goto_0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 695
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v6

    .line 696
    if-nez v6, :cond_0

    .line 697
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 701
    invoke-interface {v6, p1, p2, p3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 702
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v1, v2, v0

    .line 703
    const-string v4, "delete"

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move v0, v7

    .line 706
    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 708
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 706
    const/4 v0, -0x1

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v0

    .line 708
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 709
    throw v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 531
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 533
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No authority: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 542
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 543
    if-nez v1, :cond_1

    .line 544
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No package found for authority: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 548
    if-ne v0, v6, :cond_2

    .line 550
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 559
    :goto_0
    if-nez v0, :cond_4

    .line 560
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No resource found for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :catch_1
    move-exception v0

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Single path segment is not a resource ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 555
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 557
    :cond_3
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "More than two path segments: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_4
    new-instance v1, Landroid/content/ContentResolver$OpenResourceIdResult;

    invoke-direct {v1, p0}, Landroid/content/ContentResolver$OpenResourceIdResult;-><init>(Landroid/content/ContentResolver;)V

    .line 563
    iput-object v3, v1, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    .line 564
    iput v0, v1, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    .line 565
    return-object v1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const-string v7, "Failed to get type for: "

    const-string v6, "ContentResolver"

    const-string v4, ")"

    const-string v3, " ("

    .line 202
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireExistingProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    .line 205
    :try_start_0
    invoke-interface {v0, p1}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 212
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-object v0, v1

    .line 227
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .line 212
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-object v0, v5

    .line 207
    goto :goto_0

    .line 208
    :catch_1
    move-exception v1

    .line 209
    :try_start_1
    const-string v2, "ContentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get type for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-object v0, v5

    .line 210
    goto :goto_0

    .line 211
    :catchall_0
    move-exception v1

    .line 212
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 213
    throw v1

    .line 216
    :cond_0
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v5

    .line 217
    goto :goto_0

    .line 221
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getProviderMimeType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    goto :goto_0

    .line 224
    :catch_2
    move-exception v0

    move-object v0, v5

    goto :goto_0

    .line 225
    :catch_3
    move-exception v0

    .line 226
    const-string v1, "ContentResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get type for: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 227
    goto :goto_0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 607
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v6

    .line 608
    if-nez v6, :cond_0

    .line 609
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 613
    invoke-interface {v6, p1, p2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 614
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v1, v2, v0

    .line 615
    const-string v4, "insert"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-object v0, v7

    .line 618
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 620
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-object v0, v8

    .line 618
    goto :goto_0

    .line 619
    :catchall_0
    move-exception v0

    .line 620
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 621
    throw v0
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 880
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 881
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 894
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    .line 895
    if-nez p2, :cond_0

    const/4 v1, 0x0

    .line 896
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 894
    :goto_1
    invoke-interface {v0, p1, v1, v2, p3}, Landroid/content/IContentService;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V

    .line 899
    :goto_2
    return-void

    .line 895
    :cond_0
    invoke-virtual {p2}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 896
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public final openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 473
    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    const-string/jumbo v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t write resources: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v0

    .line 479
    :try_start_0
    iget-object v1, v0, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v0, v0, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 500
    :goto_0
    return-object v0

    .line 481
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resource does not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_1
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 485
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/content/ContentResolver;->modeToMode(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    .line 484
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 486
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    goto :goto_0

    .line 488
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v6

    .line 489
    if-nez v6, :cond_3

    .line 490
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No content provider: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_3
    :try_start_1
    invoke-interface {v6, p1, p2}, Landroid/content/IContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 494
    if-nez v4, :cond_4

    .line 495
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 496
    const/4 v0, 0x0

    goto :goto_0

    .line 498
    :cond_4
    new-instance v1, Landroid/content/ContentResolver$ParcelFileDescriptorInner;

    .line 499
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 498
    invoke-direct {v1, p0, v0, v6}, Landroid/content/ContentResolver$ParcelFileDescriptorInner;-><init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V

    .line 500
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 501
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    .line 500
    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 503
    :catch_1
    move-exception v0

    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 504
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dead content provider: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :catch_2
    move-exception v0

    .line 506
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 507
    throw v0

    .line 508
    :catch_3
    move-exception v0

    .line 509
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 510
    throw v0
.end method

.method public final openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 407
    if-nez v0, :cond_0

    .line 408
    const/4 v0, 0x0

    .line 413
    :goto_0
    return-object v0

    .line 411
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 413
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0

    .line 419
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_1
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Not a whole file"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 313
    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v0

    .line 318
    :try_start_0
    iget-object v1, v0, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v0, v0, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    .line 321
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resource does not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_1
    const-string/jumbo v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 332
    :catch_1
    move-exception v0

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Unable to create stream"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 344
    const-string/jumbo v0, "w"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Unable to create stream"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 265
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 266
    if-nez v0, :cond_0

    move-object v0, v9

    .line 284
    :goto_0
    return-object v0

    .line 270
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 271
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 272
    if-nez v8, :cond_1

    .line 273
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-object v0, v9

    .line 274
    goto :goto_0

    .line 277
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v2, v1, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    .line 279
    invoke-direct/range {v1 .. v7}, Landroid/content/ContentResolver;->maybeLogQueryToEventLog(JLandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v1, Landroid/content/ContentResolver$CursorWrapperInner;

    invoke-direct {v1, p0, v8, v0}, Landroid/content/ContentResolver$CursorWrapperInner;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Landroid/content/IContentProvider;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 283
    :catch_0
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-object v0, v9

    .line 284
    goto :goto_0

    .line 285
    :catch_1
    move-exception v1

    .line 286
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 287
    throw v1
.end method

.method public final registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 848
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    .line 849
    invoke-virtual {p3}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;

    move-result-object v1

    .line 848
    invoke-interface {v0, p1, p2, v1}, Landroid/content/IContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract releaseProvider(Landroid/content/IContentProvider;)Z
.end method

.method public startSync(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v4, "account"

    .line 921
    .line 922
    if-eqz p2, :cond_2

    .line 923
    const-string v0, "account"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 924
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 925
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 927
    :goto_0
    const-string v1, "account"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 929
    :goto_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v0, v1, p2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 930
    return-void

    :cond_0
    move-object v1, v3

    .line 929
    goto :goto_2

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v0, v3

    goto :goto_1
.end method

.method public final unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 2
    .parameter

    .prologue
    .line 862
    :try_start_0
    invoke-virtual {p1}, Landroid/database/ContentObserver;->releaseContentObserver()Landroid/database/IContentObserver;

    move-result-object v0

    .line 863
    if-eqz v0, :cond_0

    .line 864
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/IContentService;->unregisterContentObserver(Landroid/database/IContentObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 727
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v6

    .line 728
    if-nez v6, :cond_0

    .line 729
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 733
    invoke-interface {v6, p1, p2, p3, p4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 734
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v1, v2, v0

    .line 735
    const-string/jumbo v4, "update"

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move v0, v7

    .line 738
    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 740
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 738
    const/4 v0, -0x1

    goto :goto_0

    .line 739
    :catchall_0
    move-exception v0

    .line 740
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 741
    throw v0
.end method
