.class Lcom/iLoong/launcher/app/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/app/LauncherModel;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/app/LauncherModel;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/iLoong/launcher/app/am;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/iLoong/launcher/app/am;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/app/am;)Lcom/iLoong/launcher/app/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    return-object v0
.end method

.method static synthetic a(Lcom/iLoong/launcher/app/am;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/app/am;->e:Z

    return-void
.end method

.method private d()V
    .locals 3

    const-string v0, "loadAndBind"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadAndBindWorkspace mWorkspaceLoaded="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v2}, Lcom/iLoong/launcher/app/LauncherModel;->a(Lcom/iLoong/launcher/app/LauncherModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/iLoong/launcher/app/am;->i()V

    const-string v0, "finish load workspace"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/iLoong/launcher/app/am;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/app/LauncherModel;->a(Lcom/iLoong/launcher/app/LauncherModel;Z)V

    invoke-direct {p0}, Lcom/iLoong/launcher/app/am;->j()V

    goto :goto_0
.end method

.method private e()V
    .locals 7

    sget-object v1, Lcom/iLoong/launcher/HotSeat3D/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    :goto_0
    iget-boolean v0, p0, Lcom/iLoong/launcher/app/am;->d:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/iLoong/launcher/app/LauncherModel;->g:Z

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "waited "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms for sidebar to finish binding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/iLoong/launcher/HotSeat3D/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private f()V
    .locals 7

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/g;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    :goto_0
    iget-boolean v0, p0, Lcom/iLoong/launcher/app/am;->d:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/iLoong/launcher/app/LauncherModel;->h:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/app/LauncherModel;->h:Z

    const-string v0, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "waited "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms for d3d to finish init"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private g()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v2}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v2

    new-instance v3, Lcom/iLoong/launcher/app/r;

    invoke-direct {v3, p0}, Lcom/iLoong/launcher/app/r;-><init>(Lcom/iLoong/launcher/app/am;)V

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    :goto_0
    iget-boolean v2, p0, Lcom/iLoong/launcher/app/am;->d:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/iLoong/launcher/app/am;->e:Z

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "waited "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms for previous step to finish binding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private h()V
    .locals 11

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iLoong/launcher/app/LauncherModel;->a(Lcom/iLoong/launcher/app/LauncherModel;Ljava/util/List;)V

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->e(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_3

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryIntentActivities took "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    move v2, v3

    :goto_1
    sget-object v1, Lcom/iLoong/launcher/Desktop3D/cb;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/cb;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v2

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x81

    invoke-virtual {v4, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->e(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private i()V
    .locals 38

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iLoong/launcher/app/am;->b:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-static {v11}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v2, "launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "before clear widget3d size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v4, v4, Lcom/iLoong/launcher/app/LauncherModel;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/iLoong/launcher/app/k;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    const-string v2, "intent"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    const-string v2, "title"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v2, "iconType"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v2, "icon"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v2, "iconPackage"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v2, "iconResource"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v2, "container"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    const-string v2, "itemType"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    const-string v2, "appWidgetId"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    const-string v2, "screen"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    const-string v2, "cellX"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    const-string v2, "cellY"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    const-string v2, "spanX"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    const-string v2, "spanY"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    const-string v2, "x"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    const-string v2, "y"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    const-string v2, "uri"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    const-string v2, "displayMode"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    const-string v2, "angle"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    :cond_0
    :goto_0
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/app/am;->d:Z

    if-nez v2, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    sget-object v2, Lcom/iLoong/launcher/app/k;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_3
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_4
    return-void

    :cond_5
    :try_start_1
    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    const/4 v4, 0x0

    :try_start_2
    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    if-nez v2, :cond_6

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    move-object/from16 v3, v18

    move-object v5, v11

    invoke-virtual/range {v2 .. v8}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/iLoong/launcher/a/f;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-virtual {v3, v11, v2, v6, v7}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/content/Context;Lcom/iLoong/launcher/a/f;Landroid/database/Cursor;I)V

    iput-object v4, v2, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/iLoong/launcher/a/f;->k:J

    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v2, Lcom/iLoong/launcher/a/f;->m:J

    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/iLoong/launcher/a/f;->n:I

    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/iLoong/launcher/a/f;->s:I

    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/iLoong/launcher/a/f;->t:I

    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/iLoong/launcher/a/f;->p:I

    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/iLoong/launcher/a/f;->q:I

    move/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/iLoong/launcher/a/f;->r:I

    sparse-switch v3, :sswitch_data_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v4, v4, Lcom/iLoong/launcher/app/LauncherModel;->d:Ljava/util/HashMap;

    int-to-long v9, v3

    invoke-static {v4, v9, v10}, Lcom/iLoong/launcher/app/LauncherModel;->a(Ljava/util/HashMap;J)Lcom/iLoong/launcher/a/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iLoong/launcher/a/h;->a(Lcom/iLoong/launcher/a/f;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    const-string v3, "Launcher.Model"

    const-string v4, "Desktop items loading interrupted:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    move-object v10, v6

    move v15, v7

    move/from16 v16, v8

    move-object/from16 v17, v4

    invoke-static/range {v9 .. v17}, Lcom/iLoong/launcher/app/LauncherModel;->a(Lcom/iLoong/launcher/app/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/Intent;)Lcom/iLoong/launcher/a/f;

    move-result-object v2

    goto :goto_3

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v3, v3, Lcom/iLoong/launcher/app/LauncherModel;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v3, v3, Lcom/iLoong/launcher/app/LauncherModel;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Error loading shortcut "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", removing it"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/iLoong/launcher/app/k;->a(JZ)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v4, v4, Lcom/iLoong/launcher/app/LauncherModel;->d:Ljava/util/HashMap;

    invoke-static {v4, v2, v3}, Lcom/iLoong/launcher/app/LauncherModel;->a(Ljava/util/HashMap;J)Lcom/iLoong/launcher/a/h;

    move-result-object v4

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    sget v5, Lcom/iLoong/launcher/desktop/iLoongLauncher;->y:I

    if-nez v5, :cond_a

    iget-object v5, v4, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    const-string v9, "Folder"

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v4, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    const-string v9, "\u8cc7\u6599\u593e"

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const-string v5, "\u6587\u4ef6\u5939"

    iput-object v5, v4, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    :cond_9
    :goto_4
    iput-wide v2, v4, Lcom/iLoong/launcher/a/h;->k:J

    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v9, v2

    iput-wide v9, v4, Lcom/iLoong/launcher/a/h;->m:J

    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v4, Lcom/iLoong/launcher/a/h;->n:I

    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v4, Lcom/iLoong/launcher/a/h;->s:I

    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v4, Lcom/iLoong/launcher/a/h;->t:I

    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v4, Lcom/iLoong/launcher/a/h;->p:I

    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v4, Lcom/iLoong/launcher/a/h;->q:I

    packed-switch v2, :pswitch_data_1

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->d:Ljava/util/HashMap;

    iget-wide v9, v4, Lcom/iLoong/launcher/a/h;->k:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    const/4 v9, 0x1

    if-ne v5, v9, :cond_c

    iget-object v5, v4, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    const-string v9, "Folder"

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, v4, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    const-string v9, "\u6587\u4ef6\u5939"

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_b
    const-string v5, "\u8cc7\u6599\u593e"

    iput-object v5, v4, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_c
    iget-object v5, v4, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    const-string v9, "\u6587\u4ef6\u5939"

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, v4, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    const-string v9, "\u8cc7\u6599\u593e"

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_d
    const-string v5, "Folder"

    iput-object v5, v4, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    goto :goto_4

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_4
    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move/from16 v0, v35

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-nez v2, :cond_e

    if-nez v20, :cond_e

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->d:Ljava/util/HashMap;

    invoke-static {v2, v3, v4}, Lcom/iLoong/launcher/app/LauncherModel;->b(Ljava/util/HashMap;J)Lcom/iLoong/launcher/a/a;

    move-result-object v9

    move/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v10

    const/4 v2, 0x0

    if-eqz v10, :cond_f

    const/4 v15, 0x0

    :try_start_6
    invoke-static {v10, v15}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v2

    :cond_f
    :goto_6
    :try_start_7
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/iLoong/launcher/a/a;->f:Ljava/lang/CharSequence;

    iput-wide v3, v9, Lcom/iLoong/launcher/a/a;->k:J

    iput-object v5, v9, Lcom/iLoong/launcher/a/a;->b:Landroid/net/Uri;

    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v9, Lcom/iLoong/launcher/a/a;->m:J

    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v9, Lcom/iLoong/launcher/a/a;->n:I

    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v9, Lcom/iLoong/launcher/a/a;->s:I

    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v9, Lcom/iLoong/launcher/a/a;->t:I

    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v9, Lcom/iLoong/launcher/a/a;->p:I

    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v9, Lcom/iLoong/launcher/a/a;->q:I

    iput-object v2, v9, Lcom/iLoong/launcher/a/a;->a:Landroid/content/Intent;

    move/from16 v0, v36

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v9, Lcom/iLoong/launcher/a/a;->c:I

    packed-switch v3, :pswitch_data_2

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->d:Ljava/util/HashMap;

    iget-wide v3, v9, Lcom/iLoong/launcher/a/a;->k:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :pswitch_6
    move/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "appWidgetIdIndex= "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "appWidgetId= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    if-nez v20, :cond_14

    if-eqz v5, :cond_10

    iget-object v9, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v9, :cond_10

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_14

    :cond_10
    const-string v5, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Deleting widget that isn\'t installed anymore: id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " appWidgetId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "iLoongApplication.BuiltIn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/iLoong/launcher/desktop/iLoongApplication;->c:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v3, Lcom/iLoong/launcher/desktop/iLoongApplication;->c:Z

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, -0x64

    if-eq v3, v4, :cond_11

    const-string v2, "Launcher.Model"

    const-string v3, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    :cond_12
    const-string v2, "Launcher.Model"

    const-string v3, "Widget class name null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v4

    iget-object v4, v4, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c:Lcom/iLoong/launcher/widget/a;

    invoke-virtual {v4, v2}, Lcom/iLoong/launcher/widget/a;->deleteAppWidgetId(I)V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v2

    iget-object v2, v2, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c:Lcom/iLoong/launcher/widget/a;

    invoke-virtual {v2}, Lcom/iLoong/launcher/widget/a;->allocateAppWidgetId()I

    move-result v2

    new-instance v4, Lcom/iLoong/launcher/a/c;

    invoke-direct {v4, v2}, Lcom/iLoong/launcher/a/c;-><init>(I)V

    int-to-long v9, v2

    iput-wide v9, v4, Lcom/iLoong/launcher/a/c;->k:J

    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/iLoong/launcher/a/c;->n:I

    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/iLoong/launcher/a/c;->s:I

    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/iLoong/launcher/a/c;->t:I

    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/iLoong/launcher/a/c;->w:I

    move/from16 v0, v32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/iLoong/launcher/a/c;->x:I

    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/iLoong/launcher/a/c;->p:I

    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/iLoong/launcher/a/c;->q:I

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Lcom/iLoong/launcher/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {v4}, Lcom/iLoong/launcher/a/c;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/iLoong/launcher/a/c;->c()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    int-to-long v9, v3

    iput-wide v9, v4, Lcom/iLoong/launcher/a/c;->m:J

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "New Item widget  appWidgetId="

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_14
    new-instance v5, Lcom/iLoong/launcher/a/c;

    invoke-direct {v5, v2}, Lcom/iLoong/launcher/a/c;-><init>(I)V

    const-string v9, "Launcher.Model"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "provide not null appWidgetIdIndex= "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, "appWidgetId= "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v3, v5, Lcom/iLoong/launcher/a/c;->k:J

    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v5, Lcom/iLoong/launcher/a/c;->n:I

    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v5, Lcom/iLoong/launcher/a/c;->s:I

    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v5, Lcom/iLoong/launcher/a/c;->t:I

    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v5, Lcom/iLoong/launcher/a/c;->w:I

    move/from16 v0, v32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v5, Lcom/iLoong/launcher/a/c;->x:I

    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v5, Lcom/iLoong/launcher/a/c;->p:I

    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v5, Lcom/iLoong/launcher/a/c;->q:I

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lcom/iLoong/launcher/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, -0x64

    if-eq v2, v3, :cond_15

    const-string v2, "Launcher.Model"

    const-string v3, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_15
    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v5, Lcom/iLoong/launcher/a/c;->m:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_7
    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, -0x64

    if-eq v2, v3, :cond_16

    const-string v2, "Launcher.Model"

    const-string v3, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_16
    new-instance v3, Lcom/iLoong/launcher/a/d;

    invoke-direct {v3}, Lcom/iLoong/launcher/a/d;-><init>()V

    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/iLoong/launcher/a/d;->k:J

    int-to-long v4, v2

    iput-wide v4, v3, Lcom/iLoong/launcher/a/d;->m:J

    move/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/iLoong/launcher/a/d;->a:I

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/iLoong/launcher/a/d;->b:Ljava/lang/String;

    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/iLoong/launcher/a/d;->n:I

    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/iLoong/launcher/a/d;->s:I

    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/iLoong/launcher/a/d;->t:I

    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/iLoong/launcher/a/d;->w:I

    move/from16 v0, v32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/iLoong/launcher/a/d;->x:I

    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/iLoong/launcher/a/d;->p:I

    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/iLoong/launcher/a/d;->q:I

    const-string v2, "launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "load widget:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/iLoong/launcher/a/d;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "widget3d size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v5, v5, Lcom/iLoong/launcher/app/LauncherModel;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_8
    move/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v3

    const/4 v4, 0x0

    :try_start_8
    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_9
    new-instance v4, Lcom/iLoong/launcher/a/f;

    invoke-direct {v4}, Lcom/iLoong/launcher/a/f;-><init>()V

    iput-object v3, v4, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    const/4 v5, 0x6

    if-ne v2, v5, :cond_17

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iLoong/launcher/Desktop3D/cb;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    const/4 v3, 0x6

    iput v3, v4, Lcom/iLoong/launcher/a/f;->l:I

    :goto_8
    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v4, Lcom/iLoong/launcher/a/f;->k:J

    int-to-long v9, v3

    iput-wide v9, v4, Lcom/iLoong/launcher/a/f;->m:J

    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/iLoong/launcher/a/f;->n:I

    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/iLoong/launcher/a/f;->s:I

    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/iLoong/launcher/a/f;->t:I

    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/iLoong/launcher/a/f;->w:I

    move/from16 v0, v32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/iLoong/launcher/a/f;->x:I

    move/from16 v0, v33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/iLoong/launcher/a/f;->p:I

    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/iLoong/launcher/a/f;->q:I

    move/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/iLoong/launcher/a/f;->r:I

    const/4 v5, 0x7

    if-ne v2, v5, :cond_18

    sparse-switch v3, :sswitch_data_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-virtual {v2, v11, v4, v6, v7}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/content/Context;Lcom/iLoong/launcher/a/f;Landroid/database/Cursor;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->d:Ljava/util/HashMap;

    int-to-long v9, v3

    invoke-static {v2, v9, v10}, Lcom/iLoong/launcher/app/LauncherModel;->a(Ljava/util/HashMap;J)Lcom/iLoong/launcher/a/h;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/iLoong/launcher/a/h;->a(Lcom/iLoong/launcher/a/f;)V

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/iLoong/launcher/Desktop3D/cb;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    const/4 v3, 0x7

    iput v3, v4, Lcom/iLoong/launcher/a/f;->l:I

    goto/16 :goto_8

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v2, v2, Lcom/iLoong/launcher/app/LauncherModel;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v1, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Removed id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_a
    invoke-static {v4, v5, v1}, Lcom/iLoong/launcher/app/k;->a(JZ)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v6, v7}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const-string v1, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not remove id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/a/c;

    invoke-static {v11, v1}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/content/Context;Lcom/iLoong/launcher/a/c;)V

    goto/16 :goto_2

    :catch_2
    move-exception v2

    goto/16 :goto_0

    :catch_3
    move-exception v10

    goto/16 :goto_6

    :catch_4
    move-exception v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_0
        -0x65 -> :sswitch_2
        -0x64 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch -0x65
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x64
        :pswitch_5
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0xc8 -> :sswitch_0
        -0x65 -> :sswitch_4
        -0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method private j()V
    .locals 10

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->c(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/app/x;

    if-nez v0, :cond_0

    const-string v0, "Launcher.Model"

    const-string v1, "LoaderTask running with no launcher"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/app/q;

    invoke-direct {v2, p0, v0}, Lcom/iLoong/launcher/app/q;-><init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/app/v;

    invoke-direct {v2, p0, v0}, Lcom/iLoong/launcher/app/v;-><init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/iLoong/launcher/app/am;->e()V

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/app/w;

    invoke-direct {v2, p0, v0}, Lcom/iLoong/launcher/app/w;-><init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/iLoong/launcher/app/am;->f()V

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v1, v1, Lcom/iLoong/launcher/app/LauncherModel;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v3

    :goto_1
    if-lt v2, v6, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/app/u;

    invoke-direct {v2, p0, v0}, Lcom/iLoong/launcher/app/u;-><init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/app/o;

    invoke-direct {v2, p0, v0}, Lcom/iLoong/launcher/app/o;-><init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/app/z;

    invoke-direct {v2, p0}, Lcom/iLoong/launcher/app/z;-><init>(Lcom/iLoong/launcher/app/am;)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    invoke-interface {v0}, Lcom/iLoong/launcher/app/x;->i()I

    move-result v6

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v1, v1, Lcom/iLoong/launcher/app/LauncherModel;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v3

    :goto_2
    if-lt v2, v7, :cond_3

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v1, v1, Lcom/iLoong/launcher/app/LauncherModel;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v3

    :goto_3
    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v1, v1, Lcom/iLoong/launcher/app/LauncherModel;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_5

    move v2, v3

    :goto_4
    if-lt v2, v7, :cond_7

    :goto_5
    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v1, v1, Lcom/iLoong/launcher/app/LauncherModel;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v3, v1, :cond_9

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/app/ad;

    invoke-direct {v2, p0, v4, v5, v0}, Lcom/iLoong/launcher/app/ad;-><init>(Lcom/iLoong/launcher/app/am;JLcom/iLoong/launcher/app/x;)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v1, v2, 0x6

    if-gt v1, v6, :cond_2

    const/4 v1, 0x6

    :goto_6
    iget-object v7, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v7}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v7

    new-instance v8, Lcom/iLoong/launcher/app/t;

    invoke-direct {v8, p0, v0, v2, v1}, Lcom/iLoong/launcher/app/t;-><init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;II)V

    invoke-virtual {v7, v8}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v2, 0x6

    move v2, v1

    goto/16 :goto_1

    :cond_2
    sub-int v1, v6, v2

    goto :goto_6

    :cond_3
    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v1, v1, Lcom/iLoong/launcher/app/LauncherModel;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/a/c;

    iget v8, v1, Lcom/iLoong/launcher/a/c;->n:I

    if-ne v8, v6, :cond_4

    iget-object v8, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v8}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v8

    new-instance v9, Lcom/iLoong/launcher/app/y;

    invoke-direct {v9, p0, v0, v1}, Lcom/iLoong/launcher/app/y;-><init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;Lcom/iLoong/launcher/a/c;)V

    invoke-virtual {v8, v9}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v1, v1, Lcom/iLoong/launcher/app/LauncherModel;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/a/d;

    iget v8, v1, Lcom/iLoong/launcher/a/d;->n:I

    if-ne v8, v6, :cond_6

    iget-object v8, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v8}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v8

    new-instance v9, Lcom/iLoong/launcher/app/ac;

    invoke-direct {v9, p0, v0, v1}, Lcom/iLoong/launcher/app/ac;-><init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;Lcom/iLoong/launcher/a/d;)V

    invoke-virtual {v8, v9}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_3

    :cond_7
    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v1, v1, Lcom/iLoong/launcher/app/LauncherModel;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/a/c;

    iget v8, v1, Lcom/iLoong/launcher/a/c;->n:I

    if-eq v8, v6, :cond_8

    iget-object v8, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v8}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v8

    new-instance v9, Lcom/iLoong/launcher/app/ab;

    invoke-direct {v9, p0, v0, v1}, Lcom/iLoong/launcher/app/ab;-><init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;Lcom/iLoong/launcher/a/c;)V

    invoke-virtual {v8, v9}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    :cond_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_4

    :cond_9
    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v1, v1, Lcom/iLoong/launcher/app/LauncherModel;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/a/d;

    iget v2, v1, Lcom/iLoong/launcher/a/d;->n:I

    if-eq v2, v6, :cond_a

    iget-object v2, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v2}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v2

    new-instance v7, Lcom/iLoong/launcher/app/ae;

    invoke-direct {v7, p0, v0, v1}, Lcom/iLoong/launcher/app/ae;-><init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;Lcom/iLoong/launcher/a/d;)V

    invoke-virtual {v2, v7}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->c(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/app/x;

    if-nez v0, :cond_0

    const-string v0, "Launcher.Model"

    const-string v1, "LoaderTask running with no launcher (onlyBindAllWidgets)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->i(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v2}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v2

    new-instance v3, Lcom/iLoong/launcher/app/ag;

    invoke-direct {v3, p0, v0, v1}, Lcom/iLoong/launcher/app/ag;-><init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private l()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->c(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/app/x;

    if-nez v0, :cond_0

    const-string v0, "Launcher.Model"

    const-string v1, "LoaderTask running with no launcher (loadAllWidgets)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->i(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->i(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->i(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v5, Lcom/iLoong/launcher/app/l;

    invoke-direct {v5, v2}, Lcom/iLoong/launcher/app/l;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "sort widgets took "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->i(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v2}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v2

    new-instance v3, Lcom/iLoong/launcher/app/af;

    invoke-direct {v3, p0, v0, v1}, Lcom/iLoong/launcher/app/af;-><init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    iget v5, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-lez v5, :cond_2

    iget v5, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v5}, Lcom/iLoong/launcher/app/LauncherModel;->i(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Widget "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has invalid dimensions ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private m()V
    .locals 3

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadAndBindAllApps mAllAppsLoaded="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v2}, Lcom/iLoong/launcher/app/LauncherModel;->d(Lcom/iLoong/launcher/app/LauncherModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->d(Lcom/iLoong/launcher/app/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/iLoong/launcher/app/am;->o()V

    iget-boolean v0, p0, Lcom/iLoong/launcher/app/am;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/app/LauncherModel;->c(Lcom/iLoong/launcher/app/LauncherModel;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/iLoong/launcher/app/am;->n()V

    goto :goto_0
.end method

.method private n()V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->c(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/app/x;

    if-nez v0, :cond_0

    const-string v0, "Launcher.Model"

    const-string v1, "LoaderTask running with no launcher (onlyBindAllApps)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;

    move-result-object v1

    iget-object v1, v1, Lcom/iLoong/launcher/app/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v2}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v2

    new-instance v3, Lcom/iLoong/launcher/app/ai;

    invoke-direct {v3, p0, v0, v1}, Lcom/iLoong/launcher/app/ai;-><init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private o()V
    .locals 15

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->c(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/app/x;

    if-nez v0, :cond_1

    const-string v0, "Launcher.Model"

    const-string v1, "LoaderTask running with no launcher (loadAllAppsByBatch)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v3, 0x7fffffff

    const/4 v2, -0x1

    const/4 v1, 0x0

    check-cast v1, [I

    move v1, v2

    move v7, v4

    move v2, v3

    :goto_1
    if-ge v7, v2, :cond_2

    iget-boolean v3, p0, Lcom/iLoong/launcher/app/am;->d:Z

    if-eqz v3, :cond_3

    :cond_2
    const-string v1, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cached all "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " apps in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->m(Lcom/iLoong/launcher/app/LauncherModel;)I

    move-result v0

    if-lez v0, :cond_8

    const-string v0, " (including delay)"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-nez v7, :cond_a

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/app/n;->a()V

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->e(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->e(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "queryIntentActivities got "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " apps"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v2}, Lcom/iLoong/launcher/app/LauncherModel;->k(Lcom/iLoong/launcher/app/LauncherModel;)I

    move-result v2

    if-nez v2, :cond_5

    move v2, v1

    move v3, v1

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move v5, v4

    move v6, v7

    :goto_4
    if-ge v6, v3, :cond_4

    if-lt v5, v2, :cond_6

    :cond_4
    if-gt v6, v2, :cond_7

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/app/am;->a(Lcom/iLoong/launcher/app/x;)Lcom/iLoong/launcher/app/x;

    move-result-object v5

    iget-object v12, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v12}, Lcom/iLoong/launcher/app/LauncherModel;->j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;

    move-result-object v12

    iget-object v12, v12, Lcom/iLoong/launcher/app/n;->b:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v13}, Lcom/iLoong/launcher/app/LauncherModel;->j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v13, Lcom/iLoong/launcher/app/n;->b:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v13}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v13

    new-instance v14, Lcom/iLoong/launcher/app/ah;

    invoke-direct {v14, p0, v5, v1, v12}, Lcom/iLoong/launcher/app/ah;-><init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;ZLjava/util/ArrayList;)V

    invoke-virtual {v13, v14}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    const-string v1, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "batch of "

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v7, v6, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " icons processed in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long v10, v12, v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "ms"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->m(Lcom/iLoong/launcher/app/LauncherModel;)I

    move-result v1

    if-lez v1, :cond_9

    if-ge v6, v3, :cond_9

    :try_start_0
    const-string v1, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "sleeping for "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v7}, Lcom/iLoong/launcher/app/LauncherModel;->m(Lcom/iLoong/launcher/app/LauncherModel;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "ms"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->m(Lcom/iLoong/launcher/app/LauncherModel;)I

    move-result v1

    int-to-long v10, v1

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    move v7, v6

    move v2, v3

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v2}, Lcom/iLoong/launcher/app/LauncherModel;->k(Lcom/iLoong/launcher/app/LauncherModel;)I

    move-result v2

    move v3, v1

    goto/16 :goto_3

    :cond_6
    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;

    move-result-object v12

    new-instance v13, Lcom/iLoong/launcher/a/b;

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->e(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v14, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v14}, Lcom/iLoong/launcher/app/LauncherModel;->l(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/ak;

    move-result-object v14

    invoke-direct {v13, v1, v14}, Lcom/iLoong/launcher/a/b;-><init>(Landroid/content/pm/ResolveInfo;Lcom/iLoong/launcher/app/ak;)V

    invoke-virtual {v12, v13}, Lcom/iLoong/launcher/app/n;->a(Lcom/iLoong/launcher/a/b;)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_4

    :cond_7
    move v1, v4

    goto/16 :goto_5

    :catch_0
    move-exception v1

    move v1, v2

    move v7, v6

    move v2, v3

    goto/16 :goto_1

    :cond_8
    const-string v0, ""

    goto/16 :goto_2

    :cond_9
    move v1, v2

    move v7, v6

    move v2, v3

    goto/16 :goto_1

    :cond_a
    move v3, v2

    move v2, v1

    goto/16 :goto_3
.end method


# virtual methods
.method a(Lcom/iLoong/launcher/app/x;)Lcom/iLoong/launcher/app/x;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->f(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lcom/iLoong/launcher/app/am;->d:Z

    if-eqz v0, :cond_0

    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->c(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->c(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/app/x;

    if-eq v0, p1, :cond_2

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "Launcher.Model"

    const-string v3, "no mCallbacks"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/app/am;->c:Z

    return v0
.end method

.method public b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/iLoong/launcher/app/am;->d:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 3

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadAndBindAllWidgets mAllWidgetsLoaded="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v2}, Lcom/iLoong/launcher/app/LauncherModel;->h(Lcom/iLoong/launcher/app/LauncherModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->h(Lcom/iLoong/launcher/app/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/iLoong/launcher/app/am;->l()V

    iget-boolean v0, p0, Lcom/iLoong/launcher/app/am;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/iLoong/launcher/app/am;->k()V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/app/LauncherModel;->a(Lcom/iLoong/launcher/app/LauncherModel;I)V

    const-string v0, "launcher model start run"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->c(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/app/x;

    const-string v0, "LoaderTask"

    const-string v1, "run loadWorkspaceFirst=true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LoaderTask"

    const-string v1, "run keep_running=true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/cb;->e()Lcom/iLoong/launcher/Desktop3D/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/cb;->g()V

    sget-boolean v0, Lcom/iLoong/launcher/a/f;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/a/f;->d:Z

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->d(Lcom/iLoong/launcher/app/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iLoong/launcher/app/am;->h()V

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/cb;->e()Lcom/iLoong/launcher/Desktop3D/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->e(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/cb;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/cb;->e()Lcom/iLoong/launcher/Desktop3D/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/cb;->j()V

    :cond_1
    const-string v0, "Launcher.Model"

    const-string v1, "step 1: loading workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/iLoong/launcher/app/am;->d()V

    sget-boolean v0, Lcom/iLoong/launcher/a/f;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->d(Lcom/iLoong/launcher/app/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/iLoong/launcher/app/am;->h()V

    :cond_2
    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/cb;->e()Lcom/iLoong/launcher/Desktop3D/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v1}, Lcom/iLoong/launcher/app/LauncherModel;->e(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/cb;->a(Ljava/util/List;)V

    :cond_3
    iget-boolean v0, p0, Lcom/iLoong/launcher/app/am;->d:Z

    if-eqz v0, :cond_6

    :goto_0
    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->c:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->at:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/iLoong/launcher/app/am;->c()V

    :cond_4
    iput-object v2, p0, Lcom/iLoong/launcher/app/am;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->f(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->g(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/am;

    move-result-object v0

    if-ne v0, p0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/iLoong/launcher/app/LauncherModel;->a(Lcom/iLoong/launcher/app/LauncherModel;Lcom/iLoong/launcher/app/am;)V

    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/app/am;->d:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/app/s;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/app/s;-><init>(Lcom/iLoong/launcher/app/am;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    :goto_1
    new-instance v0, Lcom/iLoong/launcher/app/aa;

    iget-object v1, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/app/aa;-><init>(Lcom/iLoong/launcher/app/LauncherModel;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_6
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->X:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bD:Z

    if-nez v0, :cond_7

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-direct {p0}, Lcom/iLoong/launcher/app/am;->g()V

    :cond_7
    const-string v0, "Launcher.Model"

    const-string v1, "step 2: loading all apps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/cb;->e()Lcom/iLoong/launcher/Desktop3D/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/cb;->h()V

    invoke-direct {p0}, Lcom/iLoong/launcher/app/am;->m()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/iLoong/launcher/app/am;->a:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/app/p;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/app/p;-><init>(Lcom/iLoong/launcher/app/am;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/b/g;->b(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
