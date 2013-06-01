.class Lcom/iLoong/launcher/desktop/be;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/iLoongLauncher;


# direct methods
.method private constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/be;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/desktop/be;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/desktop/be;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/be;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->dismissDialog(I)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/desktop/be;)V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/be;->a()V

    return-void
.end method

.method static synthetic b(Lcom/iLoong/launcher/desktop/be;)Lcom/iLoong/launcher/desktop/iLoongLauncher;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/be;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    return-object v0
.end method


# virtual methods
.method a(I)Landroid/app/Dialog;
    .locals 5

    const v4, 0x7f080025

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/be;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v1, 0x7f030017

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/cb;->e()Lcom/iLoong/launcher/Desktop3D/cb;

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->D:Z

    if-nez v2, :cond_0

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/iLoong/launcher/desktop/be;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/iLoong/launcher/desktop/be;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v4, 0x7f0c006b

    invoke-virtual {v3, v4}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/iLoong/launcher/desktop/ar;

    invoke-direct {v3, p0}, Lcom/iLoong/launcher/desktop/ar;-><init>(Lcom/iLoong/launcher/desktop/be;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/iLoong/launcher/desktop/be;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v4, 0x7f0c0030

    invoke-virtual {v3, v4}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/iLoong/launcher/desktop/aq;

    invoke-direct {v4, p0}, Lcom/iLoong/launcher/desktop/aq;-><init>(Lcom/iLoong/launcher/desktop/be;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/iLoong/launcher/desktop/be;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v4, 0x7f0c002f

    invoke-virtual {v3, v4}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/iLoong/launcher/desktop/ap;

    invoke-direct {v4, p0, v1}, Lcom/iLoong/launcher/desktop/ap;-><init>(Lcom/iLoong/launcher/desktop/be;Landroid/widget/RadioGroup;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_0
    const v2, 0x7f080027

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_1
    const v2, 0x7f080026

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_2
    const v2, 0x7f080028

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
