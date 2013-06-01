.class Lcom/iLoong/launcher/Desktop3D/z;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/ah;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/z;->a:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v6, 0x320

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/z;->a:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Lcom/iLoong/launcher/Desktop3D/ah;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/z;->a:Lcom/iLoong/launcher/Desktop3D/ah;

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/z;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/z;->a:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-direct {v1, v2}, Lcom/iLoong/launcher/Desktop3D/z;-><init>(Lcom/iLoong/launcher/Desktop3D/ah;)V

    invoke-static {v0, v1}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Lcom/iLoong/launcher/Desktop3D/ah;Lcom/iLoong/launcher/Desktop3D/z;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/z;->a:Lcom/iLoong/launcher/Desktop3D/ah;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Lcom/iLoong/launcher/Desktop3D/ah;Ljava/util/Timer;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/z;->a:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/ah;->b(Lcom/iLoong/launcher/Desktop3D/ah;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/z;->a:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/ah;->c(Lcom/iLoong/launcher/Desktop3D/ah;)Lcom/iLoong/launcher/Desktop3D/z;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/z;->a:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/ah;->d(Lcom/iLoong/launcher/Desktop3D/ah;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/z;->a:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/ah;->e(Lcom/iLoong/launcher/Desktop3D/ah;)J

    move-result-wide v2

    add-long/2addr v2, v6

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/z;->a:Lcom/iLoong/launcher/Desktop3D/ah;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Lcom/iLoong/launcher/Desktop3D/ah;Z)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/z;->a:Lcom/iLoong/launcher/Desktop3D/ah;

    new-instance v3, Lcom/iLoong/launcher/Desktop3D/z;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/z;->a:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-direct {v3, v4}, Lcom/iLoong/launcher/Desktop3D/z;-><init>(Lcom/iLoong/launcher/Desktop3D/ah;)V

    invoke-static {v2, v3}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Lcom/iLoong/launcher/Desktop3D/ah;Lcom/iLoong/launcher/Desktop3D/z;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/z;->a:Lcom/iLoong/launcher/Desktop3D/ah;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    invoke-static {v2, v3}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Lcom/iLoong/launcher/Desktop3D/ah;Ljava/util/Timer;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/z;->a:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/ah;->b(Lcom/iLoong/launcher/Desktop3D/ah;)Ljava/util/Timer;

    move-result-object v2

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/z;->a:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-static {v3}, Lcom/iLoong/launcher/Desktop3D/ah;->c(Lcom/iLoong/launcher/Desktop3D/ah;)Lcom/iLoong/launcher/Desktop3D/z;

    move-result-object v3

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/z;->a:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-static {v4}, Lcom/iLoong/launcher/Desktop3D/ah;->e(Lcom/iLoong/launcher/Desktop3D/ah;)J

    move-result-wide v4

    add-long/2addr v4, v6

    sub-long v0, v4, v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/z;->a:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/ah;->f(Lcom/iLoong/launcher/Desktop3D/ah;)Lcom/iLoong/launcher/Desktop3D/v;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/v;->a(Z)V

    goto :goto_0
.end method
