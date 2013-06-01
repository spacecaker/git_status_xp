.class Lcom/iLoong/launcher/Widget3D/a;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/pm/ResolveInfo;

.field b:I

.field c:I

.field public d:I

.field public e:I

.field final synthetic f:Lcom/iLoong/launcher/Widget3D/c;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Widget3D/c;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/iLoong/launcher/Widget3D/a;->f:Lcom/iLoong/launcher/Widget3D/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/iLoong/launcher/Widget3D/a;->b:I

    iput v0, p0, Lcom/iLoong/launcher/Widget3D/a;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/Widget3D/a;->c:I

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/Widget3D/a;->b:I

    return v0
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/Widget3D/a;->c:I

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/a;->b:I

    if-le v0, p1, :cond_0

    iget p1, p0, Lcom/iLoong/launcher/Widget3D/a;->b:I

    :cond_0
    iput p1, p0, Lcom/iLoong/launcher/Widget3D/a;->b:I

    return-void
.end method

.method public b()V
    .locals 3

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/a;->c:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Widget3D/a;->c:I

    :goto_0
    const-string v0, "Widget3DHost"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "instanceCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/Widget3D/a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/Widget3D/a;->c:I

    goto :goto_0
.end method
