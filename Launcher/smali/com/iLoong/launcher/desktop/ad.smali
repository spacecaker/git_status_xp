.class Lcom/iLoong/launcher/desktop/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/ae;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/ad;->a:Lcom/iLoong/launcher/desktop/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ad;->a:Lcom/iLoong/launcher/desktop/ae;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/ae;->b(Lcom/iLoong/launcher/desktop/ae;)Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->j(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    return-void
.end method
