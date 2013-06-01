.class public Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent$MissedCallIntentReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent$MissedCallIntentReceiver;->a:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    const-string v1, "missecall"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->c:I

    return-void
.end method
