.class public Landroid/database/sqlite/SQLiteCursor;
.super Landroid/database/AbstractWindowedCursor;
.source "SQLiteCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;,
        Landroid/database/sqlite/SQLiteCursor$QueryThread;
    }
.end annotation


# static fields
.field static final NO_COUNT:I = -0x1

.field static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private DBG:Z

.field private mColumnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mCursorState:I

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

.field private mEditTable:Ljava/lang/String;

.field private mInitialRead:I

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMaxRead:I

.field protected mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

.field private mPendingData:Z

.field private mQuery:Landroid/database/sqlite/SQLiteQuery;

.field private mStackTrace:Ljava/lang/Throwable;

.field private mStackTraceElements:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .locals 7
    .parameter "db"
    .parameter "driver"
    .parameter "editTable"
    .parameter "query"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7fffffff

    const/4 v4, 0x0

    .line 217
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    .line 48
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteCursor;->DBG:Z

    .line 66
    const/4 v3, -0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 80
    iput v5, p0, Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I

    .line 81
    iput v5, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    .line 82
    iput v4, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    .line 83
    iput-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 84
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z

    .line 218
    new-instance v3, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v3}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v3}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    iput-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    .line 219
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 220
    iput-object p2, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    .line 221
    iput-object p3, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    .line 222
    iput-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 223
    iput-object p4, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    .line 226
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 229
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteQuery;->columnCountLocked()I

    move-result v0

    .line 230
    .local v0, columnCount:I
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 233
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 234
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQuery;->columnNameLocked(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, columnName:Ljava/lang/String;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    aput-object v1, v3, v2

    .line 242
    const-string v3, "_id"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    iput v2, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    .end local v0           #columnCount:I
    .end local v1           #columnName:Ljava/lang/String;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v3

    .restart local v0       #columnCount:I
    .restart local v2       #i:I
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 249
    return-void
.end method

.method static synthetic access$002(Landroid/database/sqlite/SQLiteCursor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z

    return p1
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteCursor;)Landroid/database/CursorWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    return-object v0
.end method

.method static synthetic access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$300(Landroid/database/sqlite/SQLiteCursor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    return v0
.end method

.method static synthetic access$400(Landroid/database/sqlite/SQLiteCursor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I

    return v0
.end method

.method static synthetic access$500(Landroid/database/sqlite/SQLiteCursor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method static synthetic access$502(Landroid/database/sqlite/SQLiteCursor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return p1
.end method

.method static synthetic access$512(Landroid/database/sqlite/SQLiteCursor;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/database/sqlite/SQLiteCursor;)Landroid/database/sqlite/SQLiteQuery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    return-object v0
.end method

.method static synthetic access$700(Landroid/database/sqlite/SQLiteCursor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->notifyDataSetChange()V

    return-void
.end method

.method private deactivateCommon()V
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    .line 500
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    .line 505
    :cond_0
    return-void
.end method

.method private fillWindow(I)V
    .locals 5
    .parameter "startPos"

    .prologue
    const/4 v3, 0x1

    .line 278
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-nez v1, :cond_2

    .line 281
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 283
    new-instance v1, Landroid/database/CursorWindow;

    invoke-direct {v1, v3}, Landroid/database/CursorWindow;-><init>(Z)V

    iput-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    .line 298
    :goto_0
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 299
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v2, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    iget v3, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteQuery;->fillWindow(Landroid/database/CursorWindow;II)I

    move-result v1

    iput v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 301
    iget v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 302
    iget v1, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 303
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/database/sqlite/SQLiteCursor$QueryThread;

    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    invoke-direct {v1, p0, v2}, Landroid/database/sqlite/SQLiteCursor$QueryThread;-><init>(Landroid/database/sqlite/SQLiteCursor;I)V

    const-string/jumbo v2, "query thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 304
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 306
    .end local v0           #t:Ljava/lang/Thread;
    :cond_0
    return-void

    .line 286
    :cond_1
    new-instance v1, Landroid/database/CursorWindow;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/database/CursorWindow;-><init>(ZLjava/lang/String;)V

    iput-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    goto :goto_0

    .line 290
    :cond_2
    iget v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    .line 291
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadLock()V

    .line 293
    :try_start_0
    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v1
.end method

.method private queryThreadLock()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 106
    :cond_0
    return-void
.end method

.method private queryThreadUnlock()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 516
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    .line 517
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->deactivateCommon()V

    .line 518
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->close()V

    .line 519
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorClosed()V

    .line 520
    return-void
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, additionalValues:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteCursor;->supportsUpdates()Z

    move-result v13

    if-nez v13, :cond_0

    .line 413
    const-string v13, "Cursor"

    const-string v14, "commitUpdates not supported on this cursor, did you include the _id column?"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v13, 0x0

    .line 494
    .end local p1           #additionalValues:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    return v13

    .line 422
    .restart local p1       #additionalValues:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    move-object v13, v0

    monitor-enter v13

    .line 423
    if-eqz p1, :cond_1

    .line 424
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 427
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    if-nez v14, :cond_2

    .line 428
    const/4 v14, 0x1

    monitor-exit v13

    move v13, v14

    goto :goto_0

    .line 436
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 438
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v14, 0x80

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 442
    .local v10, sql:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local p1           #additionalValues:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 443
    .local v6, rowEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 444
    .local v11, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 446
    .local v9, rowIdObj:Ljava/lang/Long;
    if-eqz v9, :cond_4

    if-nez v11, :cond_5

    .line 447
    :cond_4
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "null rowId or values found! rowId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", values = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #rowEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v9           #rowIdObj:Ljava/lang/Long;
    .end local v10           #sql:Ljava/lang/StringBuilder;
    .end local v11           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v14

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 489
    :catchall_1
    move-exception v14

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v14

    .line 451
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #rowEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v9       #rowIdObj:Ljava/lang/Long;
    .restart local v10       #sql:Ljava/lang/StringBuilder;
    .restart local v11       #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    :try_start_3
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v14

    if-eqz v14, :cond_3

    .line 455
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 457
    .local v7, rowId:J
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 460
    .local v12, valuesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 461
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UPDATE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " SET "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v14

    new-array v2, v14, [Ljava/lang/Object;

    .line 465
    .local v2, bindings:[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 466
    .local v4, i:I
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 467
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 468
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const-string v14, "=?"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v2, v4

    .line 471
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 472
    const-string v14, ", "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 475
    goto :goto_2

    .line 477
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " WHERE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x3d

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const/16 v14, 0x3b

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rowUpdated(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 483
    .end local v2           #bindings:[Ljava/lang/Object;
    .end local v4           #i:I
    .end local v6           #rowEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7           #rowId:J
    .end local v9           #rowIdObj:Ljava/lang/Long;
    .end local v11           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12           #valuesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 485
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 489
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 492
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteCursor;->onChange(Z)V

    .line 494
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 509
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    .line 510
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->deactivateCommon()V

    .line 511
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorDeactivated()V

    .line 512
    return-void
.end method

.method public deleteRow()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 343
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->checkPosition()V

    .line 346
    iget v3, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    if-nez v3, :cond_1

    .line 347
    :cond_0
    const-string v3, "Cursor"

    const-string v4, "Could not delete row because either the row ID column is not available or ithas not been read."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v9

    .line 387
    :goto_0
    return v3

    .line 361
    :cond_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 364
    :try_start_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    iget v7, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    const/4 v2, 0x1

    .line 371
    .local v2, success:Z
    :goto_1
    :try_start_1
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 372
    .local v1, pos:I
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->requery()Z

    .line 378
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteCursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 383
    if-eqz v2, :cond_2

    .line 384
    invoke-virtual {p0, v10}, Landroid/database/sqlite/SQLiteCursor;->onChange(Z)V

    move v3, v10

    .line 385
    goto :goto_0

    .line 367
    .end local v1           #pos:I
    .end local v2           #success:Z
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 368
    .local v0, e:Landroid/database/SQLException;
    const/4 v2, 0x0

    .restart local v2       #success:Z
    goto :goto_1

    .line 380
    .end local v0           #e:Landroid/database/SQLException;
    .end local v2           #success:Z
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v3

    .restart local v1       #pos:I
    .restart local v2       #success:Z
    :cond_2
    move v3, v9

    .line 387
    goto :goto_0
.end method

.method protected finalize()V
    .locals 10

    .prologue
    const/16 v9, 0x64

    const-string v6, "Cursor"

    .line 597
    :try_start_0
    iget-object v6, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v6, :cond_4

    .line 598
    invoke-static {}, Landroid/os/StrictMode;->vmSqliteObjectLeaksEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 599
    iget-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 600
    .local v2, len:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finalizing a Cursor that has not been deactivated or closed. database = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", table = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", query = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v7, v7, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    const/4 v8, 0x0

    if-le v2, v9, :cond_1

    :goto_0
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v6, v7}, Landroid/os/StrictMode;->onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 606
    .end local v2           #len:I
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 607
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finalizing cursor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that has not been deactivated or closed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 609
    .local v4, message:Ljava/lang/String;
    sget-boolean v6, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz v6, :cond_2

    .line 610
    const-string v6, "Cursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nThis cursor was created in:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v5, v0, v1

    .line 612
    .local v5, ste:Ljava/lang/StackTraceElement;
    const-string v6, "Cursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #message:Ljava/lang/String;
    .end local v5           #ste:Ljava/lang/StackTraceElement;
    .restart local v2       #len:I
    :cond_1
    move v9, v2

    .line 600
    goto :goto_0

    .line 617
    .end local v2           #len:I
    .restart local v4       #message:Ljava/lang/String;
    :cond_2
    const-string v6, "Cursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\nDatabase path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->getFilename()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v6, "Cursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\nTable name   : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-boolean v6, p0, Landroid/database/sqlite/SQLiteCursor;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "Cursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\nSQL          : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteQuery;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_3
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->notifyActiveCursorFinalized()V

    .line 622
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    .end local v4           #message:Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    throw v6

    :cond_4
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    .line 632
    return-void
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 10
    .parameter "columnName"

    .prologue
    const/4 v9, -0x1

    .line 311
    iget-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    if-nez v6, :cond_1

    .line 312
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 313
    .local v1, columns:[Ljava/lang/String;
    array-length v0, v1

    .line 314
    .local v0, columnCount:I
    new-instance v4, Ljava/util/HashMap;

    const/high16 v6, 0x3f80

    invoke-direct {v4, v0, v6}, Ljava/util/HashMap;-><init>(IF)V

    .line 315
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 316
    aget-object v6, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 318
    :cond_0
    iput-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 322
    .end local v0           #columnCount:I
    .end local v1           #columns:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 323
    .local v5, periodIndex:I
    if-eq v5, v9, :cond_2

    .line 324
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 325
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "Cursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requesting column name with table name -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 329
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 330
    .local v3, i:Ljava/lang/Integer;
    if-eqz v3, :cond_3

    .line 331
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 333
    :goto_1
    return v6

    :cond_3
    move v6, v9

    goto :goto_1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 271
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    .line 274
    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public onMove(II)Z
    .locals 2
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 263
    :cond_0
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    .line 266
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    const v1, 0x7fffffff

    .line 183
    invoke-super {p0, p1}, Landroid/database/AbstractWindowedCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 184
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    if-eq v1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    if-nez v0, :cond_2

    .line 186
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadLock()V

    .line 188
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;-><init>(Landroid/database/sqlite/SQLiteCursor;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    .line 189
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->notifyDataSetChange()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_1
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    .line 198
    :cond_2
    return-void

    .line 194
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v0
.end method

.method public requery()Z
    .locals 5

    .prologue
    .line 524
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    const/4 v3, 0x0

    .line 565
    :goto_0
    return v3

    .line 527
    :cond_0
    const-wide/16 v1, 0x0

    .line 535
    .local v1, timeStart:J
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 537
    :try_start_0
    iget-object v3, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v3, :cond_1

    .line 538
    iget-object v3, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v3}, Landroid/database/CursorWindow;->clear()V

    .line 540
    :cond_1
    const/4 v3, -0x1

    iput v3, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 542
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v3, p0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorRequeried(Landroid/database/Cursor;)V

    .line 543
    const/4 v3, -0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 544
    iget v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    .line 545
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 547
    :try_start_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteQuery;->requery()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    :try_start_2
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 552
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 560
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z

    move-result v0

    .local v0, result:Z
    move v3, v0

    .line 565
    goto :goto_0

    .line 549
    .end local v0           #result:Z
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 552
    :catchall_1
    move-exception v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v3
.end method

.method public setLoadStyle(II)V
    .locals 2
    .parameter "initialRead"
    .parameter "maxRead"

    .prologue
    .line 97
    iput p2, p0, Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I

    .line 98
    iput p1, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    .line 99
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 100
    return-void
.end method

.method public setSelectionArguments([Ljava/lang/String;)V
    .locals 1
    .parameter "selectionArgs"

    .prologue
    .line 587
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p1}, Landroid/database/sqlite/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 570
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    .line 571
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    .line 572
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadLock()V

    .line 574
    :try_start_0
    iget-object v0, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    .line 578
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 580
    :cond_0
    iput-object p1, p0, Landroid/database/AbstractWindowedCursor;->mWindow:Landroid/database/CursorWindow;

    .line 581
    return-void

    .line 576
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v0
.end method

.method public supportsUpdates()Z
    .locals 1

    .prologue
    .line 402
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->supportsUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
