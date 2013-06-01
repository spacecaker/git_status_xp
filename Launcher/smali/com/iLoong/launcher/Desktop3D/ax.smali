.class Lcom/iLoong/launcher/Desktop3D/ax;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/aw;

.field private b:Ljava/util/ArrayList;

.field private c:F

.field private d:F

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/Desktop3D/aw;IFFII)V
    .locals 1

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/ax;->a:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ax;->b:Ljava/util/ArrayList;

    iput p3, p0, Lcom/iLoong/launcher/Desktop3D/ax;->c:F

    iput p4, p0, Lcom/iLoong/launcher/Desktop3D/ax;->d:F

    iput p5, p0, Lcom/iLoong/launcher/Desktop3D/ax;->e:I

    iput p6, p0, Lcom/iLoong/launcher/Desktop3D/ax;->f:I

    return-void
.end method

.method private b()Lcom/iLoong/launcher/Desktop3D/c;
    .locals 6

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/c;

    const-string v1, "allapplist"

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ax;->c:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ax;->d:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ax;->e:I

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ax;->f:I

    invoke-direct/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/c;-><init>(Ljava/lang/String;FFII)V

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->H:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->I:I

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->L:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->M:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/Desktop3D/c;->a(IIII)V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/aw;->O()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->J:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->K:I

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->L:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->M:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/Desktop3D/c;->a(IIII)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/iLoong/launcher/Desktop3D/c;
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ax;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/ax;->b()Lcom/iLoong/launcher/Desktop3D/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ax;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ax;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/c;

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/Desktop3D/c;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ax;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/iLoong/launcher/Desktop3D/c;->removeAllViews()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ax;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
