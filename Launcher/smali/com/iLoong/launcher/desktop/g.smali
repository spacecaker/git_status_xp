.class Lcom/iLoong/launcher/desktop/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

.field private final synthetic b:Lcom/iLoong/launcher/d/a;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/g;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iput-object p2, p0, Lcom/iLoong/launcher/desktop/g;->b:Lcom/iLoong/launcher/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/g;->b:Lcom/iLoong/launcher/d/a;

    iget-object v0, v0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    iget-boolean v0, v0, Lcom/iLoong/launcher/d/b;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/g;->b:Lcom/iLoong/launcher/d/a;

    iget-object v0, v0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/b;->g()V

    :cond_0
    return-void
.end method
