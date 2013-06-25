.class Landroid/content/SyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;
    }
.end annotation


# static fields
.field private static final MESSAGE_CHECK_ALARMS:I = 0x3

.field private static final MESSAGE_SERVICE_CONNECTED:I = 0x4

.field private static final MESSAGE_SERVICE_DISCONNECTED:I = 0x5

.field private static final MESSAGE_SYNC_ALARM:I = 0x2

.field private static final MESSAGE_SYNC_FINISHED:I = 0x1


# instance fields
.field private mAlarmScheduleTime:Ljava/lang/Long;

.field private mErrorNotificationInstalled:Z

.field private volatile mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

.field public final mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method public constructor <init>(Landroid/content/SyncManager;Landroid/os/Looper;)V
    .locals 3
    .parameter
    .parameter "looper"

    .prologue
    const/4 v2, 0x0

    .line 1369
    iput-object p1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    .line 1370
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1307
    new-instance v0, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    invoke-direct {v0, p0}, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;-><init>(Landroid/content/SyncManager$SyncHandler;)V

    iput-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    .line 1308
    iput-object v2, p0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 1309
    new-instance v0, Landroid/content/SyncManager$SyncTimeTracker;

    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-direct {v0, v1, v2}, Landroid/content/SyncManager$SyncTimeTracker;-><init>(Landroid/content/SyncManager;Landroid/content/SyncManager$1;)V

    iput-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    .line 1313
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/SyncManager$SyncHandler;->mErrorNotificationInstalled:Z

    .line 1314
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1371
    return-void
.end method

.method static synthetic access$1100(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1299
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    return-object v0
.end method

.method private installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;J)V
    .locals 11
    .parameter "account"
    .parameter "authority"
    .parameter "numDeletes"

    .prologue
    const/4 v10, 0x0

    .line 2024
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v6}, Landroid/content/SyncManager;->access$2300(Landroid/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v6

    if-nez v6, :cond_1

    .line 2062
    :cond_0
    :goto_0
    return-void

    .line 2026
    :cond_1
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1000(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p2, v10}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 2028
    .local v4, providerInfo:Landroid/content/pm/ProviderInfo;
    if-eqz v4, :cond_0

    .line 2031
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1000(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2033
    .local v0, authorityName:Ljava/lang/CharSequence;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2034
    .local v1, clickIntent:Landroid/content/Intent;
    const-string v6, "com.android.providers.subscribedfeeds"

    const-string v7, "com.android.settings.SyncActivityTooManyDeletes"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2036
    const-string v6, "account"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2037
    const-string v6, "authority"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2038
    const-string/jumbo v6, "provider"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2039
    const-string v6, "numDeletes"

    invoke-virtual {v1, v6, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2041
    invoke-direct {p0, v1}, Landroid/content/SyncManager$SyncHandler;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2042
    const-string v6, "SyncManager"

    const-string v7, "No activity found to handle too many deletes."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2046
    :cond_2
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1000(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x1000

    invoke-static {v6, v10, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2049
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1000(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040113

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2052
    .local v5, tooManyDeletesDescFormat:Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/Notification;

    const v6, 0x10802a1

    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/content/SyncManager;->access$1000(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x1040111

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2056
    .local v2, notification:Landroid/app/Notification;
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1000(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/content/SyncManager;->access$1000(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x1040112

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2060
    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 2061
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v6}, Landroid/content/SyncManager;->access$2300(Landroid/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v6

    invoke-virtual {p1}, Landroid/accounts/Account;->hashCode()I

    move-result v7

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v7, v8

    invoke-virtual {v6, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private isActivityAvailable(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 2071
    iget-object v5, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/content/SyncManager;->access$1000(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2072
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2073
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2074
    .local v2, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2075
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 2076
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 2078
    const/4 v5, 0x1

    .line 2082
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_1
    return v5

    .line 2074
    .restart local v4       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    move v5, v6

    .line 2082
    goto :goto_1
.end method

.method private manageErrorNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1921
    iget-object v2, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v2}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncStorageEngine;->getInitialSyncFailureTime()J

    move-result-wide v0

    .line 1922
    .local v0, when:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-wide/32 v2, 0x927c0

    add-long/2addr v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1923
    iget-boolean v2, p0, Landroid/content/SyncManager$SyncHandler;->mErrorNotificationInstalled:Z

    if-nez v2, :cond_0

    .line 1924
    iget-object v2, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #setter for: Landroid/content/SyncManager;->mNeedSyncErrorNotification:Z
    invoke-static {v2, v7}, Landroid/content/SyncManager;->access$2502(Landroid/content/SyncManager;Z)Z

    .line 1925
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->sendSyncStateIntent()V

    .line 1927
    :cond_0
    iput-boolean v7, p0, Landroid/content/SyncManager$SyncHandler;->mErrorNotificationInstalled:Z

    .line 1935
    :goto_0
    return-void

    .line 1929
    :cond_1
    iget-boolean v2, p0, Landroid/content/SyncManager$SyncHandler;->mErrorNotificationInstalled:Z

    if-eqz v2, :cond_2

    .line 1930
    iget-object v2, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #setter for: Landroid/content/SyncManager;->mNeedSyncErrorNotification:Z
    invoke-static {v2, v6}, Landroid/content/SyncManager;->access$2502(Landroid/content/SyncManager;Z)Z

    .line 1931
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->sendSyncStateIntent()V

    .line 1933
    :cond_2
    iput-boolean v6, p0, Landroid/content/SyncManager$SyncHandler;->mErrorNotificationInstalled:Z

    goto :goto_0
.end method

.method private manageSyncAlarm(Ljava/lang/Long;)V
    .locals 26
    .parameter "earliestFuturePollElapsedTime"

    .prologue
    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$400(Landroid/content/SyncManager;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 2012
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1941
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mStorageIsLow:Z
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$000(Landroid/content/SyncManager;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 1943
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 1950
    .local v13, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v4

    .line 1951
    .local v4, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    if-nez v4, :cond_8

    .line 1952
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 1953
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/SyncQueue;->nextOperation()Landroid/util/Pair;

    move-result-object v7

    .line 1954
    .local v7, candidate:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/content/SyncOperation;Ljava/lang/Long;>;"
    if-nez p1, :cond_5

    if-nez v7, :cond_5

    .line 1955
    const/4 v6, 0x0

    .line 1963
    .end local p1
    .local v6, alarmTime:Ljava/lang/Long;
    :goto_1
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1978
    .end local v7           #candidate:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/content/SyncOperation;Ljava/lang/Long;>;"
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SyncManager$SyncHandler;->mErrorNotificationInstalled:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 1979
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/SyncStorageEngine;->getInitialSyncFailureTime()J

    move-result-wide v19

    .line 1980
    .local v19, when:J
    const-wide/16 v21, 0x0

    cmp-long v21, v19, v21

    if-lez v21, :cond_2

    .line 1981
    const-wide/32 v21, 0x927c0

    add-long v19, v19, v21

    .line 1983
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v8, v19, v21

    .line 1984
    .local v8, delay:J
    add-long v19, v13, v8

    .line 1985
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v21

    :goto_3
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1990
    .end local v8           #delay:J
    .end local v19           #when:J
    :cond_2
    const/16 v16, 0x0

    .line 1991
    .local v16, shouldSet:Z
    const/4 v15, 0x0

    .line 1992
    .local v15, shouldCancel:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    const/16 v21, 0x1

    move/from16 v5, v21

    .line 1993
    .local v5, alarmIsActive:Z
    :goto_4
    if-eqz v6, :cond_c

    const/16 v21, 0x1

    move/from16 v10, v21

    .line 1994
    .local v10, needAlarm:Z
    :goto_5
    if-eqz v10, :cond_d

    .line 1995
    if-eqz v5, :cond_3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-gez v21, :cond_4

    .line 1996
    :cond_3
    const/16 v16, 0x1

    .line 2003
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #calls: Landroid/content/SyncManager;->ensureAlarmService()V
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$2600(Landroid/content/SyncManager;)V

    .line 2004
    if-eqz v16, :cond_e

    .line 2005
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 2006
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$2800(Landroid/content/SyncManager;)Landroid/app/AlarmManager;

    move-result-object v21

    const/16 v22, 0x2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v25, v0

    #getter for: Landroid/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;
    invoke-static/range {v25 .. v25}, Landroid/content/SyncManager;->access$2700(Landroid/content/SyncManager;)Landroid/app/PendingIntent;

    move-result-object v25

    invoke-virtual/range {v21 .. v25}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1956
    .end local v5           #alarmIsActive:Z
    .end local v6           #alarmTime:Ljava/lang/Long;
    .end local v10           #needAlarm:Z
    .end local v15           #shouldCancel:Z
    .end local v16           #shouldSet:Z
    .restart local v7       #candidate:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/content/SyncOperation;Ljava/lang/Long;>;"
    .restart local p1
    :cond_5
    if-nez p1, :cond_6

    .line 1957
    :try_start_1
    iget-object v6, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .restart local v6       #alarmTime:Ljava/lang/Long;
    goto/16 :goto_1

    .line 1958
    .end local v6           #alarmTime:Ljava/lang/Long;
    :cond_6
    if-nez v7, :cond_7

    .line 1959
    move-object/from16 v6, p1

    .restart local v6       #alarmTime:Ljava/lang/Long;
    goto/16 :goto_1

    .line 1961
    .end local v6           #alarmTime:Ljava/lang/Long;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object v0, v7

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .restart local v6       #alarmTime:Ljava/lang/Long;
    goto/16 :goto_1

    .line 1963
    .end local v6           #alarmTime:Ljava/lang/Long;
    .end local v7           #candidate:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/content/SyncOperation;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v22

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v22

    .line 1965
    .restart local p1
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$200(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-wide/16 v23, 0x7530

    add-long v11, v21, v23

    .line 1967
    .local v11, notificationTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    move-wide/from16 v21, v0

    invoke-static {}, Landroid/content/SyncManager;->access$1700()J

    move-result-wide v23

    add-long v17, v21, v23

    .line 1969
    .local v17, timeoutTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$200(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 1970
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .restart local v6       #alarmTime:Ljava/lang/Long;
    goto/16 :goto_2

    .line 1972
    .end local v6           #alarmTime:Ljava/lang/Long;
    :cond_9
    move-wide v0, v11

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .restart local v6       #alarmTime:Ljava/lang/Long;
    goto/16 :goto_2

    .end local v11           #notificationTime:J
    .end local v17           #timeoutTime:J
    .end local p1
    .restart local v8       #delay:J
    .restart local v19       #when:J
    :cond_a
    move-wide/from16 v21, v19

    .line 1985
    goto/16 :goto_3

    .line 1992
    .end local v8           #delay:J
    .end local v19           #when:J
    .restart local v15       #shouldCancel:Z
    .restart local v16       #shouldSet:Z
    :cond_b
    const/16 v21, 0x0

    move/from16 v5, v21

    goto/16 :goto_4

    .line 1993
    .restart local v5       #alarmIsActive:Z
    :cond_c
    const/16 v21, 0x0

    move/from16 v10, v21

    goto/16 :goto_5

    .line 1999
    .restart local v10       #needAlarm:Z
    :cond_d
    move v15, v5

    goto/16 :goto_6

    .line 2008
    :cond_e
    if-eqz v15, :cond_0

    .line 2009
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 2010
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$2800(Landroid/content/SyncManager;)Landroid/app/AlarmManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v22, v0

    #getter for: Landroid/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;
    invoke-static/range {v22 .. v22}, Landroid/content/SyncManager;->access$2700(Landroid/content/SyncManager;)Landroid/app/PendingIntent;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method private manageSyncNotification()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1859
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v7}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v7

    if-nez v7, :cond_2

    .line 1860
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    .line 1864
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-boolean v3, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 1865
    .local v3, shouldCancel:Z
    const/4 v4, 0x0

    .line 1899
    .local v4, shouldInstall:Z
    :goto_0
    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    .line 1900
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #setter for: Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z
    invoke-static {v7, v11}, Landroid/content/SyncManager;->access$2402(Landroid/content/SyncManager;Z)Z

    .line 1901
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->sendSyncStateIntent()V

    .line 1902
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iput-boolean v11, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 1905
    :cond_0
    if-eqz v4, :cond_1

    .line 1906
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v7}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v7

    iget-object v5, v7, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    .line 1907
    .local v5, syncOperation:Landroid/content/SyncOperation;
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #setter for: Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z
    invoke-static {v7, v12}, Landroid/content/SyncManager;->access$2402(Landroid/content/SyncManager;Z)Z

    .line 1908
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->sendSyncStateIntent()V

    .line 1909
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iput-boolean v12, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 1910
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v8, v5, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iput-object v8, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->account:Landroid/accounts/Account;

    .line 1911
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v8, v5, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    iput-object v8, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->authority:Ljava/lang/String;

    .line 1913
    .end local v5           #syncOperation:Landroid/content/SyncOperation;
    :cond_1
    return-void

    .line 1868
    .end local v3           #shouldCancel:Z
    .end local v4           #shouldInstall:Z
    :cond_2
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v7}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v7

    iget-object v5, v7, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    .line 1870
    .restart local v5       #syncOperation:Landroid/content/SyncOperation;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1871
    .local v1, now:J
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v7, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    if-nez v7, :cond_3

    .line 1872
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    .line 1876
    :cond_3
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-boolean v7, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    if-eqz v7, :cond_5

    iget-object v7, v5, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v8, v8, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v5, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v8, v8, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v7, v8}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    move v3, v12

    .line 1887
    .restart local v3       #shouldCancel:Z
    :goto_1
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-boolean v7, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    if-eqz v7, :cond_6

    .line 1888
    move v4, v3

    .restart local v4       #shouldInstall:Z
    goto :goto_0

    .end local v3           #shouldCancel:Z
    .end local v4           #shouldInstall:Z
    :cond_5
    move v3, v11

    .line 1876
    goto :goto_1

    .line 1890
    .restart local v3       #shouldCancel:Z
    :cond_6
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v7, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x7530

    add-long/2addr v7, v9

    cmp-long v7, v1, v7

    if-lez v7, :cond_8

    move v6, v12

    .line 1893
    .local v6, timeToShowNotification:Z
    :goto_2
    iget-object v7, v5, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v8, "force"

    invoke-virtual {v7, v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1895
    .local v0, manualSync:Z
    if-nez v6, :cond_7

    if-eqz v0, :cond_9

    :cond_7
    move v4, v12

    .restart local v4       #shouldInstall:Z
    :goto_3
    goto/16 :goto_0

    .end local v0           #manualSync:Z
    .end local v4           #shouldInstall:Z
    .end local v6           #timeToShowNotification:Z
    :cond_8
    move v6, v11

    .line 1890
    goto :goto_2

    .restart local v0       #manualSync:Z
    .restart local v6       #timeToShowNotification:Z
    :cond_9
    move v4, v11

    .line 1895
    goto :goto_3
.end method

.method private runBoundToSyncAdapter(Landroid/content/ISyncAdapter;)V
    .locals 9
    .parameter "syncAdapter"

    .prologue
    const/4 v7, 0x0

    const-string v8, "SyncManager"

    .line 1721
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v3}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v3

    iput-object p1, v3, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 1722
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v3}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v3

    iget-object v2, v3, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    .line 1724
    .local v2, syncOperation:Landroid/content/SyncOperation;
    :try_start_0
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v3}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v3

    iget-object v4, v2, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v6, v2, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/content/ISyncAdapter;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1739
    :goto_0
    return-void

    .line 1726
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1727
    .local v1, remoteExc:Landroid/os/RemoteException;
    const-string v3, "SyncManager"

    const-string/jumbo v3, "runStateIdle: caught a RemoteException, rescheduling"

    invoke-static {v8, v3, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1728
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v3}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncManager$ActiveSyncContext;->close()V

    .line 1729
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #setter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v3, v7}, Landroid/content/SyncManager;->access$1202(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncManager$ActiveSyncContext;

    .line 1730
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v3}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v3

    iget-object v4, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v4}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/SyncStorageEngine;->setActiveSync(Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 1731
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->increaseBackoffSetting(Landroid/content/SyncOperation;)V
    invoke-static {v3, v2}, Landroid/content/SyncManager;->access$2000(Landroid/content/SyncManager;Landroid/content/SyncOperation;)V

    .line 1732
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    new-instance v4, Landroid/content/SyncOperation;

    invoke-direct {v4, v2}, Landroid/content/SyncOperation;-><init>(Landroid/content/SyncOperation;)V

    invoke-virtual {v3, v4}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto :goto_0

    .line 1733
    .end local v1           #remoteExc:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 1734
    .local v0, exc:Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v3}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncManager$ActiveSyncContext;->close()V

    .line 1735
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #setter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v3, v7}, Landroid/content/SyncManager;->access$1202(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncManager$ActiveSyncContext;

    .line 1736
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v3}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v3

    iget-object v4, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v4}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/SyncStorageEngine;->setActiveSync(Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 1737
    const-string v3, "SyncManager"

    const-string v3, "Caught RuntimeException while starting the sync"

    invoke-static {v8, v3, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private runStateIdle()V
    .locals 23

    .prologue
    .line 1583
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    .line 1584
    .local v9, isLoggable:Z
    if-eqz v9, :cond_0

    const-string v19, "SyncManager"

    const-string/jumbo v20, "runStateIdle"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$400(Landroid/content/SyncManager;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 1588
    if-eqz v9, :cond_1

    .line 1589
    const-string v19, "SyncManager"

    const-string/jumbo v20, "runStateIdle: no data connection, skipping"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_1
    :goto_0
    return-void

    .line 1594
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mStorageIsLow:Z
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$000(Landroid/content/SyncManager;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1595
    if-eqz v9, :cond_1

    .line 1596
    const-string v19, "SyncManager"

    const-string/jumbo v20, "runStateIdle: memory low, skipping"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1603
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$1600(Landroid/content/SyncManager;)[Landroid/accounts/Account;

    move-result-object v5

    .line 1604
    .local v5, accounts:[Landroid/accounts/Account;
    invoke-static {}, Landroid/content/SyncManager;->access$1800()[Landroid/accounts/Account;

    move-result-object v19

    move-object v0, v5

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 1605
    if-eqz v9, :cond_1

    .line 1606
    const-string v19, "SyncManager"

    const-string/jumbo v20, "runStateIdle: accounts not known, skipping"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1616
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #calls: Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$300(Landroid/content/SyncManager;)Landroid/net/ConnectivityManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v7

    .line 1618
    .local v7, backgroundDataUsageAllowed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically()Z

    move-result v10

    .line 1620
    .local v10, masterSyncAutomatically:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1621
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1623
    .end local v5           #accounts:[Landroid/accounts/Account;
    .local v12, now:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/SyncQueue;->nextOperation()Landroid/util/Pair;

    move-result-object v11

    .line 1624
    .local v11, nextOpAndRunTime:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/content/SyncOperation;Ljava/lang/Long;>;"
    if-eqz v11, :cond_6

    iget-object v5, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v20, v20, v12

    if-lez v20, :cond_8

    .line 1625
    :cond_6
    if-eqz v9, :cond_7

    .line 1626
    const-string v20, "SyncManager"

    const-string/jumbo v21, "runStateIdle: no more ready sync operations, returning"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :cond_7
    monitor-exit v19

    goto/16 :goto_0

    .line 1668
    .end local v11           #nextOpAndRunTime:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/content/SyncOperation;Ljava/lang/Long;>;"
    .end local v12           #now:J
    :catchall_0
    move-exception v20

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 1630
    .restart local v11       #nextOpAndRunTime:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/content/SyncOperation;Ljava/lang/Long;>;"
    .restart local v12       #now:J
    :cond_8
    :try_start_1
    iget-object v14, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Landroid/content/SyncOperation;

    .line 1634
    .local v14, op:Landroid/content/SyncOperation;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/SyncQueue;->remove(Landroid/content/SyncOperation;)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v20, v0

    #getter for: Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;
    invoke-static/range {v20 .. v20}, Landroid/content/SyncManager;->access$1600(Landroid/content/SyncManager;)[Landroid/accounts/Account;

    move-result-object v20

    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v20, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v20 .. v20}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v20

    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v21, v0

    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v18

    .line 1645
    .local v18, syncableState:I
    if-eqz v18, :cond_5

    .line 1651
    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "ignore_settings"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_9

    if-lez v18, :cond_9

    if-eqz v10, :cond_5

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v20, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v20 .. v20}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v20

    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v21, v0

    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1665
    :cond_9
    if-eqz v9, :cond_a

    .line 1666
    const-string v20, "SyncManager"

    const-string/jumbo v21, "runStateIdle: we are going to sync"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :cond_a
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1673
    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "initialize"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1675
    .local v8, initializeIsSet:Z
    if-gez v18, :cond_c

    if-nez v8, :cond_c

    .line 1676
    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "initialize"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1677
    new-instance v15, Landroid/content/SyncOperation;

    invoke-direct {v15, v14}, Landroid/content/SyncOperation;-><init>(Landroid/content/SyncOperation;)V

    .end local v14           #op:Landroid/content/SyncOperation;
    .local v15, op:Landroid/content/SyncOperation;
    move-object v14, v15

    .line 1684
    .end local v15           #op:Landroid/content/SyncOperation;
    .restart local v14       #op:Landroid/content/SyncOperation;
    :cond_b
    :goto_1
    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v17

    .line 1685
    .local v17, syncAdapterType:Landroid/content/SyncAdapterType;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$1900(Landroid/content/SyncManager;)Landroid/content/SyncAdaptersCache;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v16

    .line 1687
    .local v16, syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v16, :cond_d

    .line 1688
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "can\'t find a sync adapter for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", removing settings for it"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v19

    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/content/SyncStorageEngine;->removeAuthority(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1691
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->runStateIdle()V

    goto/16 :goto_0

    .line 1678
    .end local v16           #syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v17           #syncAdapterType:Landroid/content/SyncAdapterType;
    :cond_c
    if-lez v18, :cond_b

    if-eqz v8, :cond_b

    .line 1679
    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "initialize"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1680
    new-instance v15, Landroid/content/SyncOperation;

    invoke-direct {v15, v14}, Landroid/content/SyncOperation;-><init>(Landroid/content/SyncOperation;)V

    .end local v14           #op:Landroid/content/SyncOperation;
    .restart local v15       #op:Landroid/content/SyncOperation;
    move-object v14, v15

    .end local v15           #op:Landroid/content/SyncOperation;
    .restart local v14       #op:Landroid/content/SyncOperation;
    goto :goto_1

    .line 1695
    .restart local v16       #syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v17       #syncAdapterType:Landroid/content/SyncAdapterType;
    :cond_d
    new-instance v6, Landroid/content/SyncManager$ActiveSyncContext;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/SyncManager$SyncHandler;->insertStartSyncEvent(Landroid/content/SyncOperation;)J

    move-result-wide v20

    move-object v0, v6

    move-object/from16 v1, v19

    move-object v2, v14

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/SyncManager$ActiveSyncContext;-><init>(Landroid/content/SyncManager;Landroid/content/SyncOperation;J)V

    .line 1697
    .local v6, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v6

    #setter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v0, v1}, Landroid/content/SyncManager;->access$1202(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncManager$ActiveSyncContext;

    .line 1698
    const-string v19, "SyncManager"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1699
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "runStateIdle: setting mActiveSyncContext to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v20, v0

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static/range {v20 .. v20}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/SyncStorageEngine;->setActiveSync(Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 1702
    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/SyncManager$ActiveSyncContext;->bindToSyncAdapter(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;)Z

    move-result v19

    if-nez v19, :cond_f

    .line 1703
    const-string v19, "SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Bind attempt failed to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/SyncManager$ActiveSyncContext;->close()V

    .line 1705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static/range {v19 .. v20}, Landroid/content/SyncManager;->access$1202(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncManager$ActiveSyncContext;

    .line 1706
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v20, v0

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static/range {v20 .. v20}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/SyncStorageEngine;->setActiveSync(Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$1500(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1708
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->runStateIdle()V

    goto/16 :goto_0

    .line 1712
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$1500(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v19

    new-instance v20, Landroid/os/WorkSource;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    #getter for: Landroid/content/SyncManager;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$1500(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_0
.end method

.method private runStateSyncing()V
    .locals 8

    .prologue
    .line 1561
    iget-object v4, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v4}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v0

    .line 1563
    .local v0, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1564
    .local v2, now:J
    iget-wide v4, v0, Landroid/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    invoke-static {}, Landroid/content/SyncManager;->access$1700()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 1566
    iget-object v4, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v4, v4, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v4

    .line 1567
    :try_start_0
    iget-object v5, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v5, v5, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    invoke-virtual {v5}, Landroid/content/SyncQueue;->nextOperation()Landroid/util/Pair;

    move-result-object v1

    .line 1568
    .local v1, nextOpAndRunTime:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/content/SyncOperation;Ljava/lang/Long;>;"
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1569
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_1

    .line 1570
    const-string v4, "SyncManager"

    const-string v5, "canceling and rescheduling sync because it ran too long"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget-object v4, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    new-instance v5, Landroid/content/SyncOperation;

    iget-object v6, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    invoke-direct {v5, v6}, Landroid/content/SyncOperation;-><init>(Landroid/content/SyncOperation;)V

    invoke-virtual {v4, v5}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    .line 1572
    iget-object v4, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    const/4 v5, 0x0

    #calls: Landroid/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    invoke-static {v4, v0, v5}, Landroid/content/SyncManager;->access$900(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 1580
    .end local v1           #nextOpAndRunTime:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/content/SyncOperation;Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    return-void

    .line 1568
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1575
    .restart local v1       #nextOpAndRunTime:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/content/SyncOperation;Ljava/lang/Long;>;"
    :cond_1
    invoke-static {}, Landroid/content/SyncManager;->access$1700()J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, v0, Landroid/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    goto :goto_0
.end method

.method private runSyncFinishedOrCanceled(Landroid/content/SyncResult;)V
    .locals 23
    .parameter "syncResult"

    .prologue
    .line 1742
    const-string v5, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    .line 1743
    .local v22, isLoggable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v5}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v21

    .line 1744
    .local v21, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v5, v6}, Landroid/content/SyncManager;->access$1202(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncManager$ActiveSyncContext;

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v5}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v6, v0

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/SyncStorageEngine;->setActiveSync(Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 1747
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    move-object v8, v0

    .line 1749
    .local v8, syncOperation:Landroid/content/SyncOperation;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide v9, v0

    sub-long v12, v5, v9

    .line 1754
    .local v12, elapsedTime:J
    if-eqz p1, :cond_5

    .line 1755
    if-eqz v22, :cond_0

    .line 1756
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "runSyncFinishedOrCanceled [finished]: , result "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasError()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1761
    const-string/jumbo v9, "success"

    .line 1763
    .local v9, historyMessage:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1764
    .local v11, downstreamActivity:I
    const/4 v10, 0x0

    .line 1765
    .local v10, upstreamActivity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    #calls: Landroid/content/SyncManager;->clearBackoffSetting(Landroid/content/SyncOperation;)V
    invoke-static {v5, v8}, Landroid/content/SyncManager;->access$2100(Landroid/content/SyncManager;Landroid/content/SyncOperation;)V

    .line 1769
    iget-object v5, v8, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v6, "initialize"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v5}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v5

    iget-object v6, v8, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v7, v8, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    new-instance v6, Landroid/content/SyncOperation;

    invoke-direct {v6, v8}, Landroid/content/SyncOperation;-><init>(Landroid/content/SyncOperation;)V

    invoke-virtual {v5, v6}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    .line 1789
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/SyncResult;->delayUntil:J

    move-wide v6, v0

    #calls: Landroid/content/SyncManager;->setDelayUntilTime(Landroid/content/SyncOperation;J)V
    invoke-static {v5, v8, v6, v7}, Landroid/content/SyncManager;->access$2200(Landroid/content/SyncManager;Landroid/content/SyncOperation;J)V

    .line 1806
    :goto_1
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    move-wide v6, v0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Landroid/content/SyncManager$SyncHandler;->stopSyncEvent(JLandroid/content/SyncOperation;Ljava/lang/String;IIJ)V

    .line 1809
    invoke-virtual/range {v21 .. v21}, Landroid/content/SyncManager$ActiveSyncContext;->close()V

    .line 1811
    if-eqz p1, :cond_8

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/content/SyncResult;->tooManyDeletions:Z

    move v5, v0

    if-eqz v5, :cond_8

    .line 1812
    iget-object v5, v8, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v6, v8, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v7, v0

    iget-wide v9, v7, Landroid/content/SyncStats;->numDeletes:J

    .end local v9           #historyMessage:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-wide v3, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/SyncManager$SyncHandler;->installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;J)V

    .line 1819
    :goto_2
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    move v5, v0

    if-eqz v5, :cond_2

    .line 1820
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    new-instance v14, Landroid/content/SyncOperation;

    iget-object v15, v8, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object v0, v8

    iget v0, v0, Landroid/content/SyncOperation;->syncSource:I

    move/from16 v16, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v19, 0x0

    invoke-direct/range {v14 .. v20}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;J)V

    invoke-virtual {v5, v14}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    .line 1824
    :cond_2
    return-void

    .line 1776
    .end local v10           #upstreamActivity:I
    .end local v11           #downstreamActivity:I
    :cond_3
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed sync operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    #calls: Landroid/content/SyncManager;->increaseBackoffSetting(Landroid/content/SyncOperation;)V
    invoke-static {v5, v8}, Landroid/content/SyncManager;->access$2000(Landroid/content/SyncManager;Landroid/content/SyncOperation;)V

    .line 1782
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Landroid/content/SyncOperation;)V

    .line 1783
    invoke-direct/range {p0 .. p1}, Landroid/content/SyncManager$SyncHandler;->syncResultToErrorNumber(Landroid/content/SyncResult;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 1785
    .restart local v9       #historyMessage:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1786
    .restart local v11       #downstreamActivity:I
    const/4 v10, 0x0

    .restart local v10       #upstreamActivity:I
    goto/16 :goto_0

    .line 1791
    .end local v9           #historyMessage:Ljava/lang/String;
    .end local v10           #upstreamActivity:I
    .end local v11           #downstreamActivity:I
    :cond_5
    if-eqz v22, :cond_6

    .line 1792
    const-string v5, "SyncManager"

    const-string/jumbo v6, "runSyncFinishedOrCanceled [canceled]"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :cond_6
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    move-object v5, v0

    if-eqz v5, :cond_7

    .line 1796
    :try_start_0
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1801
    :cond_7
    :goto_3
    const-string v9, "canceled"

    .line 1802
    .restart local v9       #historyMessage:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1803
    .restart local v11       #downstreamActivity:I
    const/4 v10, 0x0

    .restart local v10       #upstreamActivity:I
    goto/16 :goto_1

    .line 1815
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    #getter for: Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v5}, Landroid/content/SyncManager;->access$2300(Landroid/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v5

    iget-object v6, v8, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v6}, Landroid/accounts/Account;->hashCode()I

    move-result v6

    iget-object v7, v8, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_2

    .line 1797
    .end local v9           #historyMessage:Ljava/lang/String;
    .end local v10           #upstreamActivity:I
    .end local v11           #downstreamActivity:I
    :catch_0
    move-exception v5

    goto :goto_3
.end method

.method private scheduleReadyPeriodicSyncs()Ljava/lang/Long;
    .locals 26

    .prologue
    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    #calls: Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v4}, Landroid/content/SyncManager;->access$300(Landroid/content/SyncManager;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v12

    .line 1503
    .local v12, backgroundDataUsageAllowed:Z
    const/4 v13, 0x0

    .line 1504
    .local v13, earliestFuturePollTime:Ljava/lang/Long;
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v4}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v13

    .line 1553
    .end local v12           #backgroundDataUsageAllowed:Z
    :goto_0
    return-object v4

    .line 1507
    .restart local v12       #backgroundDataUsageAllowed:Z
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1508
    .local v22, nowAbsolute:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v4}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/SyncStorageEngine;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v17

    .line 1509
    .local v17, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v12           #backgroundDataUsageAllowed:Z
    .local v15, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1511
    .local v16, info:Landroid/content/SyncStorageEngine$AuthorityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    #getter for: Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;
    invoke-static {v4}, Landroid/content/SyncManager;->access$1600(Landroid/content/SyncManager;)[Landroid/accounts/Account;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v4}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v4}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v4}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatus(Landroid/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/SyncStatusInfo;

    move-result-object v25

    .line 1524
    .local v25, status:Landroid/content/SyncStatusInfo;
    const/4 v14, 0x0

    .local v14, i:I
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, N:I
    :goto_1
    if-ge v14, v11, :cond_2

    .line 1525
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 1526
    .local v8, extras:Landroid/os/Bundle;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    move-object v0, v4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Long;

    .line 1528
    .local v24, periodInSeconds:Ljava/lang/Long;
    move-object/from16 v0, v25

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    move-result-wide v18

    .line 1530
    .local v18, lastPollTimeAbsolute:J
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long v20, v18, v4

    .line 1532
    .local v20, nextPollTimeAbsolute:J
    cmp-long v4, v20, v22

    if-gtz v4, :cond_4

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v12, v0

    new-instance v4, Landroid/content/SyncOperation;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    const/4 v6, 0x4

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object v7, v0

    const-wide/16 v9, 0x0

    invoke-direct/range {v4 .. v10}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;J)V

    invoke-virtual {v12, v4}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    .line 1536
    move-object/from16 v0, v25

    move v1, v14

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/SyncStatusInfo;->setPeriodicSyncTime(IJ)V

    .line 1524
    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1540
    :cond_4
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v20, v4

    if-gez v4, :cond_3

    .line 1542
    :cond_5
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_2

    .line 1548
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v11           #N:I
    .end local v14           #i:I
    .end local v16           #info:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v18           #lastPollTimeAbsolute:J
    .end local v20           #nextPollTimeAbsolute:J
    .end local v24           #periodInSeconds:Ljava/lang/Long;
    .end local v25           #status:Landroid/content/SyncStatusInfo;
    :cond_6
    if-nez v13, :cond_7

    .line 1549
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1553
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v22

    if-gez v6, :cond_8

    const-wide/16 v6, 0x0

    :goto_3
    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v6, v22

    goto :goto_3
.end method

.method private sendSyncStateIntent()V
    .locals 3

    .prologue
    .line 2015
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2016
    .local v0, syncStateIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2017
    const-string v1, "active"

    iget-object v2, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z
    invoke-static {v2}, Landroid/content/SyncManager;->access$2400(Landroid/content/SyncManager;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2018
    const-string v1, "failing"

    iget-object v2, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mNeedSyncErrorNotification:Z
    invoke-static {v2}, Landroid/content/SyncManager;->access$2500(Landroid/content/SyncManager;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2019
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/content/SyncManager;->access$1000(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2020
    return-void
.end method

.method private syncResultToErrorNumber(Landroid/content/SyncResult;)I
    .locals 4
    .parameter "syncResult"

    .prologue
    const-wide/16 v2, 0x0

    .line 1836
    iget-boolean v0, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_0

    .line 1837
    const/4 v0, 0x1

    .line 1851
    :goto_0
    return v0

    .line 1838
    :cond_0
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1839
    const/4 v0, 0x2

    goto :goto_0

    .line 1840
    :cond_1
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1841
    const/4 v0, 0x3

    goto :goto_0

    .line 1842
    :cond_2
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 1843
    const/4 v0, 0x4

    goto :goto_0

    .line 1844
    :cond_3
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 1845
    const/4 v0, 0x5

    goto :goto_0

    .line 1846
    :cond_4
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_5

    .line 1847
    const/4 v0, 0x6

    goto :goto_0

    .line 1848
    :cond_5
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v0, :cond_6

    .line 1849
    const/4 v0, 0x7

    goto :goto_0

    .line 1850
    :cond_6
    iget-boolean v0, p1, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v0, :cond_7

    .line 1851
    const/16 v0, 0x8

    goto :goto_0

    .line 1852
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "we are not in an error state, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private waitUntilReadyToRun()V
    .locals 3

    .prologue
    .line 1324
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1325
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    if-eqz v1, :cond_0

    .line 1328
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 1329
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/SyncManager$SyncHandler;->mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    :cond_0
    return-void

    .line 1331
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1332
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v6, "SyncManager"

    .line 1374
    const/4 v0, 0x0

    .line 1376
    .local v0, earliestFuturePollTime:Ljava/lang/Long;
    :try_start_0
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->waitUntilReadyToRun()V

    .line 1381
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->scheduleReadyPeriodicSyncs()Ljava/lang/Long;

    move-result-object v0

    .line 1382
    iget v6, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v6, :pswitch_data_0

    .line 1484
    :cond_0
    :goto_0
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v6

    if-eqz v6, :cond_10

    move v2, v12

    .line 1485
    .local v2, isSyncInProgress:Z
    :goto_1
    if-nez v2, :cond_1

    .line 1486
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1500(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1488
    :cond_1
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->manageSyncNotification()V

    .line 1489
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->manageErrorNotification()V

    .line 1490
    invoke-direct {p0, v0}, Landroid/content/SyncManager$SyncHandler;->manageSyncAlarm(Ljava/lang/Long;)V

    .line 1491
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    :goto_2
    invoke-virtual {v6}, Landroid/content/SyncManager$SyncTimeTracker;->update()V

    .line 1493
    return-void

    .line 1384
    .end local v2           #isSyncInProgress:Z
    :pswitch_0
    :try_start_1
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1385
    const-string v6, "SyncManager"

    const-string v7, "handleSyncHandlerMessage: MESSAGE_SYNC_FINISHED"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/SyncManager$SyncHandlerMessagePayload;

    .line 1388
    .local v4, payload:Landroid/content/SyncManager$SyncHandlerMessagePayload;
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v6

    iget-object v7, v4, Landroid/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    if-eq v6, v7, :cond_4

    .line 1389
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSyncHandlerMessage: sync context doesn\'t match, dropping: mActiveSyncContext "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v8}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1484
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v6

    if-eqz v6, :cond_f

    move v2, v12

    .line 1485
    .restart local v2       #isSyncInProgress:Z
    :goto_3
    if-nez v2, :cond_3

    .line 1486
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1500(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1488
    :cond_3
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->manageSyncNotification()V

    .line 1489
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->manageErrorNotification()V

    .line 1490
    invoke-direct {p0, v0}, Landroid/content/SyncManager$SyncHandler;->manageSyncAlarm(Ljava/lang/Long;)V

    .line 1491
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    goto :goto_2

    .line 1394
    .end local v2           #isSyncInProgress:Z
    :cond_4
    :try_start_2
    iget-object v6, v4, Landroid/content/SyncManager$SyncHandlerMessagePayload;->syncResult:Landroid/content/SyncResult;

    invoke-direct {p0, v6}, Landroid/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceled(Landroid/content/SyncResult;)V

    .line 1397
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->runStateIdle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1484
    .end local v4           #payload:Landroid/content/SyncManager$SyncHandlerMessagePayload;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v7}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v7

    if-eqz v7, :cond_e

    move v2, v12

    .line 1485
    .restart local v2       #isSyncInProgress:Z
    :goto_4
    if-nez v2, :cond_5

    .line 1486
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Landroid/content/SyncManager;->access$1500(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1488
    :cond_5
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->manageSyncNotification()V

    .line 1489
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->manageErrorNotification()V

    .line 1490
    invoke-direct {p0, v0}, Landroid/content/SyncManager$SyncHandler;->manageSyncAlarm(Ljava/lang/Long;)V

    .line 1491
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v7}, Landroid/content/SyncManager$SyncTimeTracker;->update()V

    .line 1484
    throw v6

    .line 1401
    .end local v2           #isSyncInProgress:Z
    :pswitch_1
    :try_start_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncManager$ServiceConnectionData;

    .line 1402
    .local v3, msgData:Landroid/content/SyncManager$ServiceConnectionData;
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1403
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSyncHandlerMessage: MESSAGE_SERVICE_CONNECTED:  active is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v8}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_6
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncManager$ServiceConnectionData;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    if-ne v6, v7, :cond_0

    .line 1409
    iget-object v6, v3, Landroid/content/SyncManager$ServiceConnectionData;->syncAdapter:Landroid/content/ISyncAdapter;

    invoke-direct {p0, v6}, Landroid/content/SyncManager$SyncHandler;->runBoundToSyncAdapter(Landroid/content/ISyncAdapter;)V

    goto/16 :goto_0

    .line 1415
    .end local v3           #msgData:Landroid/content/SyncManager$ServiceConnectionData;
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncManager$ServiceConnectionData;

    .line 1416
    .restart local v3       #msgData:Landroid/content/SyncManager$ServiceConnectionData;
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1417
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSyncHandlerMessage: MESSAGE_SERVICE_DISCONNECTED:  active is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v8}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_7
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncManager$ServiceConnectionData;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    if-ne v6, v7, :cond_0

    .line 1425
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v6

    iget-object v6, v6, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_8

    .line 1427
    :try_start_4
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v6

    iget-object v6, v6, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v7}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1435
    :cond_8
    :goto_5
    :try_start_5
    new-instance v5, Landroid/content/SyncResult;

    invoke-direct {v5}, Landroid/content/SyncResult;-><init>()V

    .line 1436
    .local v5, syncResult:Landroid/content/SyncResult;
    iget-object v6, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1437
    invoke-direct {p0, v5}, Landroid/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceled(Landroid/content/SyncResult;)V

    .line 1441
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->runStateIdle()V

    goto/16 :goto_0

    .line 1448
    .end local v3           #msgData:Landroid/content/SyncManager$ServiceConnectionData;
    .end local v5           #syncResult:Landroid/content/SyncResult;
    :pswitch_3
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 1449
    .local v1, isLoggable:Z
    if-eqz v1, :cond_9

    .line 1450
    const-string v6, "SyncManager"

    const-string v7, "handleSyncHandlerMessage: MESSAGE_SYNC_ALARM"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_9
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1454
    :try_start_6
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 1455
    if-eqz v1, :cond_a

    .line 1456
    const-string v6, "SyncManager"

    const-string v7, "handleSyncHandlerMessage: sync context is active"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_a
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->runStateSyncing()V

    .line 1463
    :cond_b
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v6

    if-nez v6, :cond_d

    .line 1464
    if-eqz v1, :cond_c

    .line 1465
    const-string v6, "SyncManager"

    const-string v7, "handleSyncHandlerMessage: sync context is not active"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_c
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->runStateIdle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1471
    :cond_d
    :try_start_7
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Landroid/content/SyncManager;->access$700(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Landroid/content/SyncManager;->access$700(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v6

    .line 1477
    .end local v1           #isLoggable:Z
    :pswitch_4
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1478
    const-string v6, "SyncManager"

    const-string v7, "handleSyncHandlerMessage: MESSAGE_CHECK_ALARMS"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :cond_e
    move v2, v11

    .line 1484
    goto/16 :goto_4

    .restart local v4       #payload:Landroid/content/SyncManager$SyncHandlerMessagePayload;
    :cond_f
    move v2, v11

    goto/16 :goto_3

    .end local v4           #payload:Landroid/content/SyncManager$SyncHandlerMessagePayload;
    :cond_10
    move v2, v11

    goto/16 :goto_1

    .line 1428
    .restart local v3       #msgData:Landroid/content/SyncManager$ServiceConnectionData;
    :catch_0
    move-exception v6

    goto/16 :goto_5

    .line 1382
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insertStartSyncEvent(Landroid/content/SyncOperation;)J
    .locals 7
    .parameter "syncOperation"

    .prologue
    const/4 v6, 0x0

    .line 2086
    iget v5, p1, Landroid/content/SyncOperation;->syncSource:I

    .line 2087
    .local v5, source:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2089
    .local v3, now:J
    const/16 v0, 0xaa0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    aput-object v2, v1, v6

    const/4 v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x3

    iget-object v6, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2093
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v0}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->insertStartSyncEvent(Landroid/accounts/Account;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public onBootCompleted()V
    .locals 2

    .prologue
    .line 1316
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    const/4 v1, 0x1

    #setter for: Landroid/content/SyncManager;->mBootCompleted:Z
    invoke-static {v0, v1}, Landroid/content/SyncManager;->access$1402(Landroid/content/SyncManager;Z)Z

    .line 1317
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v0}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/content/SyncManager;->access$1000(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;)V

    .line 1318
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1321
    :cond_0
    return-void
.end method

.method public stopSyncEvent(JLandroid/content/SyncOperation;Ljava/lang/String;IIJ)V
    .locals 12
    .parameter "rowId"
    .parameter "syncOperation"
    .parameter "resultMessage"
    .parameter "upstreamActivity"
    .parameter "downstreamActivity"
    .parameter "elapsedTime"

    .prologue
    .line 2099
    const/16 v2, 0xaa0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p3, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p3, Landroid/content/SyncOperation;->syncSource:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p3, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2103
    iget-object v2, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v2}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v2

    move/from16 v0, p6

    int-to-long v0, v0

    move-wide v8, v0

    move/from16 v0, p5

    int-to-long v0, v0

    move-wide v10, v0

    move-wide v3, p1

    move-wide/from16 v5, p7

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v11}, Landroid/content/SyncStorageEngine;->stopSyncEvent(JJLjava/lang/String;JJ)V

    .line 2105
    return-void
.end method
