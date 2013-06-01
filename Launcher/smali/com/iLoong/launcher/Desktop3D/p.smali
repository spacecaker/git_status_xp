.class Lcom/iLoong/launcher/Desktop3D/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/g;

.field private final synthetic b:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

.field private final synthetic c:Ljava/util/HashSet;

.field private final synthetic d:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/g;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/p;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iput-object p2, p0, Lcom/iLoong/launcher/Desktop3D/p;->b:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iput-object p3, p0, Lcom/iLoong/launcher/Desktop3D/p;->c:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/iLoong/launcher/Desktop3D/p;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v3, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/p;->b:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v6

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v3

    :goto_1
    if-lt v1, v2, :cond_5

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/p;->b:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/u;

    if-nez v1, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    instance-of v2, v1, Lcom/iLoong/launcher/a/f;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/iLoong/launcher/a/f;

    iget-object v2, v1, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v7, :cond_1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/p;->c:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/a/j;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    instance-of v1, v1, Lcom/iLoong/launcher/a/h;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/p;->a:Lcom/iLoong/launcher/Desktop3D/g;

    check-cast v0, Lcom/iLoong/launcher/d/a;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/d/a;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->remove()V

    instance-of v3, v0, Lcom/iLoong/launcher/Desktop3D/bd;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/p;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v3}, Lcom/iLoong/launcher/Desktop3D/g;->f(Lcom/iLoong/launcher/Desktop3D/g;)Lcom/iLoong/launcher/Desktop3D/x;

    move-result-object v3

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bd;

    invoke-virtual {v3, v0}, Lcom/iLoong/launcher/Desktop3D/x;->b(Lcom/iLoong/launcher/Desktop3D/bd;)V

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
