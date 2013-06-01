.class Lcom/iLoong/launcher/desktop/a;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/iLoongLauncher;


# direct methods
.method private constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/a;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/desktop/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/desktop/a;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/desktop/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/a;->b()V

    return-void
.end method

.method static synthetic b(Lcom/iLoong/launcher/desktop/a;)Lcom/iLoong/launcher/desktop/iLoongLauncher;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/a;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/a;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->dismissDialog(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/a;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/4 v1, 0x3

    iput v1, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b:I

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    return-void
.end method


# virtual methods
.method a()Landroid/app/Dialog;
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/a;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/a;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/iLoong/launcher/desktop/u;

    invoke-direct {v2, p0}, Lcom/iLoong/launcher/desktop/u;-><init>(Lcom/iLoong/launcher/desktop/a;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/a;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v3, 0x7f0c0030

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/iLoong/launcher/desktop/x;

    invoke-direct {v3, p0}, Lcom/iLoong/launcher/desktop/x;-><init>(Lcom/iLoong/launcher/desktop/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/a;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v3, 0x7f0c002f

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/iLoong/launcher/desktop/w;

    invoke-direct {v3, p0}, Lcom/iLoong/launcher/desktop/w;-><init>(Lcom/iLoong/launcher/desktop/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/desktop/v;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/desktop/v;-><init>(Lcom/iLoong/launcher/desktop/a;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method
