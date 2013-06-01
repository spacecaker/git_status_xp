.class public Lcom/iLoong/launcher/SetupMenu/Actions/c;
.super Lcom/iLoong/launcher/SetupMenu/Actions/ac;


# static fields
.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/SetupMenu/Actions/c;->f:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/SetupMenu/Actions/ac;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/iLoong/launcher/SetupMenu/Actions/c;

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/c;->a(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public static a()V
    .locals 4

    const/16 v3, 0x457

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/SetupMenu/Actions/c;

    const-class v2, Lcom/iLoong/launcher/SetupMenu/Actions/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/iLoong/launcher/SetupMenu/Actions/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(ILcom/iLoong/launcher/SetupMenu/Actions/ac;)V

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lcom/iLoong/launcher/SetupMenu/Actions/c;->f:Z

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 4

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getInstance()Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getSetMenuDesktop()Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->c()V

    sget-boolean v0, Lcom/iLoong/launcher/SetupMenu/Actions/c;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/SetupMenu/Actions/c;->f:Z

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getInstance()Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    move-result-object v0

    const/16 v1, 0x457

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getMenuItem(I)Lcom/iLoong/launcher/SetupMenu/a;

    move-result-object v0

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getInstance()Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getMenuDeskTop()Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    move-result-object v1

    iget v2, v0, Lcom/iLoong/launcher/SetupMenu/a;->a:I

    iget v0, v0, Lcom/iLoong/launcher/SetupMenu/a;->b:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/Actions/c;->e()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->a(IILandroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/Actions/c;->d()V

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c009f

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c009e

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c002f

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/SetupMenu/Actions/ad;

    invoke-direct {v2, p0}, Lcom/iLoong/launcher/SetupMenu/Actions/ad;-><init>(Lcom/iLoong/launcher/SetupMenu/Actions/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0030

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/SetupMenu/Actions/ae;

    invoke-direct {v2, p0}, Lcom/iLoong/launcher/SetupMenu/Actions/ae;-><init>(Lcom/iLoong/launcher/SetupMenu/Actions/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getInstance()Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    move-result-object v0

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/c;->a:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getMenuItem(I)Lcom/iLoong/launcher/SetupMenu/a;

    move-result-object v0

    sget-boolean v1, Lcom/iLoong/launcher/SetupMenu/Actions/c;->f:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/iLoong/launcher/SetupMenu/a;->e:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/iLoong/launcher/SetupMenu/a;->f:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
