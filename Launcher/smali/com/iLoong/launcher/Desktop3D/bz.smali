.class Lcom/iLoong/launcher/Desktop3D/bz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/g;

.field private final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/g;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/bz;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iput-object p2, p0, Lcom/iLoong/launcher/Desktop3D/bz;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/Desktop3D/bz;)Lcom/iLoong/launcher/Desktop3D/g;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bz;->a:Lcom/iLoong/launcher/Desktop3D/g;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iLoong/launcher/Desktop3D/bz;->a:Lcom/iLoong/launcher/Desktop3D/g;

    monitor-enter v11

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bz;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/g;->b(Lcom/iLoong/launcher/Desktop3D/g;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bz;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v10, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bz;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/g;->c(Lcom/iLoong/launcher/Desktop3D/g;)Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/Desktop3D/a;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12, v13}, Lcom/iLoong/launcher/Desktop3D/a;-><init>(Lcom/iLoong/launcher/Desktop3D/bz;J)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    monitor-exit v11

    return-void

    :cond_0
    new-instance v14, Lcom/iLoong/launcher/a/g;

    invoke-direct {v14}, Lcom/iLoong/launcher/a/g;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bz;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    const-string v2, ""

    const-string v4, ""

    instance-of v4, v1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v4, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bz;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/g;->c(Lcom/iLoong/launcher/Desktop3D/g;)Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v9, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v15

    const/4 v1, 0x0

    aget v1, v15, v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_1

    const/4 v1, 0x1

    aget v1, v15, v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    iget v3, v9, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bz;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iget-object v2, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v4, v9, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v5, 0x0

    aget v5, v15, v5

    const/4 v6, 0x1

    aget v6, v15, v6

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static/range {v1 .. v8}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/Desktop3D/g;Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v1, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v9, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    const/4 v4, 0x0

    aget v4, v15, v4

    iput v4, v14, Lcom/iLoong/launcher/a/g;->a:I

    const/4 v4, 0x1

    aget v4, v15, v4

    iput v4, v14, Lcom/iLoong/launcher/a/g;->b:I

    iput-object v3, v14, Lcom/iLoong/launcher/a/g;->d:Ljava/lang/String;

    iget-object v3, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v3, v14, Lcom/iLoong/launcher/a/g;->e:Landroid/content/ComponentName;

    const/4 v3, 0x1

    iput-boolean v3, v14, Lcom/iLoong/launcher/a/g;->g:Z

    :goto_2
    if-eqz v2, :cond_1

    invoke-static {v1, v2}, Lcom/iLoong/launcher/Desktop3D/at;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v1, v14, Lcom/iLoong/launcher/a/g;->c:Ljava/lang/String;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HIDE:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/iLoong/launcher/a/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v14, Lcom/iLoong/launcher/a/g;->f:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bz;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/g;->b(Lcom/iLoong/launcher/Desktop3D/g;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :try_start_1
    instance-of v4, v1, Landroid/content/pm/ResolveInfo;

    if-eqz v4, :cond_5

    check-cast v1, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/bz;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v2, v1}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/Desktop3D/g;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/bz;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v4}, Lcom/iLoong/launcher/Desktop3D/g;->d(Lcom/iLoong/launcher/Desktop3D/g;)Lcom/iLoong/launcher/app/ak;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/iLoong/launcher/app/ak;->a(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Lcom/iLoong/launcher/a/g;->d:Ljava/lang/String;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v14, Lcom/iLoong/launcher/a/g;->e:Landroid/content/ComponentName;

    const/4 v1, 0x1

    iput-boolean v1, v14, Lcom/iLoong/launcher/a/g;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :cond_5
    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method
