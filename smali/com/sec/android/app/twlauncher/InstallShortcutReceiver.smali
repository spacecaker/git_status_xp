.class public Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# static fields
.field static DEFAULT_SCREEN_COUNT:I


# instance fields
.field private final mCoordinates:[I

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x7

    sput v0, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->DEFAULT_SCREEN_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->mCoordinates:[I

    return-void
.end method

.method private static findEmptyCell(Landroid/content/Context;[II)Z
    .locals 16
    .parameter "context"
    .parameter "xy"
    .parameter "screen"

    .prologue
    .line 98
    sget v11, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 99
    .local v11, xCount:I
    sget v13, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 101
    .local v13, yCount:I
    filled-new-array {v11, v13}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Z

    .line 103
    .local v8, occupied:[[Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 104
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/16 p0, 0x4

    move/from16 v0, p0

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    .end local p0
    const/16 p0, 0x0

    const-string v5, "cellX"

    aput-object v5, v4, p0

    const/16 p0, 0x1

    const-string v5, "cellY"

    aput-object v5, v4, p0

    const/16 p0, 0x2

    const-string v5, "spanX"

    aput-object v5, v4, p0

    const/16 p0, 0x3

    const-string v5, "spanY"

    aput-object v5, v4, p0

    const-string v5, "screen=?"

    const/16 p0, 0x1

    move/from16 v0, p0

    new-array v0, v0, [Ljava/lang/String;

    move-object v6, v0

    const/16 p0, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .end local p2
    aput-object p2, v6, p0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 110
    .local p0, c:Landroid/database/Cursor;
    const-string p2, "cellX"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 111
    .local v2, cellXIndex:I
    const-string p2, "cellY"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 112
    .local v4, cellYIndex:I
    const-string p2, "spanX"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 113
    .local v6, spanXIndex:I
    const-string p2, "spanY"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 116
    .local v9, spanYIndex:I
    :cond_0
    :try_start_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 117
    move-object/from16 v0, p0

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 118
    .local p2, cellX:I
    move-object/from16 v0, p0

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 119
    .local v3, cellY:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 120
    .local v5, spanX:I
    move-object/from16 v0, p0

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 122
    .local v7, spanY:I
    move/from16 v10, p2

    .local v10, x:I
    :goto_0
    add-int v12, p2, v5

    if-ge v10, v12, :cond_0

    if-ge v10, v11, :cond_0

    .line 123
    move v12, v3

    .local v12, y:I
    :goto_1
    add-int v14, v3, v7

    if-ge v12, v14, :cond_1

    if-ge v12, v13, :cond_1

    .line 124
    aget-object v14, v8, v10

    const/4 v15, 0x1

    aput-boolean v15, v14, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 122
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 128
    .end local v3           #cellY:I
    .end local v5           #spanX:I
    .end local v7           #spanY:I
    .end local v10           #x:I
    .end local v12           #y:I
    .end local p2           #cellX:I
    :catch_0
    move-exception p1

    .line 129
    .local p1, e:Ljava/lang/Exception;
    const/16 p1, 0x0

    .line 131
    .end local p1           #e:Ljava/lang/Exception;
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    move/from16 p0, p1

    .line 134
    .end local v4           #cellYIndex:I
    .end local v6           #spanXIndex:I
    .end local p0           #c:Landroid/database/Cursor;
    :goto_2
    return p0

    .line 131
    .restart local v4       #cellYIndex:I
    .restart local v6       #spanXIndex:I
    .restart local p0       #c:Landroid/database/Cursor;
    .local p1, xy:[I
    :catchall_0
    move-exception p1

    .end local p1           #xy:[I
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    throw p1

    .restart local p1       #xy:[I
    :cond_2
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 134
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v3, p1

    move v6, v11

    move v7, v13

    invoke-static/range {v3 .. v8}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell([IIIII[[Z)Z

    .end local v4           #cellYIndex:I
    .end local v6           #spanXIndex:I
    move-result p0

    goto :goto_2
.end method

.method private installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 8
    .parameter "context"
    .parameter "data"
    .parameter "screen"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 60
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->mCoordinates:[I

    invoke-static {p1, v4, p3}, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 63
    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    .line 64
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->mCoordinates:[I

    aget v4, v4, v6

    iput v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 65
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->mCoordinates:[I

    aget v4, v4, v7

    iput v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 66
    iput p3, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 68
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 70
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 71
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    :cond_0
    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    :cond_1
    move v4, v6

    .line 94
    .end local v0           #cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v2           #intent:Landroid/content/Intent;
    .end local p0
    :goto_0
    return v4

    .line 77
    .restart local v0       #cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local p0
    :cond_2
    const-string v4, "duplicate"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 78
    .local v1, duplicate:Z
    if-nez v1, :cond_3

    invoke-static {p1, v3, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 79
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v0, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .line 81
    const v4, 0x7f0a001f

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_1
    move v4, v7

    .line 88
    goto :goto_0

    .line 84
    .restart local p0
    :cond_4
    const v4, 0x7f0a0021

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 90
    .end local v0           #cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v1           #duplicate:Z
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    const v4, 0x7f0a001e

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v6

    .line 94
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "data"

    .prologue
    .line 38
    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 57
    :cond_0
    return-void

    .line 42
    :cond_1
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getScreen()I

    move-result v1

    .line 45
    .local v1, screen:I
    const-string v3, "launcher"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->mPrefs:Landroid/content/SharedPreferences;

    .line 46
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v3, :cond_3

    .line 47
    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    .line 51
    .local v2, screenCount:I
    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 54
    if-eq v0, v1, :cond_2

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 49
    .end local v0           #i:I
    .end local v2           #screenCount:I
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "screencount"

    sget v5, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->DEFAULT_SCREEN_COUNT:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .restart local v2       #screenCount:I
    goto :goto_0
.end method
