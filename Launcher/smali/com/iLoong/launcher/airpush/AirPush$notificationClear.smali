.class public Lcom/iLoong/launcher/airpush/AirPush$notificationClear;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/airpush/AirPush;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/airpush/AirPush;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/AirPush$notificationClear;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "key"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mapkey"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "receive broadcast:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.cooee.airpush.action.notification_clear"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/airpush/j;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v1

    iput-boolean v5, v1, Lcom/iLoong/launcher/airpush/n;->e:Z

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/airpush/n;->a(Z)V

    :cond_0
    return-void
.end method
