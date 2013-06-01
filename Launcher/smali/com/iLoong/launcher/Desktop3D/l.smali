.class Lcom/iLoong/launcher/Desktop3D/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/g;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/g;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/l;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/l;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/g;->i(Lcom/iLoong/launcher/Desktop3D/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/l;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->m()V

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/l;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->h()Z

    sget-boolean v0, Lcom/iLoong/launcher/app/LauncherModel;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/app/LauncherModel;->h:Z

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/g;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :try_start_2
    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/l;->a:Lcom/iLoong/launcher/Desktop3D/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/Desktop3D/g;Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/l;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->e()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/l;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->m()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
