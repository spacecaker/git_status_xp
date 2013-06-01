.class Lcom/iLoong/launcher/desktop/y;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/iLoongLauncher;


# direct methods
.method private constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/y;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/desktop/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/desktop/y;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/desktop/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/y;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/y;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->removeDialog(I)V

    return-void
.end method


# virtual methods
.method a()Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/y;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v2, 0x7f030003

    invoke-static {v1, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/iLoong/launcher/desktop/y;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/iLoong/launcher/Widget3D/g;->c:Lcom/iLoong/launcher/a/f;

    if-eqz v3, :cond_0

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->c:Lcom/iLoong/launcher/a/f;

    iget-object v0, v0, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    :cond_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f08000d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/iLoong/launcher/desktop/t;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/desktop/t;-><init>(Lcom/iLoong/launcher/desktop/y;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/y;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v3, 0x7f0c002f

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/iLoong/launcher/desktop/r;

    invoke-direct {v3, p0}, Lcom/iLoong/launcher/desktop/r;-><init>(Lcom/iLoong/launcher/desktop/y;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/desktop/s;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/desktop/s;-><init>(Lcom/iLoong/launcher/desktop/y;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method
