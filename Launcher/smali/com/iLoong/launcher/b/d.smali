.class Lcom/iLoong/launcher/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/iLoong/launcher/b/g;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/b/g;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/b/d;->b:Lcom/iLoong/launcher/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/iLoong/launcher/b/d;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/b/d;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
