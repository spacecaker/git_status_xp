.class Lcom/iLoong/launcher/desktop/at;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/iLoongLauncher;


# direct methods
.method private constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/at;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/desktop/at;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/desktop/at;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/desktop/at;)V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/at;->b()V

    return-void
.end method

.method static synthetic b(Lcom/iLoong/launcher/desktop/at;)Lcom/iLoong/launcher/desktop/iLoongLauncher;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/at;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/at;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c(Lcom/iLoong/launcher/desktop/iLoongLauncher;Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/at;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->dismissDialog(I)V

    return-void
.end method


# virtual methods
.method a()Landroid/app/Dialog;
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/at;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f08000d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0c0061

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/at;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/iLoong/launcher/desktop/ah;

    invoke-direct {v2, p0}, Lcom/iLoong/launcher/desktop/ah;-><init>(Lcom/iLoong/launcher/desktop/at;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/at;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v3, 0x7f0c0030

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/iLoong/launcher/desktop/ai;

    invoke-direct {v3, p0}, Lcom/iLoong/launcher/desktop/ai;-><init>(Lcom/iLoong/launcher/desktop/at;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/at;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v3, 0x7f0c002f

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/iLoong/launcher/desktop/af;

    invoke-direct {v3, p0}, Lcom/iLoong/launcher/desktop/af;-><init>(Lcom/iLoong/launcher/desktop/at;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/desktop/ag;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/desktop/ag;-><init>(Lcom/iLoong/launcher/desktop/at;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method
