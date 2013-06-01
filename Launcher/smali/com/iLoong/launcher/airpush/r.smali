.class Lcom/iLoong/launcher/airpush/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/airpush/AirPush;

.field private final synthetic b:Lcom/iLoong/launcher/airpush/m;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/airpush/AirPush;Lcom/iLoong/launcher/airpush/m;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/r;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iput-object p2, p0, Lcom/iLoong/launcher/airpush/r;->b:Lcom/iLoong/launcher/airpush/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-string v0, "hello"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "packageid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/r;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v3, v3, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/r;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v0

    iput-boolean v1, v0, Lcom/iLoong/launcher/airpush/n;->f:Z

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/r;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/airpush/n;->b(Z)V

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/r;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/airpush/n;->c(Z)V

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/r;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/airpush/n;->d()V

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/r;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v0

    iput-boolean v4, v0, Lcom/iLoong/launcher/airpush/n;->j:Z

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/r;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/r;->b:Lcom/iLoong/launcher/airpush/m;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/airpush/AirPush;->a(Lcom/iLoong/launcher/airpush/m;)V

    move v0, v1

    :goto_0
    sget-object v2, Lcom/iLoong/launcher/airpush/AirPush;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->j:Ljava/util/Map;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/r;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->j:Ljava/util/Map;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/r;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_1
    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    return-void

    :cond_1
    iget-object v2, p0, Lcom/iLoong/launcher/airpush/r;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    sget-object v3, Lcom/iLoong/launcher/airpush/AirPush;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/iLoong/launcher/airpush/AirPush;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/airpush/k;

    iget-object v0, v0, Lcom/iLoong/launcher/airpush/k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/r;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/iLoong/launcher/airpush/AirPush;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
