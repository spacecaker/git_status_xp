.class Lcom/iLoong/launcher/desktop/n;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

.field private b:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/n;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/desktop/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/desktop/n;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/desktop/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/n;->b()V

    return-void
.end method

.method static synthetic b(Lcom/iLoong/launcher/desktop/n;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/n;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/n;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/n;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->l(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Lcom/iLoong/launcher/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/n;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->C()Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/iLoong/launcher/desktop/n;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->l(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Lcom/iLoong/launcher/a/e;

    move-result-object v3

    iget-wide v3, v3, Lcom/iLoong/launcher/a/e;->k:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/e;

    invoke-static {v2, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/a/e;)V

    const-string v0, "x.z"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/n;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->l(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Lcom/iLoong/launcher/a/e;

    move-result-object v1

    iput-object v0, v1, Lcom/iLoong/launcher/a/e;->f:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/n;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/n;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->l(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Lcom/iLoong/launcher/a/e;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/content/Context;Lcom/iLoong/launcher/a/j;)V

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/n;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->d:Lcom/iLoong/launcher/d/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/n;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->d:Lcom/iLoong/launcher/d/a;

    iget-object v1, v1, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/d/b;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/n;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->n()V

    return-void
.end method

.method static synthetic c(Lcom/iLoong/launcher/desktop/n;)Lcom/iLoong/launcher/desktop/iLoongLauncher;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/n;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    return-object v0
.end method


# virtual methods
.method a()Landroid/app/Dialog;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/n;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f08001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/n;->b:Landroid/widget/EditText;

    new-array v0, v5, [Landroid/text/InputFilter;

    new-instance v2, Lcom/iLoong/launcher/desktop/bb;

    const/16 v3, 0xb

    invoke-direct {v2, p0, v3}, Lcom/iLoong/launcher/desktop/bb;-><init>(Lcom/iLoong/launcher/desktop/n;I)V

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/n;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/n;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/n;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v3, 0x7f0c0033

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/iLoong/launcher/desktop/ba;

    invoke-direct {v2, p0}, Lcom/iLoong/launcher/desktop/ba;-><init>(Lcom/iLoong/launcher/desktop/n;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/n;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v3, 0x7f0c0035

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/iLoong/launcher/desktop/bd;

    invoke-direct {v3, p0}, Lcom/iLoong/launcher/desktop/bd;-><init>(Lcom/iLoong/launcher/desktop/n;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/n;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v3, 0x7f0c0034

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/iLoong/launcher/desktop/bc;

    invoke-direct {v3, p0}, Lcom/iLoong/launcher/desktop/bc;-><init>(Lcom/iLoong/launcher/desktop/n;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/desktop/az;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/desktop/az;-><init>(Lcom/iLoong/launcher/desktop/n;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method
