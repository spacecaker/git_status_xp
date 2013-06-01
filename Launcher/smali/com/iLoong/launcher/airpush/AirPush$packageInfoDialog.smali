.class public Lcom/iLoong/launcher/airpush/AirPush$packageInfoDialog;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/airpush/AirPush;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/airpush/AirPush;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/AirPush$packageInfoDialog;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "packageKey"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "newdialog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key:"

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

    const-string v2, "com.cooee.airpush.action.launcher_dialog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "newdialog"

    const-string v2, "begin to show"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush$packageInfoDialog;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/airpush/AirPush;->a(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/m;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/AirPush$packageInfoDialog;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/airpush/AirPush;->f(Lcom/iLoong/launcher/airpush/m;)V

    :cond_0
    return-void
.end method
