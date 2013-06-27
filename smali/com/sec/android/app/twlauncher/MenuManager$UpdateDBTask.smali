.class Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;
.super Landroid/os/AsyncTask;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateDBTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sec/android/app/twlauncher/ApplicationsAdapter;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2200
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2200
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2200
    check-cast p1, [Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->doInBackground([Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)Ljava/lang/Void;
    .locals 23
    .parameter "adapters"

    .prologue
    .line 2204
    if-nez p1, :cond_0

    const/4 v6, 0x0

    .line 2266
    .end local p0
    :goto_0
    return-object v6

    .line 2205
    .restart local p0
    :cond_0
    const/4 v6, 0x0

    aget-object v13, p1, v6

    .line 2207
    .local v13, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    sget-object v22, Lcom/sec/android/app/twlauncher/LauncherModel;->mDBLock:Ljava/lang/Object;

    monitor-enter v22

    .line 2208
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v6, v0

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/MenuManager;->access$300(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v6

    const-string v7, "launcher.db"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/Launcher;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    .line 2209
    .local v20, path:Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move-object v1, v6

    move v2, v7

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 2210
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2213
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v6

    move/from16 v0, v17

    move v1, v6

    if-ge v0, v1, :cond_8

    .line 2214
    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2215
    .local v19, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 2216
    .local v21, values:Landroid/content/ContentValues;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    move-object v14, v0

    .line 2218
    .local v14, componentName:Landroid/content/ComponentName;
    const-string v6, "top_number"

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2219
    const-string v6, "page_number"

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2220
    const-string v6, "cell_number"

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2221
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2223
    const/4 v15, 0x0

    .line 2224
    .local v15, cursor:Landroid/database/Cursor;
    const/16 v18, -0x1

    .line 2227
    .local v18, id:I
    :try_start_2
    const-string v6, "apps"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "componentname=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v15

    .line 2236
    if-eqz v15, :cond_2

    .line 2237
    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 2238
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2239
    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 2241
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2245
    :cond_2
    :goto_2
    const/4 v6, -0x1

    move/from16 v0, v18

    move v1, v6

    if-eq v0, v1, :cond_7

    .line 2246
    const-string v6, "apps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2213
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 2231
    :catch_0
    move-exception v6

    move-object/from16 v16, v6

    .line 2232
    .local v16, e:Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v6, "Launcher.MenuManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2236
    if-eqz v15, :cond_2

    .line 2237
    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 2238
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2239
    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 2241
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 2261
    .end local v14           #componentName:Landroid/content/ComponentName;
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v16           #e:Landroid/database/sqlite/SQLiteException;
    .end local v18           #id:I
    .end local v19           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v21           #values:Landroid/content/ContentValues;
    .end local p0
    :catchall_0
    move-exception v6

    :try_start_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2262
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v6

    .line 2264
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v17           #i:I
    .end local v20           #path:Ljava/lang/String;
    :catchall_1
    move-exception v6

    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v6

    .line 2233
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14       #componentName:Landroid/content/ComponentName;
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v17       #i:I
    .restart local v18       #id:I
    .restart local v19       #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v20       #path:Ljava/lang/String;
    .restart local v21       #values:Landroid/content/ContentValues;
    .restart local p0
    :catch_1
    move-exception v6

    move-object/from16 v16, v6

    .line 2234
    .local v16, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v6, "Launcher.MenuManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2236
    if-eqz v15, :cond_2

    .line 2237
    :try_start_8
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_4

    .line 2238
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2239
    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 2241
    :cond_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 2236
    .end local v16           #e:Ljava/lang/IllegalStateException;
    :catchall_2
    move-exception v6

    if-eqz v15, :cond_6

    .line 2237
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_5

    .line 2238
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2239
    const/4 v7, 0x0

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 2241
    :cond_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v6

    .line 2248
    :cond_7
    const-string v6, "componentname"

    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    const-string v6, "apps"

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_3

    .line 2253
    .end local v14           #componentName:Landroid/content/ComponentName;
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v18           #id:I
    .end local v19           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_9

    .line 2254
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2256
    const/16 v17, 0x0

    .end local p0
    :goto_4
    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v6

    move/from16 v0, v17

    move v1, v6

    if-ge v0, v1, :cond_9

    .line 2257
    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2256
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 2261
    :cond_9
    :try_start_9
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2262
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2264
    monitor-exit v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2266
    const/4 v6, 0x0

    goto/16 :goto_0
.end method
