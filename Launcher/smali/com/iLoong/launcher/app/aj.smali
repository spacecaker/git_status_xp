.class Lcom/iLoong/launcher/app/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/app/ad;

.field private final synthetic b:Lcom/iLoong/launcher/app/x;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/app/ad;Lcom/iLoong/launcher/app/x;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/app/aj;->a:Lcom/iLoong/launcher/app/ad;

    iput-object p2, p0, Lcom/iLoong/launcher/app/aj;->b:Lcom/iLoong/launcher/app/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/app/aj;->a:Lcom/iLoong/launcher/app/ad;

    invoke-static {v0}, Lcom/iLoong/launcher/app/ad;->a(Lcom/iLoong/launcher/app/ad;)Lcom/iLoong/launcher/app/am;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/app/aj;->b:Lcom/iLoong/launcher/app/x;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/app/am;->a(Lcom/iLoong/launcher/app/x;)Lcom/iLoong/launcher/app/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/iLoong/launcher/app/x;->s()V

    :cond_0
    return-void
.end method
