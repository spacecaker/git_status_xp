.class Lcom/iLoong/launcher/airpush/o;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/airpush/AirPush;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/airpush/AirPush;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/o;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/o;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/AirPush;->b(Lcom/iLoong/launcher/airpush/AirPush;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/o;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/AirPush;->b(Lcom/iLoong/launcher/airpush/AirPush;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/airpush/m;

    iget-object v3, v0, Lcom/iLoong/launcher/airpush/m;->i:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/o;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-virtual {v3, v0}, Lcom/iLoong/launcher/airpush/AirPush;->e(Lcom/iLoong/launcher/airpush/m;)V

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/o;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/AirPush;->b(Lcom/iLoong/launcher/airpush/AirPush;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
