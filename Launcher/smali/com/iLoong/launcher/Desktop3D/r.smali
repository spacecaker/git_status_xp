.class Lcom/iLoong/launcher/Desktop3D/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/g;

.field private final synthetic b:Lcom/iLoong/launcher/a/d;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/g;Lcom/iLoong/launcher/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/r;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iput-object p2, p0, Lcom/iLoong/launcher/Desktop3D/r;->b:Lcom/iLoong/launcher/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/r;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/g;->g(Lcom/iLoong/launcher/Desktop3D/g;)Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/r;->b:Lcom/iLoong/launcher/a/d;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Widget3D/g;->a(Lcom/iLoong/launcher/a/d;)Lcom/iLoong/launcher/Widget3D/f;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/r;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/Desktop3D/g;)Lcom/iLoong/launcher/Desktop3D/bq;

    move-result-object v0

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/r;->b:Lcom/iLoong/launcher/a/d;

    iget v2, v2, Lcom/iLoong/launcher/a/d;->n:I

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/r;->b:Lcom/iLoong/launcher/a/d;

    iget v3, v3, Lcom/iLoong/launcher/a/d;->p:I

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/r;->b:Lcom/iLoong/launcher/a/d;

    iget v4, v4, Lcom/iLoong/launcher/a/d;->q:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;IIIZ)Z

    :cond_0
    return-void
.end method
