.class Lcom/iLoong/launcher/airpush/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/airpush/n;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/airpush/n;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/h;->a:Lcom/iLoong/launcher/airpush/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "airPush"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelNotification id :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/h;->a:Lcom/iLoong/launcher/airpush/n;

    iget v2, v2, Lcom/iLoong/launcher/airpush/n;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/iLoong/launcher/airpush/n;->a:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/h;->a:Lcom/iLoong/launcher/airpush/n;

    iget v1, v1, Lcom/iLoong/launcher/airpush/n;->h:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method
