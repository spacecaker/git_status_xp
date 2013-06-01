.class Lcom/iLoong/launcher/Widget3D/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Widget3D/g;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Widget3D/g;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Widget3D/k;->a:Lcom/iLoong/launcher/Widget3D/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/k;->a:Lcom/iLoong/launcher/Widget3D/g;

    invoke-static {v0}, Lcom/iLoong/launcher/Widget3D/g;->a(Lcom/iLoong/launcher/Widget3D/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    const-string v3, "preInitialize"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "preInitialize"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "preInitialize"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/iLoong/launcher/desktop/iLoongApplication;->b:Landroid/content/Context;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/k;->a:Lcom/iLoong/launcher/Widget3D/g;

    invoke-static {v3, v0}, Lcom/iLoong/launcher/Widget3D/g;->a(Lcom/iLoong/launcher/Widget3D/g;Landroid/content/pm/ResolveInfo;)Ldalvik/system/DexClassLoader;

    move-result-object v3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

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

    invoke-interface {v0, v3}, Lcom/iLoong/launcher/Widget3D/IWidget3DPlugin;->preInitialize(Lcom/iLoong/launcher/Widget3D/MainAppContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
