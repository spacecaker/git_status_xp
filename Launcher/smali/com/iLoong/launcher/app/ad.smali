.class Lcom/iLoong/launcher/app/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/app/am;

.field private final synthetic b:J

.field private final synthetic c:Lcom/iLoong/launcher/app/x;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/app/am;JLcom/iLoong/launcher/app/x;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/app/ad;->a:Lcom/iLoong/launcher/app/am;

    iput-wide p2, p0, Lcom/iLoong/launcher/app/ad;->b:J

    iput-object p4, p0, Lcom/iLoong/launcher/app/ad;->c:Lcom/iLoong/launcher/app/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/app/ad;)Lcom/iLoong/launcher/app/am;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/app/ad;->a:Lcom/iLoong/launcher/app/am;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bound workspace in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iLoong/launcher/app/ad;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/app/ad;->a:Lcom/iLoong/launcher/app/am;

    invoke-static {v0}, Lcom/iLoong/launcher/app/am;->a(Lcom/iLoong/launcher/app/am;)Lcom/iLoong/launcher/app/LauncherModel;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/app/aj;

    iget-object v2, p0, Lcom/iLoong/launcher/app/ad;->c:Lcom/iLoong/launcher/app/x;

    invoke-direct {v1, p0, v2}, Lcom/iLoong/launcher/app/aj;-><init>(Lcom/iLoong/launcher/app/ad;Lcom/iLoong/launcher/app/x;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method
