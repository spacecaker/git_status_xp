.class Lcom/iLoong/launcher/desktop/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

.field private b:Lcom/iLoong/launcher/Workspace/e;


# direct methods
.method private constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/desktop/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/desktop/ae;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/desktop/ae;)V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/ae;->c()V

    return-void
.end method

.method static synthetic b(Lcom/iLoong/launcher/desktop/ae;)Lcom/iLoong/launcher/desktop/iLoongLauncher;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    return-object v0
.end method

.method private c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method a()Landroid/app/Dialog;
    .locals 3

    new-instance v0, Lcom/iLoong/launcher/Workspace/e;

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Workspace/e;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->b:Lcom/iLoong/launcher/Workspace/e;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v2, 0x7f0c00af

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/ae;->b:Lcom/iLoong/launcher/Workspace/e;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method

.method b()Landroid/app/Dialog;
    .locals 4

    const-string v0, "launcher"

    const-string v1, "create pick 3dWidget"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iLoong/launcher/Workspace/c;

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Workspace/c;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/Workspace/c;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    const v0, 0x7f0c006d

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v2, 0x7f03001d

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f08002f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0c006c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v2, 0x7f0c002f

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/iLoong/launcher/desktop/ab;

    invoke-direct {v2, p0}, Lcom/iLoong/launcher/desktop/ab;-><init>(Lcom/iLoong/launcher/desktop/ae;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const v3, 0x7f0c001e

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/iLoong/launcher/desktop/aa;

    invoke-direct {v2, p0, v0}, Lcom/iLoong/launcher/desktop/aa;-><init>(Lcom/iLoong/launcher/desktop/ae;Lcom/iLoong/launcher/Workspace/c;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;Z)V

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/ae;->c()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/ae;->c()V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->b:Lcom/iLoong/launcher/Workspace/e;

    invoke-virtual {v0, p2}, Lcom/iLoong/launcher/Workspace/e;->a(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->showDialog(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v1, Lcom/iLoong/launcher/desktop/ad;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/desktop/ad;-><init>(Lcom/iLoong/launcher/desktop/ae;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->k()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v1, Lcom/iLoong/launcher/desktop/ac;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/desktop/ac;-><init>(Lcom/iLoong/launcher/desktop/ae;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/4 v1, 0x7

    const v2, 0x7f0c004c

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;II)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->l()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->dismissDialog(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b(Lcom/iLoong/launcher/desktop/iLoongLauncher;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b(Lcom/iLoong/launcher/desktop/iLoongLauncher;Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ae;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;Z)V

    return-void
.end method
