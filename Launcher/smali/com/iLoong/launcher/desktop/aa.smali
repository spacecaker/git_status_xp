.class Lcom/iLoong/launcher/desktop/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/ae;

.field private final synthetic b:Lcom/iLoong/launcher/Workspace/c;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/ae;Lcom/iLoong/launcher/Workspace/c;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/aa;->a:Lcom/iLoong/launcher/desktop/ae;

    iput-object p2, p0, Lcom/iLoong/launcher/desktop/aa;->b:Lcom/iLoong/launcher/Workspace/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/aa;->b:Lcom/iLoong/launcher/Workspace/c;

    invoke-virtual {v0, p2}, Lcom/iLoong/launcher/Workspace/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Workspace/a;

    iget-boolean v1, v0, Lcom/iLoong/launcher/Workspace/a;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/aa;->a:Lcom/iLoong/launcher/desktop/ae;

    invoke-static {v1}, Lcom/iLoong/launcher/desktop/ae;->b(Lcom/iLoong/launcher/desktop/ae;)Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    iget-object v0, v0, Lcom/iLoong/launcher/Workspace/a;->a:Landroid/content/pm/ResolveInfo;

    invoke-static {v1, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;Landroid/content/pm/ResolveInfo;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/iLoong/launcher/a/f;

    invoke-direct {v1}, Lcom/iLoong/launcher/a/f;-><init>()V

    iget-object v2, v0, Lcom/iLoong/launcher/Workspace/a;->b:Ljava/lang/CharSequence;

    iput-object v2, v1, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    const/4 v2, 0x6

    iput v2, v1, Lcom/iLoong/launcher/a/f;->l:I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PACKAGE_INSTALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    iget-object v2, v1, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/iLoong/launcher/Workspace/a;->f:Ljava/lang/String;

    iget-object v0, v0, Lcom/iLoong/launcher/Workspace/a;->f:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/iLoong/launcher/Widget3D/m;->a(Lcom/iLoong/launcher/a/f;Z)Z

    goto :goto_0
.end method
