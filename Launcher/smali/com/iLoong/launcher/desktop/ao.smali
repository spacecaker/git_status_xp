.class Lcom/iLoong/launcher/desktop/ao;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/iLoongLauncher;


# direct methods
.method private constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/ao;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/desktop/ao;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/desktop/ao;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/desktop/ao;)V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/ao;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ao;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->dismissDialog(I)V

    return-void
.end method


# virtual methods
.method a()Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ao;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v1, 0x7f030013

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/ao;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const-string v2, "\u684c\u9762\u7a0b\u5e8f\u5df2\u88ab\u7834\u574f!!!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/iLoong/launcher/desktop/aj;

    invoke-direct {v2, p0}, Lcom/iLoong/launcher/desktop/aj;-><init>(Lcom/iLoong/launcher/desktop/ao;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/ao;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v3, 0x7f0c002f

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/iLoong/launcher/desktop/al;

    invoke-direct {v3, p0}, Lcom/iLoong/launcher/desktop/al;-><init>(Lcom/iLoong/launcher/desktop/ao;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/desktop/ak;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/desktop/ak;-><init>(Lcom/iLoong/launcher/desktop/ao;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method
