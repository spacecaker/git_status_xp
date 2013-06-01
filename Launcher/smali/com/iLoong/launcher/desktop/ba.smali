.class Lcom/iLoong/launcher/desktop/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/n;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/n;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/ba;->a:Lcom/iLoong/launcher/desktop/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ba;->a:Lcom/iLoong/launcher/desktop/n;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/n;->c(Lcom/iLoong/launcher/desktop/n;)Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->n()V

    return-void
.end method
