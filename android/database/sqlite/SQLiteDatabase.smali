.class public Landroid/database/sqlite/SQLiteDatabase;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;,
        Landroid/database/sqlite/SQLiteDatabase$CursorFactory;,
        Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;
    }
.end annotation


# static fields
.field private static final COMMIT_SQL:Ljava/lang/String; = "COMMIT;"

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String; = null

.field public static final CREATE_IF_NECESSARY:I = 0x10000000

.field private static final EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field private static final EVENT_DB_OPERATION:I = 0xcb20

.field static final GET_LOCK_LOG_PREFIX:Ljava/lang/String; = "GETLOCK:"

.field private static final LOCK_ACQUIRED_WARNING_THREAD_TIME_IN_MS:I = 0x64

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS:I = 0x12c

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS_ALWAYS_PRINT:I = 0x7d0

.field private static final LOCK_WARNING_WINDOW_IN_MS:I = 0x4e20

.field private static final LOG_SLOW_QUERIES_PROPERTY:Ljava/lang/String; = "db.log.slow_query_threshold"

.field public static final MAX_SQL_CACHE_SIZE:I = 0xfa

.field private static final MAX_WARNINGS_ON_CACHESIZE_CONDITION:I = 0x1

.field public static final NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x0

.field private static final OPEN_READ_MASK:I = 0x1

.field private static final QUERY_LOG_SQL_LENGTH:I = 0x40

.field private static final SLEEP_AFTER_YIELD_QUANTUM:I = 0x3e8

.field public static final SQLITE_MAX_LIKE_PATTERN_LENGTH:I = 0xc350

.field private static final TAG:Ljava/lang/String; = "Database"

.field private static sQueryLogTimeInMillis:I


# instance fields
.field private DBG:Z

.field private mCacheFullWarnings:I

.field mCompiledQueries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteCompiledSql;",
            ">;"
        }
    .end annotation
.end field

.field private mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mFlags:I

.field private mInnerTransactionIsSuccessful:Z

.field private mLastLockMessageTime:J

.field private mLastSqlStatement:Ljava/lang/String;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mLockAcquiredThreadTime:J

.field private mLockAcquiredWallTime:J

.field private mLockingEnabled:Z

.field private mMaxSqlCacheSize:I

.field mNativeHandle:I

.field private mNumCacheHits:I

.field private mNumCacheMisses:I

.field private mPath:Ljava/lang/String;

.field private mPathForLogs:Ljava/lang/String;

.field private mPrograms:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/database/sqlite/SQLiteClosable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;

.field private final mSlowQueryThreshold:I

.field private mStackTrace:Ljava/lang/Throwable;

.field private final mSyncUpdateInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTempTableSequence:I

.field private mTimeClosed:Ljava/lang/String;

.field private mTimeOpened:Ljava/lang/String;

.field private mTransactionIsSuccessful:Z

.field private mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, " OR ROLLBACK "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " OR ABORT "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " OR FAIL "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " OR IGNORE "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " OR REPLACE "

    aput-object v2, v0, v1

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 215
    const-string v0, "[\\w\\.\\-]+@[\\w\\.\\-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    .line 228
    sput v3, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 7
    .parameter "path"
    .parameter "factory"
    .parameter "flags"

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1842
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 74
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->DBG:Z

    .line 198
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1, v6}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 200
    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 201
    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 217
    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    .line 231
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mRandom:Ljava/util/Random;

    .line 232
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    .line 239
    iput v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    .line 242
    iput v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTempTableSequence:I

    .line 248
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 274
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    .line 279
    const/16 v1, 0xfa

    iput v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I

    .line 288
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    .line 289
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 292
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 352
    iput-boolean v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    .line 742
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    .line 1843
    if-nez p1, :cond_0

    .line 1844
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "path should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1846
    :cond_0
    iput p3, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    .line 1847
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    .line 1848
    const-string v1, "db.log.slow_query_threshold"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    .line 1849
    new-instance v1, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v1}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v1}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 1850
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDatabase;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 1851
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    iget v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    invoke-direct {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->dbopen(Ljava/lang/String;I)V

    .line 1852
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v1, :cond_1

    .line 1853
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    .line 1855
    :cond_1
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    .line 1857
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1866
    return-void

    .line 1858
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1859
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Database"

    const-string v2, "Failed to setLocale() when constructing, closing the database"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1860
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->dbclose()V

    .line 1861
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v1, :cond_2

    .line 1862
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 1864
    :cond_2
    throw v0
.end method

.method private checkLockHoldTime()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x7d0

    const-string v10, "Database"

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 441
    .local v0, elapsedTime:J
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    sub-long v2, v0, v6

    .line 442
    .local v2, lockedTime:J
    cmp-long v6, v2, v11

    if-gez v6, :cond_1

    const-string v6, "Database"

    const/4 v6, 0x2

    invoke-static {v10, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-wide v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x4e20

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    const-wide/16 v6, 0x12c

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 448
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 450
    .local v5, threadTime:I
    const/16 v6, 0x64

    if-gt v5, v6, :cond_2

    cmp-long v6, v2, v11

    if-lez v6, :cond_0

    .line 452
    :cond_2
    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    .line 453
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lock held on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms. Thread time was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 455
    .local v4, msg:Ljava/lang/String;
    sget-boolean v6, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING_STACK_TRACE:Z

    if-eqz v6, :cond_3

    .line 456
    const-string v6, "Database"

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v10, v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 458
    :cond_3
    const-string v6, "Database"

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private closeClosable()V
    .locals 4

    .prologue
    .line 900
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->deallocCachedSqlStatements()V

    .line 902
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 903
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 904
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 905
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteClosable;

    .line 906
    .local v2, program:Landroid/database/sqlite/SQLiteClosable;
    if-eqz v2, :cond_0

    .line 907
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    goto :goto_0

    .line 910
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    .end local v2           #program:Landroid/database/sqlite/SQLiteClosable;
    :cond_1
    return-void
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .parameter "factory"

    .prologue
    .line 872
    const-string v0, ":memory:"

    const/high16 v1, 0x1000

    invoke-static {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private native dbclose()V
.end method

.method private native dbopen(Ljava/lang/String;I)V
.end method

.method private deallocCachedSqlStatements()V
    .locals 4

    .prologue
    .line 2066
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v2

    .line 2067
    :try_start_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCompiledSql;

    .line 2068
    .local v0, compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V

    goto :goto_0

    .line 2071
    .end local v0           #compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2070
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 2071
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2072
    return-void
.end method

.method private native enableSqlProfiling(Ljava/lang/String;)V
.end method

.method private native enableSqlTracing(Ljava/lang/String;)V
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "tables"

    .prologue
    const/4 v3, 0x0

    .line 1117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1119
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1120
    .local v1, spacepos:I
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1122
    .local v0, commapos:I
    if-lez v1, :cond_1

    if-lt v1, v0, :cond_0

    if-gez v0, :cond_1

    .line 1123
    :cond_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1127
    :goto_0
    return-object v2

    .line 1124
    :cond_1
    if-lez v0, :cond_3

    if-lt v0, v1, :cond_2

    if-gez v1, :cond_3

    .line 1125
    :cond_2
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, p0

    .line 1127
    goto :goto_0

    .line 1129
    .end local v0           #commapos:I
    .end local v1           #spacepos:I
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid tables"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getAttachedDbs(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 5
    .parameter "dbObj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2255
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v3

    .line 2264
    :goto_0
    return-object v2

    .line 2258
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2259
    .local v0, attachedDbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string/jumbo v2, "pragma database_list;"

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2260
    .local v1, c:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2261
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2263
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v2, v0

    .line 2264
    goto :goto_0
.end method

.method static getDbStats()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2182
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2183
    .local v9, dbStatsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;->getInstance()Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;

    move-result-object v0

    #getter for: Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;->mActiveDatabases:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;->access$000(Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 2184
    .local v0, w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/sqlite/SQLiteDatabase;

    .line 2185
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    .end local v0           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    if-eqz v0, :cond_0

    .line 2189
    invoke-direct {v8}, Landroid/database/sqlite/SQLiteDatabase;->native_getDbLookaside()I

    move-result v6

    .line 2192
    .local v6, lookasideUsed:I
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2193
    .local v1, path:Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2194
    .local v0, indx:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 2197
    .local v12, lastnode:Ljava/lang/String;
    invoke-static {v8}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v7

    .line 2198
    .local v7, attachedDbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v7, :cond_0

    .line 2201
    const/4 v0, 0x0

    .local v0, i:I
    move v10, v0

    .end local v0           #i:I
    .end local v1           #path:Ljava/lang/String;
    .local v10, i:I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_0

    .line 2202
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2203
    .local v4, p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".page_count;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->getPragmaVal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    .line 2208
    .local v2, pageCount:J
    if-nez v10, :cond_4

    .line 2209
    move-object v1, v12

    .line 2220
    .end local v4           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, dbName:Ljava/lang/String;
    :cond_1
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 2221
    new-instance v0, Landroid/database/sqlite/SQLiteDebug$DbStats;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v4

    invoke-direct/range {v0 .. v6}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2201
    :cond_2
    add-int/lit8 v0, v10, 0x1

    .end local v10           #i:I
    .restart local v0       #i:I
    move v10, v0

    .end local v0           #i:I
    .restart local v10       #i:I
    goto :goto_1

    .line 2194
    .end local v2           #pageCount:J
    .end local v7           #attachedDbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10           #i:I
    .end local v12           #lastnode:Ljava/lang/String;
    .local v0, indx:I
    .local v1, path:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 2212
    .end local v0           #indx:I
    .end local v1           #path:Ljava/lang/String;
    .restart local v2       #pageCount:J
    .restart local v4       #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7       #attachedDbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v10       #i:I
    .restart local v12       #lastnode:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    .line 2213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  (attached) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2215
    .local v1, dbName:Ljava/lang/String;
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2216
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2217
    .local v0, idx:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #dbName:Ljava/lang/String;
    const-string v5, " : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    .end local v4           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v0, v0, 0x1

    move v4, v0

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .end local v0           #idx:I
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #dbName:Ljava/lang/String;
    goto :goto_2

    .end local v1           #dbName:Ljava/lang/String;
    .restart local v0       #idx:I
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 2226
    .end local v0           #idx:I
    .end local v2           #pageCount:J
    .end local v6           #lookasideUsed:I
    .end local v7           #attachedDbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #i:I
    .end local v12           #lastnode:Ljava/lang/String;
    :cond_6
    return-object v9
.end method

.method private getPathForLogs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1976
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1977
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 1987
    :goto_0
    return-object v0

    .line 1979
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1980
    const/4 v0, 0x0

    goto :goto_0

    .line 1982
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1983
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 1987
    :goto_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_0

    .line 1985
    :cond_2
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "XX@YY"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getPragmaVal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 6
    .parameter "db"
    .parameter "pragma"

    .prologue
    .line 2236
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2237
    const-wide/16 v4, 0x0

    .line 2243
    :goto_0
    return-wide v4

    .line 2239
    :cond_0
    const/4 v0, 0x0

    .line 2241
    .local v0, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    new-instance v1, Landroid/database/sqlite/SQLiteStatement;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRAGMA "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2242
    .end local v0           #prog:Landroid/database/sqlite/SQLiteStatement;
    .local v1, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 2245
    .local v2, val:J
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    move-wide v4, v2

    .line 2243
    goto :goto_0

    .line 2245
    .end local v1           #prog:Landroid/database/sqlite/SQLiteStatement;
    .end local v2           #val:J
    .restart local v0       #prog:Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v4

    .end local v0           #prog:Landroid/database/sqlite/SQLiteStatement;
    .restart local v1       #prog:Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #prog:Landroid/database/sqlite/SQLiteStatement;
    .restart local v0       #prog:Landroid/database/sqlite/SQLiteStatement;
    goto :goto_1
.end method

.method private getTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1869
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private lockForced()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 400
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 404
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 407
    :cond_0
    return-void
.end method

.method private markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "table"
    .parameter "foreignKey"
    .parameter "updateTable"
    .parameter "deletedTable"

    .prologue
    const-string v1, " LIMIT 0"

    .line 1075
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1077
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT _sync_dirty FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIMIT 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V

    .line 1079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIMIT 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1085
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;

    invoke-direct {v0, p3, p4, p2}, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    .local v0, info:Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v1

    .line 1088
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1090
    return-void

    .line 1082
    .end local v0           #info:Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v1

    .line 1089
    .restart local v0       #info:Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private native native_getDbLookaside()I
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    .locals 6
    .parameter "path"
    .parameter "factory"
    .parameter "flags"

    .prologue
    .line 819
    const/4 v1, 0x0

    .line 822
    .local v1, sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    .end local v1           #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    .local v2, sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    if-eqz v3, :cond_0

    .line 824
    invoke-direct {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->enableSqlTracing(Ljava/lang/String;)V

    .line 826
    :cond_0
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_TIME:Z

    if-eqz v3, :cond_1

    .line 827
    invoke-direct {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->enableSqlProfiling(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v1, v2

    .line 840
    .end local v2           #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;->getInstance()Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;

    move-result-object v3

    #getter for: Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;->mActiveDatabases:Ljava/util/HashSet;
    invoke-static {v3}, Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;->access$000(Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;)Ljava/util/HashSet;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 842
    return-object v1

    .line 829
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 832
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :goto_1
    const-string v3, "Database"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting and re-creating corrupt database "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 833
    const v3, 0x124fc

    invoke-static {v3, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 834
    const-string v3, ":memory"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 836
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 838
    :cond_2
    new-instance v1, Landroid/database/sqlite/SQLiteDatabase;

    .end local v1           #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v1, p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .restart local v1       #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_0

    .line 829
    .end local v0           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .end local v1           #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_1
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "file"
    .parameter "factory"

    .prologue
    .line 849
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "path"
    .parameter "factory"

    .prologue
    .line 856
    const/high16 v0, 0x1000

    invoke-static {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static native releaseMemory()I
.end method

.method private unlockForced()V
    .locals 2

    .prologue
    .line 430
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 432
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->checkLockHoldTime()V

    .line 435
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 436
    return-void
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .locals 10
    .parameter "checkFullyYielded"
    .parameter "sleepAfterYieldDelay"

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x3e8

    .line 702
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v4

    if-nez v4, :cond_0

    .line 705
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 706
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 707
    const/4 v4, 0x0

    .line 737
    :goto_0
    return v4

    .line 709
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 710
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 711
    .local v3, transactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 712
    if-eqz p1, :cond_1

    .line 713
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 714
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Db locked more than once. yielfIfContended cannot yield"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 718
    :cond_1
    cmp-long v4, p2, v8

    if-lez v4, :cond_3

    .line 722
    move-wide v1, p2

    .line 723
    .local v1, remainingDelay:J
    :cond_2
    cmp-long v4, v1, v8

    if-lez v4, :cond_3

    .line 725
    cmp-long v4, v1, v6

    if-gez v4, :cond_4

    move-wide v4, v1

    :goto_1
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :goto_2
    sub-long/2addr v1, v6

    .line 731
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v4

    if-nez v4, :cond_2

    .line 736
    .end local v1           #remainingDelay:J
    :cond_3
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 737
    const/4 v4, 0x1

    goto :goto_0

    .restart local v1       #remainingDelay:J
    :cond_4
    move-wide v4, v6

    .line 725
    goto :goto_1

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_2
.end method


# virtual methods
.method addSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V
    .locals 2
    .parameter "closable"

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 304
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 308
    return-void

    .line 306
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method addToCompiledQueries(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V
    .locals 6
    .parameter "sql"
    .parameter "compiledStatement"

    .prologue
    const-string/jumbo v5, "|"

    const-string v4, "Database"

    .line 2021
    iget v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-nez v2, :cond_1

    .line 2023
    sget-boolean v2, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v2, :cond_0

    .line 2024
    const-string v2, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "|NOT adding_sql_to_cache|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    :cond_0
    :goto_0
    return-void

    .line 2029
    :cond_1
    const/4 v1, 0x0

    .line 2030
    .local v1, compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v3

    .line 2032
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteCompiledSql;

    move-object v1, v0

    .line 2033
    if-eqz v1, :cond_2

    .line 2034
    monitor-exit v3

    goto :goto_0

    .line 2060
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2037
    :cond_2
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-ne v2, v4, :cond_5

    .line 2045
    iget v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCacheFullWarnings:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCacheFullWarnings:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 2046
    const-string v2, "Database"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reached MAX size for compiled-sql statement cache for database "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; i.e., NO space for this sql statement in cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/database/sqlite/SQLiteDatabase;->DBG:Z

    if-eqz v5, :cond_4

    move-object v5, p1

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Please change your sql statements to use \'?\' for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bindargs, instead of using actual values"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_3
    :goto_2
    monitor-exit v3

    goto :goto_0

    .line 2046
    :cond_4
    const-string v5, ""

    goto :goto_1

    .line 2054
    :cond_5
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    sget-boolean v2, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v2, :cond_3

    .line 2056
    const-string v2, "Database"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "|adding_sql_to_cache|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public beginTransaction()V
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 484
    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 5
    .parameter "transactionListener"

    .prologue
    const/4 v4, 0x1

    .line 508
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->lockForced()V

    .line 509
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 510
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "database not open"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 512
    :cond_0
    const/4 v2, 0x0

    .line 515
    .local v2, ok:Z
    :try_start_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v3

    if-le v3, v4, :cond_4

    .line 516
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v3, :cond_2

    .line 517
    const-string v1, "Cannot call beginTransaction between calling setTransactionSuccessful and endTransaction"

    .line 519
    .local v1, msg:Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 520
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "Database"

    const-string v4, "beginTransaction() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #msg:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-nez v2, :cond_1

    .line 546
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    :cond_1
    throw v3

    .line 523
    :cond_2
    const/4 v2, 0x1

    .line 543
    if-nez v2, :cond_3

    .line 546
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    .line 549
    :cond_3
    :goto_0
    return-void

    .line 529
    :cond_4
    :try_start_1
    const-string v3, "BEGIN EXCLUSIVE;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 530
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 531
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    .line 532
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    if-eqz p1, :cond_5

    .line 535
    :try_start_2
    invoke-interface {p1}, Landroid/database/sqlite/SQLiteTransactionListener;->onBegin()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 541
    :cond_5
    const/4 v2, 0x1

    .line 543
    if-nez v2, :cond_3

    .line 546
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v3, "ROLLBACK;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 538
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 879
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    :goto_0
    return-void

    .line 882
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 884
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeClosable()V

    .line 886
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onAllReferencesReleased()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .locals 2
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1146
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1147
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1151
    :cond_0
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {v0, p0, p1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "table"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 1618
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v4

    invoke-interface {v4}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 1619
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1620
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1621
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "database not open"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1623
    :cond_0
    const/4 v3, 0x0

    .line 1625
    .local v3, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 1628
    if-eqz p3, :cond_2

    .line 1629
    array-length v2, p3

    .line 1630
    .local v2, numArgs:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1631
    add-int/lit8 v4, v1, 0x1

    aget-object v5, p3, v1

    invoke-static {v3, v4, v5}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1630
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1625
    .end local v1           #i:I
    .end local v2           #numArgs:I
    :cond_1
    const-string v5, ""

    goto :goto_0

    .line 1634
    :cond_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1635
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lastChangeCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1640
    if-eqz v3, :cond_3

    .line 1641
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1643
    :cond_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1635
    return v4

    .line 1636
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1637
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1638
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1640
    .end local v0           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    .line 1641
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1643
    :cond_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1640
    throw v4
.end method

.method public endTransaction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 556
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 557
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "database not open"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 559
    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-nez v2, :cond_1

    .line 560
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "no transaction pending"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 563
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v2, :cond_2

    .line 564
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 568
    :goto_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 600
    iput-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 601
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    .line 607
    :goto_1
    return-void

    .line 566
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 600
    :catchall_0
    move-exception v2

    iput-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 601
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    throw v2

    .line 571
    :cond_3
    const/4 v1, 0x0

    .line 572
    .local v1, savedException:Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    .line 574
    :try_start_3
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v2, :cond_6

    .line 575
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {v2}, Landroid/database/sqlite/SQLiteTransactionListener;->onCommit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 584
    :cond_4
    :goto_2
    :try_start_4
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v2, :cond_7

    .line 585
    const-string v2, "COMMIT;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 600
    :cond_5
    :goto_3
    iput-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 601
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    goto :goto_1

    .line 577
    :cond_6
    :try_start_5
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {v2}, Landroid/database/sqlite/SQLiteTransactionListener;->onRollback()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 579
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 580
    .local v0, e:Ljava/lang/RuntimeException;
    move-object v1, v0

    .line 581
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 588
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_7
    :try_start_7
    const-string v2, "ROLLBACK;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 589
    if-eqz v1, :cond_5

    .line 590
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1

    .line 592
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 594
    .local v0, e:Landroid/database/SQLException;
    :try_start_8
    const-string v2, "Database"

    const-string v3, "exception during rollback, maybe the DB previously performed an auto-rollback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 6
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const-string v5, "COMMIT;"

    .line 1757
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 1758
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1759
    .local v1, timeStart:J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1760
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1761
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "database not open"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1763
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    const-string v4, "GETLOCK:"

    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 1765
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1770
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1776
    const-string v3, "COMMIT;"

    if-ne p1, v5, :cond_1

    .line 1777
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    const-string v4, "COMMIT;"

    invoke-virtual {p0, v3, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 1781
    :goto_0
    return-void

    .line 1766
    :catch_0
    move-exception v0

    .line 1767
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1768
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1770
    .end local v0           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v3

    .line 1779
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .parameter "sql"
    .parameter "bindArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1793
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v6

    invoke-interface {v6}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 1794
    if-nez p2, :cond_0

    .line 1795
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Empty bindArgs"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1797
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1798
    .local v4, timeStart:J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1799
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1800
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "database not open"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1802
    :cond_1
    const/4 v3, 0x0

    .line 1804
    .local v3, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 1805
    if-eqz p2, :cond_2

    .line 1806
    array-length v2, p2

    .line 1807
    .local v2, numArgs:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1808
    add-int/lit8 v6, v1, 0x1

    aget-object v7, p2, v1

    invoke-static {v3, v6, v7}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1807
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1811
    .end local v1           #i:I
    .end local v2           #numArgs:I
    :cond_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1816
    if-eqz v3, :cond_3

    .line 1817
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1819
    :cond_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1821
    invoke-virtual {p0, p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V

    .line 1822
    return-void

    .line 1812
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 1813
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1814
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1816
    .end local v0           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_4

    .line 1817
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1819
    :cond_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1816
    throw v6
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 1826
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1827
    const-string v0, "Database"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() was never explicitly called on database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1829
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeClosable()V

    .line 1830
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onAllReferencesReleased()V

    .line 1832
    :cond_0
    return-void
.end method

.method getCompiledStatementForSql(Ljava/lang/String;)Landroid/database/sqlite/SQLiteCompiledSql;
    .locals 7
    .parameter "sql"

    .prologue
    const-string v6, "Database"

    const-string/jumbo v5, "|"

    .line 2079
    const/4 v2, 0x0

    .line 2081
    .local v2, compiledStatement:Landroid/database/sqlite/SQLiteCompiledSql;
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v4

    .line 2082
    :try_start_0
    iget v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-nez v3, :cond_1

    .line 2084
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v3, :cond_0

    .line 2085
    const-string v3, "Database"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "|cache NOT found|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    :cond_0
    const/4 v3, 0x0

    monitor-exit v4

    .line 2103
    :goto_0
    return-object v3

    .line 2089
    :cond_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteCompiledSql;

    move-object v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    move v1, v3

    .line 2090
    .local v1, cacheHit:Z
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2091
    if-eqz v1, :cond_4

    .line 2092
    iget v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mNumCacheHits:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mNumCacheHits:I

    .line 2097
    :goto_2
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v3, :cond_2

    .line 2098
    const-string v3, "Database"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "|cache_stats|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mNumCacheHits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mNumCacheMisses:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v3, v2

    .line 2103
    goto/16 :goto_0

    .line 2089
    .end local v1           #cacheHit:Z
    :cond_3
    const/4 v3, 0x0

    move v1, v3

    goto/16 :goto_1

    .line 2090
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2094
    .restart local v1       #cacheHit:Z
    :cond_4
    iget v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mNumCacheMisses:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mNumCacheMisses:I

    goto/16 :goto_2
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ""

    .line 1901
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1902
    const-string v1, ""

    move-object v1, v3

    .line 1908
    :goto_0
    return-object v1

    .line 1904
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1905
    .local v0, lastIndex:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1906
    const-string v1, ""

    move-object v1, v3

    goto :goto_0

    .line 1908
    :cond_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized getMaxSqlCacheSize()I
    .locals 1

    .prologue
    .line 2141
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaximumSize()J
    .locals 6

    .prologue
    .line 953
    const/4 v2, 0x0

    .line 954
    .local v2, prog:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 955
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 956
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "database not open"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 959
    :cond_0
    :try_start_0
    new-instance v3, Landroid/database/sqlite/SQLiteStatement;

    const-string v4, "PRAGMA max_page_count;"

    invoke-direct {v3, p0, v4}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    .end local v2           #prog:Landroid/database/sqlite/SQLiteStatement;
    .local v3, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    .line 962
    .local v0, pageCount:J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    mul-long/2addr v4, v0

    .line 964
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 965
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    return-wide v4

    .line 964
    .end local v0           #pageCount:J
    .end local v3           #prog:Landroid/database/sqlite/SQLiteStatement;
    .restart local v2       #prog:Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 965
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v4

    .line 964
    .end local v2           #prog:Landroid/database/sqlite/SQLiteStatement;
    .restart local v3       #prog:Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #prog:Landroid/database/sqlite/SQLiteStatement;
    .restart local v2       #prog:Landroid/database/sqlite/SQLiteStatement;
    goto :goto_0
.end method

.method public getPageSize()J
    .locals 6

    .prologue
    .line 1005
    const/4 v0, 0x0

    .line 1006
    .local v0, prog:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1007
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1008
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "database not open"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1011
    :cond_0
    :try_start_0
    new-instance v1, Landroid/database/sqlite/SQLiteStatement;

    const-string v4, "PRAGMA page_size;"

    invoke-direct {v1, p0, v4}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    .end local v0           #prog:Landroid/database/sqlite/SQLiteStatement;
    .local v1, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 1016
    .local v2, size:J
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1017
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    return-wide v2

    .line 1016
    .end local v1           #prog:Landroid/database/sqlite/SQLiteStatement;
    .end local v2           #size:J
    .restart local v0       #prog:Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v4

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1017
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v4

    .line 1016
    .end local v0           #prog:Landroid/database/sqlite/SQLiteStatement;
    .restart local v1       #prog:Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #prog:Landroid/database/sqlite/SQLiteStatement;
    .restart local v0       #prog:Landroid/database/sqlite/SQLiteStatement;
    goto :goto_0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1897
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncedTables()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v4

    .line 747
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 748
    .local v3, tables:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 749
    .local v2, table:Ljava/lang/String;
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;

    .line 750
    .local v1, info:Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;
    iget-object v5, v1, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;->deletedTable:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 751
    iget-object v5, v1, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;->deletedTable:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 755
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;
    .end local v2           #table:Ljava/lang/String;
    .end local v3           #tables:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 754
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #tables:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public getVersion()I
    .locals 6

    .prologue
    .line 923
    const/4 v0, 0x0

    .line 924
    .local v0, prog:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 925
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 926
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "database not open"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 929
    :cond_0
    :try_start_0
    new-instance v1, Landroid/database/sqlite/SQLiteStatement;

    const-string v4, "PRAGMA user_version;"

    invoke-direct {v1, p0, v4}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    .end local v0           #prog:Landroid/database/sqlite/SQLiteStatement;
    .local v1, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 931
    .local v2, version:J
    long-to-int v4, v2

    .line 933
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 934
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    return v4

    .line 933
    .end local v1           #prog:Landroid/database/sqlite/SQLiteStatement;
    .end local v2           #version:J
    .restart local v0       #prog:Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v4

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 934
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v4

    .line 933
    .end local v0           #prog:Landroid/database/sqlite/SQLiteStatement;
    .restart local v1       #prog:Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #prog:Landroid/database/sqlite/SQLiteStatement;
    .restart local v0       #prog:Landroid/database/sqlite/SQLiteStatement;
    goto :goto_0
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    .line 1428
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1431
    :goto_0
    return-wide v1

    .line 1429
    :catch_0
    move-exception v0

    .line 1430
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->DBG:Z

    if-eqz v3, :cond_0

    move-object v3, p3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1431
    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    move-object v3, p1

    .line 1430
    goto :goto_1
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1454
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 17
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"
    .parameter "conflictAlgorithm"

    .prologue
    .line 1526
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v14

    invoke-interface {v14}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 1527
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v14

    if-nez v14, :cond_0

    .line 1528
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "database not open"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1532
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v14, 0x98

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1533
    .local v11, sql:Ljava/lang/StringBuilder;
    const-string v14, "INSERT"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    sget-object v14, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v14, v14, p4

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    const-string v14, " INTO "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v14, 0x28

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1540
    .local v13, values:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 1541
    .local v5, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v14

    if-lez v14, :cond_3

    .line 1542
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    .line 1543
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1544
    .local v3, entriesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/16 v14, 0x28

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1546
    const/4 v9, 0x0

    .line 1547
    .end local p1
    .local v9, needSeparator:Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1548
    if-eqz v9, :cond_1

    .line 1549
    const-string v14, ", "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    :cond_1
    const/4 v9, 0x1

    .line 1553
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1554
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    const/16 v14, 0x3f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1558
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const/16 v14, 0x29

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1564
    .end local v3           #entriesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v9           #needSeparator:Z
    :goto_1
    const-string v14, " VALUES("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1566
    const-string v14, ");"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1569
    const/4 v12, 0x0

    .line 1571
    .local v12, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 1574
    if-eqz v5, :cond_4

    .line 1575
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v10

    .line 1576
    .local v10, size:I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1577
    .restart local v3       #entriesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v10, :cond_4

    .line 1578
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1579
    .restart local v4       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v14, v6, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v12, v14, v15}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1577
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1560
    .end local v3           #entriesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #i:I
    .end local v10           #size:I
    .end local v12           #statement:Landroid/database/sqlite/SQLiteStatement;
    .restart local p1
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    const-string v14, "NULL"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1584
    .end local p1
    .restart local v12       #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_4
    :try_start_1
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1586
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->lastInsertRow()J

    move-result-wide v7

    .line 1587
    .local v7, insertedRowId:J
    const-wide/16 v14, -0x1

    cmp-long v14, v7, v14

    if-nez v14, :cond_7

    .line 1588
    const-string v14, "Database"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error inserting "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " using "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1600
    :cond_5
    :goto_3
    if-eqz v12, :cond_6

    .line 1601
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1603
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1595
    return-wide v7

    .line 1590
    :cond_7
    :try_start_2
    const-string v14, "Database"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1591
    const-string v14, "Database"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Inserting row "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " using "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 1596
    .end local v7           #insertedRowId:J
    :catch_0
    move-exception v14

    move-object v2, v14

    .line 1597
    .local v2, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1598
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1600
    .end local v2           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v14

    if-eqz v12, :cond_8

    .line 1601
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1603
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1600
    throw v14
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public isDbLockedByOtherThreads()Z
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInCompiledSqlCache(Ljava/lang/String;)Z
    .locals 2
    .parameter "sql"

    .prologue
    .line 2111
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v0

    .line 2112
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 1884
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1877
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method native lastChangeCount()I
.end method

.method native lastInsertRow()J
.end method

.method lock()V
    .locals 2

    .prologue
    .line 379
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 381
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 384
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 385
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    goto :goto_0
.end method

.method logTimeStat(Ljava/lang/String;J)V
    .locals 1
    .parameter "sql"
    .parameter "beginMillis"

    .prologue
    .line 1912
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 1913
    return-void
.end method

.method logTimeStat(Ljava/lang/String;JLjava/lang/String;)V
    .locals 10
    .parameter "sql"
    .parameter "beginMillis"
    .parameter "prefix"

    .prologue
    const/16 v9, 0x40

    const/4 v8, 0x0

    .line 1919
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    .line 1926
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v1, v4, p2

    .line 1927
    .local v1, durationMillis:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    const-string v4, "GETLOCK:"

    if-ne p4, v4, :cond_0

    .line 1968
    :goto_0
    return-void

    .line 1932
    :cond_0
    sget v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    if-nez v4, :cond_1

    .line 1933
    const-string v4, "db.db_operation.threshold_ms"

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    .line 1935
    :cond_1
    sget v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-ltz v4, :cond_6

    .line 1936
    const/16 v3, 0x64

    .line 1944
    .local v3, samplePercent:I
    :cond_2
    if-eqz p4, :cond_3

    .line 1945
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1948
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_4

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1958
    :cond_4
    invoke-static {}, Landroid/app/AppGlobals;->getInitialPackage()Ljava/lang/String;

    move-result-object v0

    .line 1959
    .local v0, blockingPackage:Ljava/lang/String;
    if-nez v0, :cond_5

    const-string v0, ""

    .line 1961
    :cond_5
    const v4, 0xcb20

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPathForLogs()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    const/4 v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 1938
    .end local v0           #blockingPackage:Ljava/lang/String;
    .end local v3           #samplePercent:I
    :cond_6
    const-wide/16 v4, 0x64

    mul-long/2addr v4, v1

    sget v6, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    long-to-int v4, v4

    add-int/lit8 v3, v4, 0x1

    .line 1939
    .restart local v3       #samplePercent:I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mRandom:Ljava/util/Random;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-lt v4, v3, :cond_2

    goto :goto_0
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "table"
    .parameter "deletedTable"

    .prologue
    .line 1041
    const-string v0, "_id"

    invoke-direct {p0, p1, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "table"
    .parameter "foreignKey"
    .parameter "updateTable"

    .prologue
    .line 1057
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    return-void
.end method

.method native native_execSQL(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method native native_setLocale(Ljava/lang/String;I)V
.end method

.method public needUpgrade(I)Z
    .locals 1
    .parameter "newVersion"

    .prologue
    .line 1888
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAllReferencesReleased()V
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_0

    .line 323
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 325
    :cond_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->dbclose()V

    .line 327
    :cond_1
    return-void
.end method

.method onCorruption()V
    .locals 4

    .prologue
    const-string v3, ":memory"

    .line 355
    const-string v0, "Database"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing corrupt database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const v0, 0x124fc

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 359
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v1, ":memory"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 368
    :cond_0
    return-void

    .line 363
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v2, ":memory"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 365
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    throw v0
.end method

.method public purgeFromCompiledSqlCache(Ljava/lang/String;)V
    .locals 2
    .parameter "sql"

    .prologue
    .line 2121
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v0

    .line 2122
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2123
    monitor-exit v0

    .line 2124
    return-void

    .line 2123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"

    .prologue
    .line 1273
    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 1311
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 1191
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "cursorFactory"
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 1231
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 1234
    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1237
    .local v8, sql:Ljava/lang/String;
    invoke-static {p3}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v8, p6, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "sql"
    .parameter "selectionArgs"

    .prologue
    const/4 v0, 0x0

    .line 1326
    invoke-virtual {p0, v0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;II)Landroid/database/Cursor;
    .locals 2
    .parameter "sql"
    .parameter "selectionArgs"
    .parameter "initialRead"
    .parameter "maxRead"

    .prologue
    const/4 v1, 0x0

    .line 1404
    invoke-virtual {p0, v1, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    .line 1406
    .local v0, c:Landroid/database/sqlite/SQLiteCursor;
    invoke-virtual {v0, p3, p4}, Landroid/database/sqlite/SQLiteCursor;->setLoadStyle(II)V

    .line 1407
    return-object v0
.end method

.method public rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "cursorFactory"
    .parameter "sql"
    .parameter "selectionArgs"
    .parameter "editTable"

    .prologue
    .line 1344
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1345
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "database not open"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1347
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v7

    invoke-interface {v7}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 1348
    const-wide/16 v5, 0x0

    .line 1350
    .local v5, timeStart:J
    iget v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 1351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1354
    :cond_1
    new-instance v2, Landroid/database/sqlite/SQLiteDirectCursorDriver;

    invoke-direct {v2, p0, p2, p4}, Landroid/database/sqlite/SQLiteDirectCursorDriver;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    .local v2, driver:Landroid/database/sqlite/SQLiteCursorDriver;
    const/4 v1, 0x0

    .line 1358
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_4

    move-object v7, p1

    :goto_0
    :try_start_0
    invoke-interface {v2, v7, p3}, Landroid/database/sqlite/SQLiteCursorDriver;->query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1362
    iget v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 1365
    const/4 v0, -0x1

    .line 1366
    .local v0, count:I
    if-eqz v1, :cond_2

    .line 1367
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1370
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v3, v7, v5

    .line 1372
    .local v3, duration:J
    iget v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-ltz v7, :cond_3

    .line 1373
    const-string v7, "Cursor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "query ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", args are "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p3, :cond_8

    const-string v9, ","

    invoke-static {v9, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", count is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    .end local v0           #count:I
    .end local v3           #duration:J
    :cond_3
    return-object v1

    .line 1358
    :cond_4
    :try_start_1
    iget-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1373
    .restart local v0       #count:I
    .restart local v3       #duration:J
    :cond_5
    const-string v10, "<null>"

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", count is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    .end local v0           #count:I
    .end local v3           #duration:J
    :cond_6
    throw v7

    :catchall_0
    move-exception v7

    iget v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    .line 1365
    const/4 v0, -0x1

    .line 1366
    .restart local v0       #count:I
    if-eqz v1, :cond_7

    .line 1367
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1370
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v3, v8, v5

    .line 1372
    .restart local v3       #duration:J
    iget v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    int-to-long v8, v8

    cmp-long v8, v3, v8

    if-ltz v8, :cond_6

    .line 1373
    const-string v8, "Cursor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "query ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", args are "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p3, :cond_5

    const-string v10, ","

    invoke-static {v10, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_8
    const-string v9, "<null>"

    goto :goto_1
.end method

.method removeSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V
    .locals 1
    .parameter "closable"

    .prologue
    .line 311
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 313
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 317
    return-void

    .line 315
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"

    .prologue
    .line 1474
    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1478
    :goto_0
    return-wide v1

    .line 1476
    :catch_0
    move-exception v0

    .line 1477
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->DBG:Z

    if-eqz v3, :cond_0

    move-object v3, p3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1478
    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    move-object v3, p1

    .line 1477
    goto :goto_1
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1500
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public resetCompiledSqlCache()V
    .locals 2

    .prologue
    .line 2131
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v0

    .line 2132
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2133
    monitor-exit v0

    .line 2134
    return-void

    .line 2133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method rowUpdated(Ljava/lang/String;J)V
    .locals 3
    .parameter "table"
    .parameter "rowId"

    .prologue
    .line 1100
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v1

    .line 1101
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;

    .line 1102
    .local v0, info:Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    if-eqz v0, :cond_0

    .line 1104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;->masterTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SET _sync_dirty=1 WHERE _id=(SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;->foreignKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1108
    :cond_0
    return-void

    .line 1102
    .end local v0           #info:Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 2
    .parameter "locale"

    .prologue
    .line 1998
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 2000
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->native_setLocale(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2002
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 2004
    return-void

    .line 2002
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public setLockingEnabled(Z)V
    .locals 0
    .parameter "lockingEnabled"

    .prologue
    .line 345
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    .line 346
    return-void
.end method

.method public declared-synchronized setMaxSqlCacheSize(I)V
    .locals 2
    .parameter "cacheSize"

    .prologue
    .line 2160
    monitor-enter p0

    const/16 v0, 0xfa

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 2161
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "expected value between 0 and 250"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2162
    :cond_1
    :try_start_1
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-ge p1, v0, :cond_2

    .line 2163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot set cacheSize to a value less than the value set with previous setMaxSqlCacheSize() call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2166
    :cond_2
    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2167
    monitor-exit p0

    return-void
.end method

.method public setMaximumSize(J)J
    .locals 12
    .parameter "numBytes"

    .prologue
    .line 977
    const/4 v6, 0x0

    .line 978
    .local v6, prog:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 979
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v8

    if-nez v8, :cond_0

    .line 980
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "database not open"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 983
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v4

    .line 984
    .local v4, pageSize:J
    div-long v2, p1, v4

    .line 986
    .local v2, numPages:J
    rem-long v8, p1, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 987
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    .line 989
    :cond_1
    new-instance v7, Landroid/database/sqlite/SQLiteStatement;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PRAGMA max_page_count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    .end local v6           #prog:Landroid/database/sqlite/SQLiteStatement;
    .local v7, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 992
    .local v0, newPageCount:J
    mul-long v8, v0, v4

    .line 994
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 995
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    return-wide v8

    .line 994
    .end local v0           #newPageCount:J
    .end local v2           #numPages:J
    .end local v4           #pageSize:J
    .end local v7           #prog:Landroid/database/sqlite/SQLiteStatement;
    .restart local v6       #prog:Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v8

    :goto_0
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 995
    :cond_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v8

    .line 994
    .end local v6           #prog:Landroid/database/sqlite/SQLiteStatement;
    .restart local v2       #numPages:J
    .restart local v4       #pageSize:J
    .restart local v7       #prog:Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #prog:Landroid/database/sqlite/SQLiteStatement;
    .restart local v6       #prog:Landroid/database/sqlite/SQLiteStatement;
    goto :goto_0
.end method

.method public setPageSize(J)V
    .locals 2
    .parameter "numBytes"

    .prologue
    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA page_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1030
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 2

    .prologue
    .line 619
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 623
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no transaction pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_1
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v0, :cond_2

    .line 626
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setTransactionSuccessful may only be called once per call to beginTransaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 630
    return-void
.end method

.method public setVersion(I)V
    .locals 2
    .parameter "version"

    .prologue
    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA user_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 945
    return-void
.end method

.method unlock()V
    .locals 2

    .prologue
    .line 415
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 416
    :cond_0
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 418
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->checkLockHoldTime()V

    .line 421
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 1658
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 15
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"
    .parameter "conflictAlgorithm"

    .prologue
    .line 1674
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v12

    invoke-interface {v12}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 1675
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v12

    if-nez v12, :cond_1

    .line 1676
    :cond_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Empty values"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1679
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v12, 0x78

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1680
    .local v10, sql:Ljava/lang/StringBuilder;
    const-string v12, "UPDATE "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    sget-object v12, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v12, v12, p5

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    const-string v12, " SET "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1685
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    .line 1686
    .local v6, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1688
    .end local p1
    .local v4, entriesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1689
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1690
    .local v5, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1691
    const-string v12, "=?"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1692
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1693
    const-string v12, ", "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1697
    .end local v5           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1698
    const-string v12, " WHERE "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1699
    move-object v0, v10

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    :cond_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1703
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v12

    if-nez v12, :cond_5

    .line 1704
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "database not open"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1706
    :cond_5
    const/4 v11, 0x0

    .line 1708
    .local v11, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 1711
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v9

    .line 1712
    .local v9, size:I
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1713
    const/4 v2, 0x1

    .line 1714
    .local v2, bindArg:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v9, :cond_6

    .line 1715
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1716
    .restart local v5       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v2, v12}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1717
    add-int/lit8 v2, v2, 0x1

    .line 1714
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1720
    .end local v5           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    if-eqz p4, :cond_7

    .line 1721
    move-object/from16 v0, p4

    array-length v0, v0

    move v9, v0

    .line 1722
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_7

    .line 1723
    aget-object v12, p4, v7

    invoke-virtual {v11, v2, v12}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1724
    add-int/lit8 v2, v2, 0x1

    .line 1722
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1729
    :cond_7
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1730
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lastChangeCount()I

    move-result v8

    .line 1731
    .local v8, numChangedRows:I
    const-string v12, "Database"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1732
    const-string v12, "Database"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updated "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " using "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " and "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1742
    :cond_8
    if-eqz v11, :cond_9

    .line 1743
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1745
    :cond_9
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1734
    return v8

    .line 1735
    .end local v2           #bindArg:I
    .end local v7           #i:I
    .end local v8           #numChangedRows:I
    .end local v9           #size:I
    :catch_0
    move-exception v12

    move-object v3, v12

    .line 1736
    .local v3, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1737
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1742
    .end local v3           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v12

    if-eqz v11, :cond_a

    .line 1743
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1745
    :cond_a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1742
    throw v12

    .line 1738
    :catch_1
    move-exception v12

    move-object v3, v12

    .line 1739
    .local v3, e:Landroid/database/SQLException;
    :try_start_2
    const-string v12, "Database"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error updating "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " using "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public yieldIfContended()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 670
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely()Z
    .locals 3

    .prologue
    .line 683
    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1
    .parameter "sleepAfterYieldDelay"

    .prologue
    .line 698
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method
