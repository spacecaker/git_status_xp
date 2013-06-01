.class public abstract Lcom/iLoong/launcher/SetupMenu/Actions/ac;
.super Ljava/lang/Object;


# static fields
.field protected static e:Ljava/util/HashSet;


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Landroid/content/ComponentName;

.field protected d:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->e:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->a:I

    iput-object p2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->b:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->d:Landroid/os/Bundle;

    return-void
.end method

.method public static a(I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getInstance()Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getMenuItem(I)Lcom/iLoong/launcher/SetupMenu/a;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/SetupMenu/a;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->c:Landroid/content/ComponentName;

    return-void
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getInstance()Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    move-result-object v0

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->a:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getMenuItem(I)Lcom/iLoong/launcher/SetupMenu/a;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/SetupMenu/a;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public f()V
    .locals 0

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->b()V

    return-void
.end method

.method public g()V
    .locals 2

    sget-object v0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->c()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h()V
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->d:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    return-void
.end method

.method public i()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public j()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public k()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->d:Landroid/os/Bundle;

    return-object v0
.end method
