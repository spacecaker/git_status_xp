.class Lcom/iLoong/launcher/app/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/app/am;

.field private final synthetic b:Lcom/iLoong/launcher/app/x;

.field private final synthetic c:Z

.field private final synthetic d:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;ZLjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/app/ah;->a:Lcom/iLoong/launcher/app/am;

    iput-object p2, p0, Lcom/iLoong/launcher/app/ah;->b:Lcom/iLoong/launcher/app/x;

    iput-boolean p3, p0, Lcom/iLoong/launcher/app/ah;->c:Z

    iput-object p4, p0, Lcom/iLoong/launcher/app/ah;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iLoong/launcher/app/ah;->b:Lcom/iLoong/launcher/app/x;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/iLoong/launcher/app/ah;->c:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iLoong/launcher/app/ah;->b:Lcom/iLoong/launcher/app/x;

    iget-object v3, p0, Lcom/iLoong/launcher/app/ah;->d:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/iLoong/launcher/app/x;->d(Ljava/util/ArrayList;)V

    :goto_0
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bound "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/iLoong/launcher/app/ah;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apps in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/iLoong/launcher/app/ah;->b:Lcom/iLoong/launcher/app/x;

    iget-object v3, p0, Lcom/iLoong/launcher/app/ah;->d:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/iLoong/launcher/app/x;->b(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    const-string v0, "Launcher.Model"

    const-string v1, "not binding apps: no Launcher activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
