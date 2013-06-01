.class Lcom/iLoong/launcher/desktop/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/iLoongLauncher;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/e;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/e;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Desktop3D/g;->e:Z

    if-eqz v0, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/e;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->m(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/e;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Lcom/iLoong/launcher/app/LauncherModel;

    move-result-object v0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->B()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
