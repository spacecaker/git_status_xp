.class Lcom/iLoong/launcher/Desktop3D/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/g;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/g;ZLjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/q;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iput-boolean p2, p0, Lcom/iLoong/launcher/Desktop3D/q;->b:Z

    iput-object p3, p0, Lcom/iLoong/launcher/Desktop3D/q;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/q;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/q;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/g;->h(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/q;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/g;->j(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/q;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/g;->f(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/q;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/q;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/g;->g()Lcom/iLoong/launcher/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/d/a;Ljava/util/ArrayList;)V

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/g;->v()Lcom/iLoong/launcher/Desktop3D/br;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/q;->c:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/q;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/br;->a(Ljava/util/ArrayList;Z)V

    const-string v0, "bind"

    const-string v1, "bindAppsRemoved done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
