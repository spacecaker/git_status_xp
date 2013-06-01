.class Lcom/iLoong/launcher/Desktop3D/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/g;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/g;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/n;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/n;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/g;->c(Lcom/iLoong/launcher/Desktop3D/g;)Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    const-class v2, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction$ResestActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/n;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/g;->c(Lcom/iLoong/launcher/Desktop3D/g;)Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
