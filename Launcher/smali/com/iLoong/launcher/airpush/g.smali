.class Lcom/iLoong/launcher/airpush/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/airpush/n;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/airpush/n;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/g;->a:Lcom/iLoong/launcher/airpush/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/g;->a:Lcom/iLoong/launcher/airpush/n;

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/n;->a(Lcom/iLoong/launcher/airpush/n;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/g;->a:Lcom/iLoong/launcher/airpush/n;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/n;->b:Landroid/app/Notification;

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/g;->a:Lcom/iLoong/launcher/airpush/n;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/n;->b:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method
