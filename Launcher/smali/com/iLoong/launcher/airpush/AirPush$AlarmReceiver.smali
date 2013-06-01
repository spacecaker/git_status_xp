.class public Lcom/iLoong/launcher/airpush/AirPush$AlarmReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/airpush/AirPush;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/airpush/AirPush;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/AirPush$AlarmReceiver;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirPush"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "alarm receive:action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.cooee.airpush.action.check_server_config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mapkey"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "runnng:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/AirPush$AlarmReceiver;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/AirPush;->c(Lcom/iLoong/launcher/airpush/AirPush;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush$AlarmReceiver;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/AirPush;->c(Lcom/iLoong/launcher/airpush/AirPush;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/AirPush$AlarmReceiver;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-virtual {v0}, Lcom/iLoong/launcher/airpush/AirPush;->c()V

    :cond_0
    return-void
.end method
