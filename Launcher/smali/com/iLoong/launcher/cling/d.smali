.class Lcom/iLoong/launcher/cling/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/cling/i;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/cling/i;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/cling/d;->a:Lcom/iLoong/launcher/cling/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/cling/d;->a:Lcom/iLoong/launcher/cling/i;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/cling/i;->a(Lcom/iLoong/launcher/cling/i;FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/d;->a:Lcom/iLoong/launcher/cling/i;

    iget-object v0, v0, Lcom/iLoong/launcher/cling/i;->l:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/d;->a:Lcom/iLoong/launcher/cling/i;

    invoke-static {v1}, Lcom/iLoong/launcher/cling/i;->a(Lcom/iLoong/launcher/cling/i;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
