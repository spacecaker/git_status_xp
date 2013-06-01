.class Lcom/iLoong/launcher/Desktop3D/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/g;

.field private final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/g;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/bv;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iput-object p2, p0, Lcom/iLoong/launcher/Desktop3D/bv;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bind widgetview:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/f;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/cb;->a(Lcom/iLoong/launcher/a/f;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
