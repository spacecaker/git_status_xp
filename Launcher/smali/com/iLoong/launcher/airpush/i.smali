.class Lcom/iLoong/launcher/airpush/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/airpush/n;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/airpush/n;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/n;->b(Lcom/iLoong/launcher/airpush/n;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "airpushKey"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    invoke-static {v3}, Lcom/iLoong/launcher/airpush/n;->b(Lcom/iLoong/launcher/airpush/n;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x800

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/airpush/n;->a(Lcom/iLoong/launcher/airpush/n;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/n;->b:Landroid/app/Notification;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-static {}, Lcom/iLoong/launcher/airpush/n;->e()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Lcom/iLoong/launcher/airpush/n;->b(I)V

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    invoke-static {v3}, Lcom/iLoong/launcher/airpush/n;->c(Lcom/iLoong/launcher/airpush/n;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/n;->b:Landroid/app/Notification;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/n;->d(Lcom/iLoong/launcher/airpush/n;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    invoke-static {v3}, Lcom/iLoong/launcher/airpush/n;->e(Lcom/iLoong/launcher/airpush/n;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    invoke-static {v4}, Lcom/iLoong/launcher/airpush/n;->f(Lcom/iLoong/launcher/airpush/n;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    iget-boolean v0, v0, Lcom/iLoong/launcher/airpush/n;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030002

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/n;->d:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/n;->d:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/n;->d:Landroid/widget/RemoteViews;

    const v1, 0x7f08000c

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    iget v3, v3, Lcom/iLoong/launcher/airpush/n;->c:I

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/n;->d:Landroid/widget/RemoteViews;

    const v1, 0x7f08000a

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    invoke-static {v2}, Lcom/iLoong/launcher/airpush/n;->d(Lcom/iLoong/launcher/airpush/n;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/n;->d:Landroid/widget/RemoteViews;

    const v1, 0x7f08000b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e0b\u8f7d\u8fdb\u5ea6\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    iget v3, v3, Lcom/iLoong/launcher/airpush/n;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/n;->b:Landroid/app/Notification;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    iget-object v1, v1, Lcom/iLoong/launcher/airpush/n;->d:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/airpush/n;->a:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    iget v1, v1, Lcom/iLoong/launcher/airpush/n;->h:I

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/i;->a:Lcom/iLoong/launcher/airpush/n;

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/n;->b:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
