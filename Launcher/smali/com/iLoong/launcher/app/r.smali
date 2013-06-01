.class Lcom/iLoong/launcher/app/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/app/am;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/app/am;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/app/r;->a:Lcom/iLoong/launcher/app/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/iLoong/launcher/app/r;->a:Lcom/iLoong/launcher/app/am;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/app/r;->a:Lcom/iLoong/launcher/app/am;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/iLoong/launcher/app/am;->a(Lcom/iLoong/launcher/app/am;Z)V

    const-string v0, "Launcher.Model"

    const-string v2, "done with previous binding step"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/app/r;->a:Lcom/iLoong/launcher/app/am;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
