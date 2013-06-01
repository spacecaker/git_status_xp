.class Lcom/iLoong/launcher/desktop/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/a;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/v;->a:Lcom/iLoong/launcher/desktop/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/v;->a:Lcom/iLoong/launcher/desktop/a;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/a;->b(Lcom/iLoong/launcher/desktop/a;)Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;Z)V

    return-void
.end method
