.class Lcom/iLoong/launcher/airpush/u;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/airpush/AirPush;

.field private final synthetic b:Lcom/iLoong/launcher/airpush/m;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/airpush/AirPush;Lcom/iLoong/launcher/airpush/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/u;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iput-object p2, p0, Lcom/iLoong/launcher/airpush/u;->b:Lcom/iLoong/launcher/airpush/m;

    iput-object p3, p0, Lcom/iLoong/launcher/airpush/u;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/u;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/m;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/u;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v1, v1, Lcom/iLoong/launcher/airpush/m;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "download"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "from url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/u;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/m;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/u;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/m;->s:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/iLoong/launcher/airpush/u;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/u;->b:Lcom/iLoong/launcher/airpush/m;

    invoke-static {v1, v2, v0}, Lcom/iLoong/launcher/airpush/AirPush;->a(Lcom/iLoong/launcher/airpush/AirPush;Lcom/iLoong/launcher/airpush/m;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "download"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "from parse:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/u;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/u;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v1}, Lcom/iLoong/launcher/airpush/AirPush;->k(Lcom/iLoong/launcher/airpush/AirPush;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/u;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
