.class public Lcom/sec/android/app/twlauncher/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;,
        Lcom/sec/android/app/twlauncher/LauncherModel$Loader;,
        Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field public static final APP_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final mDBLock:Ljava/lang/Object;

.field private static final sCollator:Ljava/text/Collator;


# instance fields
.field private mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

.field private final mAllAppsListLock:Ljava/lang/Object;

.field private mAllAppsLoadDelay:I

.field private mAllAppsLoaded:Z

.field private final mApp:Lcom/sec/android/app/twlauncher/LauncherApplication;

.field private mBatchSize:I

.field private mBeforeFirstLoad:Z

.field private mBeforeFirstQuery:Z

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;

.field private mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

.field private mIsBusy:Z

.field private mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

.field private final mLock:Ljava/lang/Object;

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDBLock:Ljava/lang/Object;

    .line 2224
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->sCollator:Ljava/text/Collator;

    .line 2225
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$4;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$4;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherApplication;Lcom/sec/android/app/twlauncher/IconCache;Lcom/sec/android/app/twlauncher/BadgeCache;)V
    .locals 3
    .parameter "app"
    .parameter "iconCache"
    .parameter "badgeCache"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/sec/android/app/twlauncher/DeferredHandler;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;

    .line 89
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    .line 97
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mBeforeFirstLoad:Z

    .line 98
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mBeforeFirstQuery:Z

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    .line 107
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mIsBusy:Z

    .line 129
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApp:Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 130
    new-instance v0, Lcom/sec/android/app/twlauncher/AllAppsList;

    invoke-direct {v0, p2}, Lcom/sec/android/app/twlauncher/AllAppsList;-><init>(Lcom/sec/android/app/twlauncher/IconCache;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    .line 131
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    .line 133
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 136
    iput v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoadDelay:I

    .line 138
    iput v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mBatchSize:I

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 71
    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/twlauncher/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoaded:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->filterOutExcludedApps(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mBeforeFirstQuery:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/twlauncher/LauncherModel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mBatchSize:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/IconCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mBeforeFirstLoad:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/twlauncher/LauncherModel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoadDelay:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mIsBusy:Z

    return p1
.end method

.method static synthetic access$2100()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/LauncherModel;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/twlauncher/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static addAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v0, "addAppToDatabase() "

    const-string v0, "Launcher.Model"

    .line 2323
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2324
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2326
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 2332
    :try_start_0
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "componentname=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2341
    if-eqz v1, :cond_4

    .line 2342
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    move v2, v8

    .line 2345
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v1, v2

    .line 2349
    :goto_1
    if-eqz v1, :cond_0

    .line 2350
    const-string v1, "componentname"

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2353
    :cond_0
    return-void

    .line 2336
    :catch_0
    move-exception v1

    .line 2337
    :try_start_1
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAppToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2341
    if-eqz v9, :cond_4

    .line 2342
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    move v1, v8

    .line 2345
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2338
    :catch_1
    move-exception v1

    .line 2339
    :try_start_2
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAppToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2341
    if-eqz v9, :cond_4

    .line 2342
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v8

    .line 2345
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2341
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 2342
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2345
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move v1, v10

    goto :goto_3

    :cond_4
    move v1, v10

    goto :goto_1

    :cond_5
    move v1, v10

    goto :goto_2

    :cond_6
    move v2, v10

    goto :goto_0
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V
    .locals 5
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 273
    iput-wide p2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 274
    iput p4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 275
    iput p5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 276
    iput p6, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 278
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 279
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 281
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 283
    if-eqz p7, :cond_1

    sget-object v3, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 286
    .local v1, result:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 289
    :cond_0
    return-void

    .line 283
    .end local v1           #result:Landroid/net/Uri;
    .restart local p0
    :cond_1
    sget-object v3, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_0
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 151
    iget-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 153
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_0
.end method

.method static allocWidgetId(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 204
    const/4 v6, 0x0

    .line 206
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 208
    .local v8, id:I
    :cond_0
    const/4 v7, 0x0

    .line 209
    .local v7, count:I
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    long-to-int v8, v0

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appWidgetId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 213
    if-eqz v6, :cond_1

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 215
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_1
    if-gtz v7, :cond_0

    .line 218
    return v8
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 5
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 354
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 356
    .local v0, cr:Landroid/content/ContentResolver;
    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 357
    return-void
.end method

.method static deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 6
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 365
    .local v0, cr:Landroid/content/ContentResolver;
    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 366
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method private filterOutExcludedApps(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1810
    .local p1, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getCustomerExcludedMainApps()Ljava/util/Set;

    move-result-object v3

    .line 1812
    .local v3, excludedApps:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    if-eqz v3, :cond_2

    .line 1813
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1815
    .local v4, filteredApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1816
    .local v1, appResolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1817
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    .local v2, componentName:Landroid/content/ComponentName;
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1821
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #appResolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v2           #componentName:Landroid/content/ComponentName;
    :cond_1
    move-object v6, v4

    .line 1827
    .end local v4           #filteredApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :goto_1
    return-object v6

    :cond_2
    move-object v6, p1

    goto :goto_1
.end method

.method private static findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;J)",
            "Lcom/sec/android/app/twlauncher/LiveFolderInfo;"
        }
    .end annotation

    .prologue
    .line 2186
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 2187
    .local v0, folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    if-nez v1, :cond_1

    .line 2189
    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;-><init>()V

    .line 2190
    .restart local v0       #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    :cond_1
    check-cast v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    return-object v0
.end method

.method private static findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;J)",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;"
        }
    .end annotation

    .prologue
    .line 2171
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 2172
    .local v0, folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v1, :cond_1

    .line 2174
    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    .line 2175
    .restart local v0       #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2177
    :cond_1
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    return-object v0
.end method

.method private getCustomerExcludedMainApps()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v6, "Launcher.Model"

    .line 1838
    const-string v4, "exclude_mainapplication.xml"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getInstance(Ljava/lang/String;I)Lcom/sec/android/app/twlauncher/LauncherCustomer;

    move-result-object v1

    .line 1840
    .local v1, customer:Lcom/sec/android/app/twlauncher/LauncherCustomer;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getCustomerCount()I

    move-result v0

    .line 1842
    .local v0, count:I
    if-gtz v0, :cond_0

    .line 1843
    const-string v4, "Launcher.Model"

    const-string v4, "There are not excluded main applications."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const/4 v4, 0x0

    .line 1854
    :goto_0
    return-object v4

    .line 1846
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1848
    .local v2, excludedApps:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string v4, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There are "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " excluded main applications."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 1851
    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getCustomerExcludedAppInfo(I)Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1850
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 1854
    goto :goto_0
.end method

.method private getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .locals 14
    .parameter "manager"
    .parameter "intent"
    .parameter "c"
    .parameter "context"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    .line 1947
    const/4 v3, 0x0

    .line 1948
    .local v3, icon:Landroid/graphics/Bitmap;
    new-instance v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    invoke-direct {v6}, Lcom/sec/android/app/twlauncher/ShortcutInfo;-><init>()V

    .line 1949
    .local v6, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    const/4 v12, 0x1

    iput v12, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 1954
    const/4 v12, 0x0

    move-object v0, p1

    move-object/from16 v1, p2

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 1956
    .local v9, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_0

    .line 1957
    const-string v12, "com.android.settings.SHORTCUT"

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1958
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v12, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1978
    :cond_0
    iget-object v12, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v12, :cond_1

    .line 1979
    if-eqz p3, :cond_1

    .line 1980
    move-object/from16 v0, p3

    move/from16 v1, p9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1988
    :cond_1
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1989
    .local v4, iconType:I
    packed-switch v4, :pswitch_data_0

    .line 2026
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2027
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->usingFallbackIcon:Z

    .line 2028
    const/4 v12, 0x0

    iput-boolean v12, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    .line 2031
    :cond_2
    :goto_0
    invoke-virtual {v6, v3}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2032
    return-object v6

    .line 1991
    :pswitch_0
    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1992
    .local v8, packageName:Ljava/lang/String;
    move-object/from16 v0, p3

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1993
    .local v10, resourceName:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1994
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    iput-boolean v12, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    .line 1997
    :try_start_0
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 1998
    .local v11, resources:Landroid/content/res/Resources;
    if-eqz v11, :cond_3

    .line 1999
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 2000
    .local v5, id:I
    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2006
    .end local v5           #id:I
    .end local v11           #resources:Landroid/content/res/Resources;
    :cond_3
    :goto_1
    if-nez v3, :cond_4

    .line 2007
    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2010
    :cond_4
    if-nez v3, :cond_2

    .line 2011
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2012
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    .line 2016
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v10           #resourceName:Ljava/lang/String;
    :pswitch_1
    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2017
    if-nez v3, :cond_5

    .line 2018
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2019
    const/4 v12, 0x0

    iput-boolean v12, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    .line 2020
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    .line 2022
    :cond_5
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    goto :goto_0

    .line 2002
    .restart local v7       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v8       #packageName:Ljava/lang/String;
    .restart local v10       #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_1

    .line 1989
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .locals 17
    .parameter "context"
    .parameter "data"

    .prologue
    .line 2059
    const-string v14, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    .line 2060
    .local v10, intent:Landroid/content/Intent;
    const-string v14, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2061
    .local v11, name:Ljava/lang/String;
    const-string v14, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 2063
    .local v2, bitmap:Landroid/os/Parcelable;
    const/4 v6, 0x0

    .line 2065
    .local v6, icon:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 2066
    .local v3, customIcon:Z
    const/4 v7, 0x0

    .line 2068
    .local v7, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v2, :cond_2

    instance-of v14, v2, Landroid/graphics/Bitmap;

    if-eqz v14, :cond_2

    .line 2069
    new-instance v14, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    check-cast v2, Landroid/graphics/Bitmap;

    .end local v2           #bitmap:Landroid/os/Parcelable;
    invoke-direct {v14, v2}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2071
    const/4 v3, 0x1

    .line 2088
    :cond_0
    :goto_0
    new-instance v9, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    invoke-direct {v9}, Lcom/sec/android/app/twlauncher/ShortcutInfo;-><init>()V

    .line 2090
    .local v9, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    if-nez v6, :cond_1

    .line 2091
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2092
    const/4 v14, 0x1

    iput-boolean v14, v9, Lcom/sec/android/app/twlauncher/ShortcutInfo;->usingFallbackIcon:Z

    .line 2094
    :cond_1
    invoke-virtual {v9, v6}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2096
    iput-object v11, v9, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 2097
    iput-object v10, v9, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2098
    iput-boolean v3, v9, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    .line 2099
    iput-object v7, v9, Lcom/sec/android/app/twlauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 2101
    return-object v9

    .line 2073
    .end local v9           #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .restart local v2       #bitmap:Landroid/os/Parcelable;
    :cond_2
    const-string v14, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 2074
    .local v5, extra:Landroid/os/Parcelable;
    if-eqz v5, :cond_0

    instance-of v14, v5, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v14, :cond_0

    .line 2076
    :try_start_0
    move-object v0, v5

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v7, v0

    .line 2077
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 2078
    .local v12, packageManager:Landroid/content/pm/PackageManager;
    iget-object v14, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    .line 2080
    .local v13, resources:Landroid/content/res/Resources;
    iget-object v14, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2081
    .local v8, id:I
    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 2082
    .end local v8           #id:I
    .end local v12           #packageManager:Landroid/content/pm/PackageManager;
    .end local v13           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v14

    move-object v4, v14

    .line 2083
    .local v4, e:Ljava/lang/Exception;
    const-string v14, "Launcher.Model"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not load shortcut icon: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static loadAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const-string v0, "loadAppToDatabase() "

    const-string v0, "Launcher.Model"

    .line 2287
    .line 2288
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2291
    :try_start_0
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "componentname"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "top_number"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "page_number"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "cell_number"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "top_number ASC, page_number ASC, cell_number ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2303
    :goto_0
    return-object v0

    .line 2296
    :catch_0
    move-exception v0

    .line 2297
    :try_start_1
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 2302
    goto :goto_0

    .line 2298
    :catch_1
    move-exception v0

    .line 2299
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    .line 2302
    goto :goto_0

    .line 2300
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V
    .locals 10
    .parameter "context"
    .parameter "c"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "liveFolderInfo"

    .prologue
    const v9, 0x7f02006e

    .line 2107
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2108
    .local v1, iconType:I
    packed-switch v1, :pswitch_data_0

    .line 2128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    .line 2132
    :goto_0
    return-void

    .line 2110
    :pswitch_0
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2111
    .local v4, packageName:Ljava/lang/String;
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2112
    .local v5, resourceName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2114
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 2115
    .local v6, resources:Landroid/content/res/Resources;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2116
    .local v2, id:I
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2123
    .end local v2           #id:I
    .end local v6           #resources:Landroid/content/res/Resources;
    :goto_1
    new-instance v7, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v7}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 2124
    iget-object v7, p5, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v4, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 2125
    iget-object v7, p5, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v5, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    goto :goto_0

    .line 2118
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 2119
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 2108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static loadTopAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const-string v0, "loadTopAppToDatabase() "

    const-string v0, "Launcher.Model"

    .line 2356
    .line 2357
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2360
    :try_start_0
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "componentname"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "top_number"

    aput-object v4, v2, v3

    const-string v3, "top_number!=65535"

    const/4 v4, 0x0

    const-string v5, "top_number ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2371
    :goto_0
    return-object v0

    .line 2364
    :catch_0
    move-exception v0

    .line 2365
    :try_start_1
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTopAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 2370
    goto :goto_0

    .line 2366
    :catch_1
    move-exception v0

    .line 2367
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTopAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    .line 2370
    goto :goto_0

    .line 2368
    :catchall_0
    move-exception v0

    throw v0
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V
    .locals 6
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    const/4 v5, 0x0

    .line 165
    iput-wide p2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 166
    iput p4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 167
    iput p5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 168
    iput p6, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 170
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 171
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 173
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "container"

    iget-wide v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    const-string v2, "cellX"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v2, "cellY"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string v2, "screen"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    iget-wide v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method private onReceiveExternalApplications(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const-string v7, "android.intent.extra.changed_package_list"

    const-string v6, "Launcher.Model"

    const-string v5, " received"

    .line 560
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mBeforeFirstQuery:Z

    if-eqz v2, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 565
    const-string v2, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, packages:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 571
    monitor-enter p0

    .line 572
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mWorkspaceLoaded:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoaded:Z

    .line 573
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 573
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 575
    .end local v1           #packages:[Ljava/lang/String;
    :cond_2
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    const-string v2, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 579
    .restart local v1       #packages:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 582
    monitor-enter p0

    .line 583
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mWorkspaceLoaded:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoaded:Z

    .line 584
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 585
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 584
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method static removeAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 4
    .parameter "context"
    .parameter "appInfo"

    .prologue
    .line 2315
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2317
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "componentname=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2320
    return-void
.end method

.method static removeAppToDatabase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2307
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2309
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2312
    return-void
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .parameter "context"
    .parameter "title"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 187
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "intent"

    aput-object v3, v2, v8

    const-string v3, "title=? and intent=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 190
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 192
    .local v7, result:Z
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 194
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 196
    return v7

    .line 194
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method static updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .locals 9
    .parameter "context"
    .parameter "info"

    .prologue
    .line 304
    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    .line 345
    .end local p0
    .end local p1
    :goto_0
    return p0

    .line 306
    .restart local p0
    .restart local p1
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 307
    .local v8, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 309
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object p0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 310
    .local p0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    .line 312
    .local p0, componentName:Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 313
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 316
    .local v7, id:I
    :try_start_0
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "componentname=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 325
    .end local v6           #cursor:Landroid/database/Cursor;
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_8

    .line 326
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 327
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 328
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 330
    .end local v7           #id:I
    .local v2, id:I
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 334
    :goto_2
    const-string v1, "top_number"

    .end local v1           #cursor:Landroid/database/Cursor;
    iget v3, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    const-string v1, "page_number"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    const-string v1, "cell_number"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 339
    const/4 p1, -0x1

    if-eq v2, p1, :cond_1

    .line 340
    .end local p1
    int-to-long p0, v2

    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->getContentUri(J)Landroid/net/Uri;

    .end local p0           #componentName:Landroid/content/ComponentName;
    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v8, p1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto/16 :goto_0

    .line 320
    .end local v2           #id:I
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #id:I
    .restart local p0       #componentName:Landroid/content/ComponentName;
    .restart local p1
    :catch_0
    move-exception v1

    .line 321
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePageNumberToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    if-eqz v6, :cond_5

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 328
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 330
    .end local v7           #id:I
    .local v1, id:I
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v2, v1

    .end local v1           #id:I
    .restart local v2       #id:I
    move-object v1, v6

    .end local v6           #cursor:Landroid/database/Cursor;
    .local v1, cursor:Landroid/database/Cursor;
    goto :goto_2

    .line 322
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #id:I
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #id:I
    :catch_1
    move-exception v1

    .line 323
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePageNumberToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    if-eqz v6, :cond_5

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 328
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 330
    .end local v7           #id:I
    .local v1, id:I
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v2, v1

    .end local v1           #id:I
    .restart local v2       #id:I
    move-object v1, v6

    .end local v6           #cursor:Landroid/database/Cursor;
    .local v1, cursor:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 325
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #id:I
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #id:I
    :catchall_0
    move-exception p0

    move-object p1, p0

    .end local p0           #componentName:Landroid/content/ComponentName;
    .end local p1
    if-eqz v6, :cond_3

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_2

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 328
    const/4 p0, 0x0

    invoke-interface {v6, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 330
    .end local v7           #id:I
    .local p0, id:I
    :goto_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_6
    throw p1

    .line 342
    .end local v6           #cursor:Landroid/database/Cursor;
    .restart local v2       #id:I
    .local p0, componentName:Landroid/content/ComponentName;
    :cond_1
    const-string p1, "componentname"

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #componentName:Landroid/content/ComponentName;
    invoke-virtual {v8, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    sget-object p0, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p0, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 345
    const/4 p0, -0x1

    goto/16 :goto_0

    .end local v2           #id:I
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #id:I
    :cond_2
    move p0, v7

    .end local v7           #id:I
    .local p0, id:I
    goto :goto_5

    .end local p0           #id:I
    .restart local v7       #id:I
    :cond_3
    move p0, v7

    .end local v7           #id:I
    .restart local p0       #id:I
    goto :goto_6

    .restart local v7       #id:I
    .local p0, componentName:Landroid/content/ComponentName;
    .restart local p1
    :cond_4
    move v1, v7

    .end local v7           #id:I
    .local v1, id:I
    goto :goto_4

    .end local v1           #id:I
    .restart local v7       #id:I
    :cond_5
    move v2, v7

    .end local v7           #id:I
    .restart local v2       #id:I
    move-object v1, v6

    .end local v6           #cursor:Landroid/database/Cursor;
    .local v1, cursor:Landroid/database/Cursor;
    goto/16 :goto_2

    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #id:I
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #id:I
    :cond_6
    move v1, v7

    .end local v7           #id:I
    .local v1, id:I
    goto :goto_3

    .end local v6           #cursor:Landroid/database/Cursor;
    .local v1, cursor:Landroid/database/Cursor;
    .restart local v7       #id:I
    :cond_7
    move v2, v7

    .end local v7           #id:I
    .restart local v2       #id:I
    goto/16 :goto_1

    .end local v2           #id:I
    .restart local v7       #id:I
    :cond_8
    move v2, v7

    .end local v7           #id:I
    .restart local v2       #id:I
    goto/16 :goto_2
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 6
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 295
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 296
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 300
    iget-wide v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 301
    return-void
.end method


# virtual methods
.method addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .locals 8
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"
    .parameter "notify"

    .prologue
    .line 2051
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v1

    .line 2052
    .local v1, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    const-wide/16 v2, -0x64

    iget v4, p3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v5, p3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v6, p3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move-object v0, p1

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2055
    return-object v1
.end method

.method public getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 17
    .parameter "context"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;J)",
            "Lcom/sec/android/app/twlauncher/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 225
    .local p2, folderList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 226
    .local v3, cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "_id=? and (itemType=? or itemType=?)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 233
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    const-string v4, "itemType"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 235
    .local v14, itemTypeIndex:I
    const-string v4, "title"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 236
    .local v16, titleIndex:I
    const-string v4, "container"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 237
    .local v12, containerIndex:I
    const-string v4, "screen"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 238
    .local v15, screenIndex:I
    const-string v4, "cellX"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 239
    .local v10, cellXIndex:I
    const-string v4, "cellY"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 241
    .local v11, cellYIndex:I
    const/4 v13, 0x0

    .line 242
    .local v13, folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 251
    :goto_0
    move-object v0, v9

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/sec/android/app/twlauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 252
    move-wide/from16 v0, p3

    move-object v2, v13

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 253
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v13, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 254
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v13, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 255
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v13, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 256
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v13, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v4, v13

    .line 264
    .end local v10           #cellXIndex:I
    .end local v11           #cellYIndex:I
    .end local v12           #containerIndex:I
    .end local v13           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    .end local v14           #itemTypeIndex:I
    .end local v15           #screenIndex:I
    .end local v16           #titleIndex:I
    :goto_1
    return-object v4

    .line 244
    .restart local v10       #cellXIndex:I
    .restart local v11       #cellYIndex:I
    .restart local v12       #containerIndex:I
    .restart local v13       #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    .restart local v14       #itemTypeIndex:I
    .restart local v15       #screenIndex:I
    .restart local v16       #titleIndex:I
    :pswitch_0
    :try_start_1
    invoke-static/range {p2 .. p4}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v13

    .line 245
    goto :goto_0

    .line 247
    :pswitch_1
    invoke-static/range {p2 .. p4}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    goto :goto_0

    .line 261
    .end local v10           #cellXIndex:I
    .end local v11           #cellYIndex:I
    .end local v12           #containerIndex:I
    .end local v13           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    .end local v14           #itemTypeIndex:I
    .end local v15           #screenIndex:I
    .end local v16           #titleIndex:I
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 264
    const/4 v4, 0x0

    goto :goto_1

    .line 261
    :catchall_0
    move-exception v4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v4

    .line 242
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    .line 2040
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 2042
    .local v0, data:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2044
    :goto_0
    return-object v2

    .line 2043
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2044
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .locals 7
    .parameter "manager"
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    .line 1863
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .locals 6
    .parameter "manager"
    .parameter "intent"
    .parameter "context"
    .parameter "c"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    const/4 v5, 0x0

    .line 1873
    const/4 v1, 0x0

    .line 1874
    .local v1, icon:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/ShortcutInfo;-><init>()V

    .line 1876
    .local v2, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1877
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 1878
    const/4 v4, 0x0

    .line 1937
    :goto_0
    return-object v4

    .line 1888
    :cond_0
    invoke-virtual {p1, p2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1889
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 1890
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    invoke-virtual {v4, v0, v3}, Lcom/sec/android/app/twlauncher/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1893
    :cond_1
    if-nez v1, :cond_2

    .line 1894
    if-eqz p4, :cond_2

    .line 1895
    invoke-virtual {p0, p4, p5}, Lcom/sec/android/app/twlauncher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1899
    :cond_2
    if-nez v1, :cond_3

    .line 1900
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1901
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->usingFallbackIcon:Z

    .line 1903
    :cond_3
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1906
    if-eqz v3, :cond_4

    .line 1907
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1927
    :cond_4
    iget-object v4, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_5

    .line 1928
    if-eqz p4, :cond_5

    .line 1929
    invoke-interface {p4, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1933
    :cond_5
    iget-object v4, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_6

    .line 1934
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1936
    :cond_6
    iput v5, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    move-object v4, v2

    .line 1937
    goto :goto_0
.end method

.method public initialize(Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V
    .locals 2
    .parameter "callbacks"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 376
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DeferredHandler;->cancel()V

    .line 377
    monitor-exit v0

    .line 378
    return-void

    .line 377
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isBusy()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mIsBusy:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApp:Lcom/sec/android/app/twlauncher/LauncherApplication;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mSystemShuttingDown:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 444
    const-string v17, "Launcher.Model"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ignoring "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " because the system is shutting down"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 448
    .restart local p2
    :cond_1
    const-string v17, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 450
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->onReceiveExternalApplications(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 455
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApp:Lcom/sec/android/app/twlauncher/LauncherApplication;

    move-object/from16 p1, v0

    .line 457
    const/4 v5, 0x0

    .line 458
    .local v5, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v13, 0x0

    .line 459
    .local v13, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v10, 0x0

    .line 461
    .local v10, modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mBeforeFirstLoad:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 468
    :try_start_0
    const-string v18, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 471
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 472
    .local v12, packageName:Ljava/lang/String;
    const-string v18, "android.intent.extra.REPLACING"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 474
    .local v15, replacing:Z
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_6

    .line 476
    :cond_5
    monitor-exit v17

    goto :goto_0

    .line 556
    .end local v12           #packageName:Ljava/lang/String;
    .end local v15           #replacing:Z
    .end local p2
    :catchall_0
    move-exception v18

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 479
    .restart local v12       #packageName:Ljava/lang/String;
    .restart local v15       #replacing:Z
    .restart local p2
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v16

    .line 481
    .local v16, spm:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    const-string v18, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 482
    if-eqz v16, :cond_7

    .line 483
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 485
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 509
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_9

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object v5, v0

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 513
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_10

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object v13, v0

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 516
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 517
    .local v9, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    move-object/from16 v18, v0

    move-object v0, v9

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/IconCache;->remove(Landroid/content/ComponentName;)V

    goto :goto_2

    .line 486
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_a
    const-string v18, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 487
    if-nez v15, :cond_8

    .line 488
    if-eqz v16, :cond_b

    .line 489
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->removePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 491
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AllAppsList;->removePackage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 495
    :cond_c
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 496
    if-nez v15, :cond_e

    .line 497
    if-eqz v16, :cond_d

    .line 498
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 500
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 502
    :cond_e
    if-eqz v16, :cond_f

    .line 503
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 505
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 520
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AllAppsList;->modified:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_11

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AllAppsList;->modified:Ljava/util/ArrayList;

    move-object v10, v0

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 525
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    move-object/from16 v7, p2

    .line 526
    .local v7, callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    :goto_3
    if-nez v7, :cond_13

    .line 527
    const-string v18, "Launcher.Model"

    const-string v19, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    monitor-exit v17

    goto/16 :goto_0

    .line 525
    .end local v7           #callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    .restart local p2
    :cond_12
    const/16 v18, 0x0

    move-object/from16 v7, v18

    goto :goto_3

    .line 531
    .end local p2
    .restart local v7       #callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    :cond_13
    if-eqz v5, :cond_14

    .line 532
    move-object v6, v5

    .line 533
    .local v6, addedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-object/from16 v18, v0

    new-instance v19, Lcom/sec/android/app/twlauncher/LauncherModel$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel$1;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 539
    .end local v6           #addedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    :cond_14
    if-eqz v10, :cond_15

    .line 540
    move-object v11, v10

    .line 541
    .local v11, modifiedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-object/from16 v18, v0

    new-instance v19, Lcom/sec/android/app/twlauncher/LauncherModel$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel$2;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 547
    .end local v11           #modifiedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    :cond_15
    if-eqz v13, :cond_16

    .line 548
    move-object v14, v13

    .line 549
    .local v14, removedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-object/from16 v18, v0

    new-instance v19, Lcom/sec/android/app/twlauncher/LauncherModel$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel$3;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 556
    .end local v7           #callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    .end local v12           #packageName:Ljava/lang/String;
    .end local v14           #removedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .end local v15           #replacing:Z
    .end local v16           #spm:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    :cond_16
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 381
    monitor-enter p0

    .line 382
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mWorkspaceLoaded:Z

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoaded:Z

    .line 383
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DeferredHandler;->cancel()V

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    move-object v0, v1

    .line 387
    .local v0, callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    :goto_0
    if-eqz v0, :cond_0

    .line 388
    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;->onLoadingStart()V

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->startLoader(Landroid/content/Context;Z)V

    .line 390
    return-void

    .line 383
    .end local v0           #callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 386
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public stopLoader()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->stopLoader()V

    .line 394
    return-void
.end method

.method updateSavedIcon(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ShortcutInfo;Landroid/database/Cursor;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2141
    iget-boolean v0, p2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->onExternalStorage:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v0, :cond_0

    .line 2143
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 2145
    if-eqz v0, :cond_2

    .line 2146
    const/4 v1, 0x0

    :try_start_0
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2147
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    invoke-virtual {p2, v1}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2148
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 2155
    :goto_0
    if-eqz v0, :cond_0

    .line 2156
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "going to save icon bitmap for info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    invoke-static {p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2163
    :cond_0
    return-void

    :cond_1
    move v0, v4

    .line 2148
    goto :goto_0

    :cond_2
    move v0, v3

    .line 2150
    goto :goto_0

    .line 2152
    :catch_0
    move-exception v0

    move v0, v3

    .line 2153
    goto :goto_0
.end method
