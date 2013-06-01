.class Lcom/iLoong/launcher/desktop/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/at;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/at;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/ag;->a:Lcom/iLoong/launcher/desktop/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ag;->a:Lcom/iLoong/launcher/desktop/at;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/at;->b(Lcom/iLoong/launcher/desktop/at;)Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ag;->a:Lcom/iLoong/launcher/desktop/at;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/at;->b(Lcom/iLoong/launcher/desktop/at;)Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c(Lcom/iLoong/launcher/desktop/iLoongLauncher;Z)V

    return-void
.end method
