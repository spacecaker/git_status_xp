.class Lcom/iLoong/launcher/SetupMenu/Actions/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/SetupMenu/Actions/c;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/SetupMenu/Actions/c;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/ad;->a:Lcom/iLoong/launcher/SetupMenu/Actions/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/16 v4, 0x457

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/c;->a(Z)V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getInstance()Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getMenuItem(I)Lcom/iLoong/launcher/SetupMenu/a;

    move-result-object v0

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getInstance()Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getMenuDeskTop()Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    move-result-object v1

    iget v2, v0, Lcom/iLoong/launcher/SetupMenu/a;->a:I

    iget v0, v0, Lcom/iLoong/launcher/SetupMenu/a;->b:I

    iget-object v3, p0, Lcom/iLoong/launcher/SetupMenu/Actions/ad;->a:Lcom/iLoong/launcher/SetupMenu/Actions/c;

    invoke-virtual {v3}, Lcom/iLoong/launcher/SetupMenu/Actions/c;->e()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->a(IILandroid/graphics/Bitmap;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->b(I)V

    return-void
.end method
