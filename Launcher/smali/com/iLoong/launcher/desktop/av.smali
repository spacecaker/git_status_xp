.class Lcom/iLoong/launcher/desktop/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/as;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/as;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/av;->a:Lcom/iLoong/launcher/desktop/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->c:Lcom/iLoong/launcher/a/f;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/cb;->d()V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/av;->a:Lcom/iLoong/launcher/desktop/as;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/as;->a(Lcom/iLoong/launcher/desktop/as;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->c:Lcom/iLoong/launcher/a/f;

    iget-object v0, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->c:Lcom/iLoong/launcher/a/f;

    iget-object v0, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/iLoong/launcher/Desktop3D/cb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/iLoong/launcher/Widget3D/g;->c:Lcom/iLoong/launcher/a/f;

    iget-object v1, v1, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/iLoong/launcher/Widget3D/g;->c:Lcom/iLoong/launcher/a/f;

    iget v5, v5, Lcom/iLoong/launcher/a/f;->l:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    invoke-static {v3}, Lcom/iLoong/launcher/Desktop3D/cb;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/p;->a()Lcom/iLoong/launcher/SetupMenu/p;

    move-result-object v0

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/m;->a()Lcom/iLoong/launcher/Widget3D/m;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/iLoong/launcher/SetupMenu/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/d;)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/av;->a:Lcom/iLoong/launcher/desktop/as;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/as;->a(Lcom/iLoong/launcher/desktop/as;)V

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/iLoong/launcher/Widget3D/g;->c:Lcom/iLoong/launcher/a/f;

    iget v5, v5, Lcom/iLoong/launcher/a/f;->l:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    invoke-static {v3, v0}, Lcom/iLoong/launcher/Desktop3D/cb;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
