.class Lcom/iLoong/launcher/desktop/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/n;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/n;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/az;->a:Lcom/iLoong/launcher/desktop/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/az;->a:Lcom/iLoong/launcher/desktop/n;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/n;->c(Lcom/iLoong/launcher/desktop/n;)Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/az;->a:Lcom/iLoong/launcher/desktop/n;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/n;->b(Lcom/iLoong/launcher/desktop/n;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/az;->a:Lcom/iLoong/launcher/desktop/n;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/n;->c(Lcom/iLoong/launcher/desktop/n;)Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/az;->a:Lcom/iLoong/launcher/desktop/n;

    invoke-static {v1}, Lcom/iLoong/launcher/desktop/n;->b(Lcom/iLoong/launcher/desktop/n;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
