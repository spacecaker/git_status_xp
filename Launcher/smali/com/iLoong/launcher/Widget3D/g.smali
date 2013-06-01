.class public Lcom/iLoong/launcher/Widget3D/g;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/ArrayList;

.field public static b:Ljava/util/ArrayList;

.field public static c:Lcom/iLoong/launcher/a/f;

.field private static d:Lcom/iLoong/launcher/Widget3D/g;

.field private static final e:Ljava/lang/Object;


# instance fields
.field private f:Lcom/iLoong/launcher/Widget3D/c;

.field private g:Ljava/util/List;

.field private h:Lcom/iLoong/launcher/UI3DEngine/adapter/IRefreshRender;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/iLoong/launcher/Widget3D/g;->d:Lcom/iLoong/launcher/Widget3D/g;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/Widget3D/g;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/Widget3D/g;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/Widget3D/g;->b:Ljava/util/ArrayList;

    sput-object v1, Lcom/iLoong/launcher/Widget3D/g;->c:Lcom/iLoong/launcher/a/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    const-string v0, "theme/widget/config.xml"

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/iLoong/launcher/Widget3D/g;->j:Ljava/util/HashMap;

    new-instance v0, Lcom/iLoong/launcher/Widget3D/e;

    invoke-direct {v0}, Lcom/iLoong/launcher/Widget3D/e;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->h:Lcom/iLoong/launcher/UI3DEngine/adapter/IRefreshRender;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->j:Ljava/util/HashMap;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.iLoong.widget"

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v1, Lcom/iLoong/launcher/desktop/iLoongApplication;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->g:Ljava/util/List;

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/c;->a()Lcom/iLoong/launcher/Widget3D/c;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/g;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Widget3D/c;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/g;->b()V

    return-void
.end method

.method private a(Landroid/content/pm/ResolveInfo;I)Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->b:Landroid/content/Context;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v3, Lcom/iLoong/launcher/desktop/iLoongApplication;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    sget-object v4, Lcom/iLoong/launcher/desktop/iLoongApplication;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->j:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/Widget3D/g;->c(Landroid/content/pm/ResolveInfo;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/g;->j:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/IWidget3DPlugin;

    new-instance v3, Lcom/iLoong/launcher/Widget3D/MainAppContext;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v4

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/iLoong/launcher/Widget3D/MainAppContext;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplication;Lcom/badlogic/gdx/Gdx;)V

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iLoong/launcher/theme/i;->f()Lcom/iLoong/launcher/theme/d;

    move-result-object v4

    iget-object v4, v4, Lcom/iLoong/launcher/theme/d;->l:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iLoong/launcher/theme/i;->f()Lcom/iLoong/launcher/theme/d;

    move-result-object v4

    iget-object v4, v4, Lcom/iLoong/launcher/theme/d;->l:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iLoong/launcher/theme/i;->f()Lcom/iLoong/launcher/theme/d;

    move-result-object v5

    iget-object v5, v5, Lcom/iLoong/launcher/theme/d;->a:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/iLoong/launcher/Widget3D/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/iLoong/launcher/Widget3D/MainAppContext;->mThemeName:Ljava/lang/String;

    :goto_1
    iget-object v4, v3, Lcom/iLoong/launcher/Widget3D/MainAppContext;->mThemeName:Ljava/lang/String;

    const-string v5, "iLoong"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/iLoong/launcher/Widget3D/MainAppContext;->mThemeName:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lcom/iLoong/launcher/Widget3D/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/iLoong/launcher/Widget3D/MainAppContext;->mThemeName:Ljava/lang/String;

    :cond_1
    invoke-interface {v0, v3, p2}, Lcom/iLoong/launcher/Widget3D/IWidget3DPlugin;->getWidget(Lcom/iLoong/launcher/Widget3D/MainAppContext;I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    :goto_2
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->j:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/DexClassLoader;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iLoong/launcher/theme/i;->f()Lcom/iLoong/launcher/theme/d;

    move-result-object v4

    iget-object v4, v4, Lcom/iLoong/launcher/theme/d;->l:Ljava/lang/String;

    iput-object v4, v3, Lcom/iLoong/launcher/Widget3D/MainAppContext;->mThemeName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_2
.end method

.method public static a()Lcom/iLoong/launcher/Widget3D/g;
    .locals 2

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->d:Lcom/iLoong/launcher/Widget3D/g;

    if-nez v0, :cond_1

    sget-object v1, Lcom/iLoong/launcher/Widget3D/g;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->d:Lcom/iLoong/launcher/Widget3D/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iLoong/launcher/Widget3D/g;

    invoke-direct {v0}, Lcom/iLoong/launcher/Widget3D/g;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/Widget3D/g;->d:Lcom/iLoong/launcher/Widget3D/g;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->d:Lcom/iLoong/launcher/Widget3D/g;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/iLoong/launcher/Widget3D/g;Landroid/content/pm/ResolveInfo;)Ldalvik/system/DexClassLoader;
    .locals 1

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/Widget3D/g;->c(Landroid/content/pm/ResolveInfo;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/iLoong/launcher/Widget3D/g;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->g:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/content/pm/ResolveInfo;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Widget3D/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Widget3D/c;->c(Ljava/lang/String;)Lcom/iLoong/launcher/Widget3D/a;

    move-result-object v0

    iget-object v1, v0, Lcom/iLoong/launcher/Widget3D/a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    const-string v2, "max_instance_count"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-lez v1, :cond_1

    iget v0, v0, Lcom/iLoong/launcher/Widget3D/a;->c:I

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/iLoong/launcher/Widget3D/l;

    invoke-direct {v1, p0, p1}, Lcom/iLoong/launcher/Widget3D/l;-><init>(Lcom/iLoong/launcher/Widget3D/g;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Landroid/content/pm/ResolveInfo;)Ldalvik/system/DexClassLoader;
    .locals 6

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "widget"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/iLoong/launcher/Widget3D/g;->e(Ljava/lang/String;)Ljava/io/File;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_0

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    :cond_0
    new-instance v1, Ldalvik/system/DexClassLoader;

    sget-object v4, Lcom/iLoong/launcher/desktop/iLoongApplication;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v1
.end method

.method private d(Ljava/lang/String;)V
    .locals 6

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/iLoong/launcher/Widget3D/g;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private e(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/iLoong/launcher/Widget3D/a;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Widget3D/c;->c(Ljava/lang/String;)Lcom/iLoong/launcher/Widget3D/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/badlogic/gdx/Gdx;Landroid/content/pm/ResolveInfo;)Lcom/iLoong/launcher/Widget3D/f;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/iLoong/launcher/Widget3D/g;->a(Landroid/content/pm/ResolveInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Widget3D/c;->e(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/iLoong/launcher/Widget3D/g;->a(Landroid/content/pm/ResolveInfo;I)Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->h:Lcom/iLoong/launcher/UI3DEngine/adapter/IRefreshRender;

    invoke-virtual {v2, v0}, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->setRefreshRender(Lcom/iLoong/launcher/UI3DEngine/adapter/IRefreshRender;)V

    new-instance v0, Lcom/iLoong/launcher/Widget3D/f;

    const-string v3, "Widget3D"

    invoke-direct {v0, v3, v2}, Lcom/iLoong/launcher/Widget3D/f;-><init>(Ljava/lang/String;Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Widget3D/f;->a(I)V

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Widget3D/f;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Widget3D/c;->a(Lcom/iLoong/launcher/Widget3D/f;)V

    :cond_1
    return-object v0
.end method

.method public a(Lcom/iLoong/launcher/a/d;)Lcom/iLoong/launcher/Widget3D/f;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    iget-object v2, p1, Lcom/iLoong/launcher/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Widget3D/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    iget-object v2, p1, Lcom/iLoong/launcher/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Widget3D/c;->c(Ljava/lang/String;)Lcom/iLoong/launcher/Widget3D/a;

    move-result-object v1

    iget-object v2, v1, Lcom/iLoong/launcher/Widget3D/a;->a:Landroid/content/pm/ResolveInfo;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/iLoong/launcher/Widget3D/g;->a(Landroid/content/pm/ResolveInfo;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p1, Lcom/iLoong/launcher/a/d;->a:I

    invoke-direct {p0, v2, v3}, Lcom/iLoong/launcher/Widget3D/g;->a(Landroid/content/pm/ResolveInfo;I)Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    move-result-object v2

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/g;->h:Lcom/iLoong/launcher/UI3DEngine/adapter/IRefreshRender;

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->setRefreshRender(Lcom/iLoong/launcher/UI3DEngine/adapter/IRefreshRender;)V

    if-eqz v2, :cond_0

    new-instance v0, Lcom/iLoong/launcher/Widget3D/f;

    const-string v3, "Widget3D"

    invoke-direct {v0, v3, v2}, Lcom/iLoong/launcher/Widget3D/f;-><init>(Ljava/lang/String;Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;)V

    iget v2, p1, Lcom/iLoong/launcher/a/d;->a:I

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Widget3D/f;->a(I)V

    iget-object v2, p1, Lcom/iLoong/launcher/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Widget3D/f;->a(Ljava/lang/String;)V

    iget v2, p1, Lcom/iLoong/launcher/a/d;->p:I

    int-to-float v2, v2

    iget v3, p1, Lcom/iLoong/launcher/a/d;->q:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/Widget3D/f;->setPosition(FF)V

    iput-object p1, v0, Lcom/iLoong/launcher/Widget3D/f;->a:Lcom/iLoong/launcher/a/d;

    :cond_0
    iget v2, p1, Lcom/iLoong/launcher/a/d;->a:I

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Widget3D/a;->a(I)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Widget3D/c;->a(Lcom/iLoong/launcher/Widget3D/f;)V

    :cond_2
    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    :goto_1
    if-nez v0, :cond_0

    const-string p2, "iLoong"

    :cond_0
    :goto_2
    return-object p2

    :cond_1
    aget-object v4, v2, v1

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/iLoong/launcher/Widget3D/b;

    invoke-direct {v0}, Lcom/iLoong/launcher/Widget3D/b;-><init>()V

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/g;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Widget3D/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/Widget3D/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/pm/ResolveInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Widget3D/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Widget3D/c;->a(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->j:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->j:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/cb;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Widget3D/g;->b(Landroid/content/pm/ResolveInfo;)Lcom/iLoong/launcher/Widget3D/f;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/Desktop3D/cb;->a(Lcom/iLoong/launcher/Widget3D/f;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/ch;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ch;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/a/f;

    iget-object v1, v1, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ch;->remove()V

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/Widget3D/f;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    invoke-virtual {p1}, Lcom/iLoong/launcher/Widget3D/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Widget3D/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    invoke-virtual {p1}, Lcom/iLoong/launcher/Widget3D/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Widget3D/c;->c(Ljava/lang/String;)Lcom/iLoong/launcher/Widget3D/a;

    move-result-object v0

    iget v1, v0, Lcom/iLoong/launcher/Widget3D/a;->c:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    invoke-virtual {v1, p1}, Lcom/iLoong/launcher/Widget3D/c;->b(Lcom/iLoong/launcher/Widget3D/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/a;->b()V

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Widget3D/c;->c(Lcom/iLoong/launcher/Widget3D/f;)V

    invoke-virtual {p1}, Lcom/iLoong/launcher/Widget3D/f;->releaseFocus()V

    invoke-virtual {p1}, Lcom/iLoong/launcher/Widget3D/f;->e()V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 11

    const/4 v8, 0x0

    const-string v0, "launcher"

    const-string v1, "processDefaultWidgetView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    move v1, v8

    :goto_0
    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/cb;->f()I

    move-result v0

    if-lt v7, v0, :cond_0

    :goto_1
    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_4

    return-void

    :cond_0
    invoke-static {v7}, Lcom/iLoong/launcher/Desktop3D/cb;->d(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "theme/widget/applist-"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/iLoong/launcher/Desktop3D/cb;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Lcom/iLoong/launcher/Desktop3D/cb;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lcom/iLoong/launcher/Desktop3D/cb;->b(I)I

    move-result v5

    invoke-static {v7}, Lcom/iLoong/launcher/Desktop3D/cb;->c(I)I

    move-result v6

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    move v9, v1

    :goto_2
    if-nez v9, :cond_3

    sget-object v10, Lcom/iLoong/launcher/Widget3D/g;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/iLoong/launcher/Widget3D/n;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/iLoong/launcher/Widget3D/n;-><init>(Lcom/iLoong/launcher/Widget3D/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v9

    :goto_3
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/o;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/o;->e()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v0, v4}, Lcom/iLoong/launcher/Desktop3D/cb;->a(Lcom/iLoong/launcher/Widget3D/o;Ljava/lang/String;)V

    move v1, v8

    goto :goto_3

    :cond_4
    new-instance v1, Lcom/iLoong/launcher/a/f;

    invoke-direct {v1}, Lcom/iLoong/launcher/a/f;-><init>()V

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/n;

    iget-object v0, v0, Lcom/iLoong/launcher/Widget3D/n;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PACKAGE_INSTALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    iget-object v2, v1, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/n;

    iget-object v4, v0, Lcom/iLoong/launcher/Widget3D/n;->a:Ljava/lang/String;

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/n;

    iget-object v0, v0, Lcom/iLoong/launcher/Widget3D/n;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/n;

    iget v0, v0, Lcom/iLoong/launcher/Widget3D/n;->e:I

    iput v0, v1, Lcom/iLoong/launcher/a/f;->w:I

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/n;

    iget v0, v0, Lcom/iLoong/launcher/Widget3D/n;->f:I

    iput v0, v1, Lcom/iLoong/launcher/a/f;->x:I

    const/4 v0, 0x6

    iput v0, v1, Lcom/iLoong/launcher/a/f;->l:I

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v2

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/n;

    iget-object v0, v0, Lcom/iLoong/launcher/Widget3D/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lcom/iLoong/launcher/Widget3D/h;

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/n;

    iget-object v4, v0, Lcom/iLoong/launcher/Widget3D/n;->c:Ljava/lang/String;

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/n;

    iget-object v0, v0, Lcom/iLoong/launcher/Widget3D/n;->c:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v0}, Lcom/iLoong/launcher/Widget3D/h;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/iLoong/launcher/Widget3D/h;->a(Lcom/iLoong/launcher/a/j;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method

.method public b(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Widget3D/c;->a(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/pm/ResolveInfo;)Lcom/iLoong/launcher/Widget3D/f;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/iLoong/launcher/Widget3D/g;->a(Lcom/badlogic/gdx/Gdx;Landroid/content/pm/ResolveInfo;)Lcom/iLoong/launcher/Widget3D/f;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/Widget3D/k;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/Widget3D/k;-><init>(Lcom/iLoong/launcher/Widget3D/g;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Widget3D/g;->a(Ljava/util/List;)V

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v3, Lcom/iLoong/launcher/Widget3D/o;

    const-string v4, "Widget3DShortcut"

    invoke-direct {v3, v4, v0}, Lcom/iLoong/launcher/Widget3D/o;-><init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Widget3D/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Widget3D/c;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "widget"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Widget3D/g;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/c;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/g;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/f;->g()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public f()V
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/g;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/f;->h()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public g()V
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/g;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/f;->f()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public h()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.iLoong.widget"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v1, Lcom/iLoong/launcher/desktop/iLoongApplication;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->g:Ljava/util/List;

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/c;->a()Lcom/iLoong/launcher/Widget3D/c;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/g;->f:Lcom/iLoong/launcher/Widget3D/c;

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/g;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Widget3D/c;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/g;->b()V

    return-void
.end method
