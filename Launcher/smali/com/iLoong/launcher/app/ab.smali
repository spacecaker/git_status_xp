.class Lcom/iLoong/launcher/app/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/app/am;

.field private final synthetic b:Lcom/iLoong/launcher/app/x;

.field private final synthetic c:Lcom/iLoong/launcher/a/c;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/app/am;Lcom/iLoong/launcher/app/x;Lcom/iLoong/launcher/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/app/ab;->a:Lcom/iLoong/launcher/app/am;

    iput-object p2, p0, Lcom/iLoong/launcher/app/ab;->b:Lcom/iLoong/launcher/app/x;

    iput-object p3, p0, Lcom/iLoong/launcher/app/ab;->c:Lcom/iLoong/launcher/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/app/ab;->a:Lcom/iLoong/launcher/app/am;

    iget-object v1, p0, Lcom/iLoong/launcher/app/ab;->b:Lcom/iLoong/launcher/app/x;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/app/am;->a(Lcom/iLoong/launcher/app/x;)Lcom/iLoong/launcher/app/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/app/ab;->c:Lcom/iLoong/launcher/a/c;

    invoke-interface {v0, v1}, Lcom/iLoong/launcher/app/x;->b(Lcom/iLoong/launcher/a/c;)V

    :cond_0
    return-void
.end method
