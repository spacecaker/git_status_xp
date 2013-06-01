.class public Lcom/iLoong/launcher/Desktop3D/bo;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:Z

.field private f:I

.field private h:I

.field private i:Lcom/iLoong/launcher/UI3DEngine/d;

.field private j:Lcom/iLoong/launcher/Desktop3D/av;

.field private k:Lcom/iLoong/launcher/Desktop3D/c;

.field private l:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method private a(FF)V
    .locals 4

    const/high16 v3, 0x4080

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/av;->getHeight()F

    move-result v1

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/av;->getHeight()F

    move-result v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/c;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/av;->getWidth()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/c;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/av;->getWidth()F

    move-result v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->getHeight()F

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/c;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/av;->getHeight()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/c;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/av;->getHeight()F

    move-result v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/c;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/c;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->c()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/c;->setPosition(FF)V

    return-void
.end method

.method private c()V
    .locals 5

    const/high16 v4, 0x4040

    const/high16 v3, 0x4080

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/av;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/av;->y:F

    return-void
.end method

.method private d()Z
    .locals 5

    const/4 v0, 0x1

    const/high16 v4, 0x4000

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->height:F

    div-float/2addr v2, v4

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->r:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->height:F

    div-float/2addr v2, v4

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->r:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->width:F

    div-float/2addr v2, v4

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->q:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->width:F

    div-float/2addr v2, v4

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->q:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 5

    const/high16 v4, 0x4080

    const/high16 v3, 0x4000

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->a:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->b:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->a:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->b:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->width:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->q:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->width:F

    div-float/2addr v0, v3

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->q:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    int-to-float v0, v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->aX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->aX:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->r:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->height:F

    div-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->height:F

    div-float/2addr v0, v3

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->r:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->width:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->q:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->width:F

    div-float/2addr v0, v3

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->q:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    :cond_4
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->width:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->width:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    :cond_5
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->height:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->r:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->height:F

    div-float/2addr v0, v3

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->r:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    :cond_6
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->height:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->height:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    :cond_7
    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->c()V

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->g()V

    const-string v0, "ICONGROUP3D"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ReDrawLayout iconContain.x="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    iget v2, v2, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " iconContain.y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    iget v2, v2, Lcom/iLoong/launcher/Desktop3D/c;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private f()V
    .locals 7

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/high16 v6, 0x4080

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->a:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->a:F

    float-to-int v3, v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->width:F

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->b:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_6

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/bo;->b:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v4, v6

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v2, v1

    :cond_0
    :goto_1
    if-eqz v2, :cond_2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->b:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    int-to-float v2, v2

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->height:F

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->height:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v3, v3, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    :cond_1
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->b:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->r:I

    mul-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->b:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->b:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    :cond_2
    if-eqz v0, :cond_4

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->a:F

    float-to-int v2, v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    if-gtz v0, :cond_3

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->a:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->q:I

    mul-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_4

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->a:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->a:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    :cond_4
    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->c()V

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->g()V

    return-void

    :cond_5
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->a:F

    float-to-int v3, v3

    add-int/2addr v0, v3

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->q:I

    mul-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_7

    move v0, v1

    goto/16 :goto_0

    :cond_6
    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/bo;->b:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->getHeight()F

    move-result v4

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/bo;->r:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    invoke-virtual {v5}, Lcom/iLoong/launcher/Desktop3D/av;->getHeight()F

    move-result v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    move v2, v1

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto/16 :goto_0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/c;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/c;->a(II)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->l:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->h()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->h:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/c;->b(II)V

    return-void
.end method

.method private h()V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->getWidth()F

    move-result v4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->getHeight()F

    move-result v5

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->s:I

    int-to-float v0, v0

    sub-float v0, v5, v0

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->s:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->r:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v2, v0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->s:I

    int-to-float v0, v0

    sub-float v0, v4, v0

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->s:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->q:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-int v3, v0

    if-ne v2, v6, :cond_0

    if-lt v3, v1, :cond_0

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->h:I

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/bo;->f:I

    :goto_0
    return-void

    :cond_0
    if-ne v3, v6, :cond_1

    if-lt v2, v1, :cond_1

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->f:I

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/bo;->h:I

    goto :goto_0

    :cond_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/bo;->a(IIIFF)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->f()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->e()V

    goto :goto_0
.end method

.method protected a(IIIFF)V
    .locals 4

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int v1, v0, v0

    if-ne v1, p1, :cond_1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->h:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->f:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v1, v0, 0x1

    mul-int/2addr v1, v0

    if-lt v1, p1, :cond_3

    div-float v1, p5, p4

    add-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->f:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->h:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->h:I

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v0, 0x1

    mul-int/2addr v1, v0

    if-ge v1, p1, :cond_0

    cmpl-float v1, p5, p4

    if-ltz v1, :cond_5

    div-float v1, p5, p4

    add-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->f:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->h:I

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->h:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->f:I

    goto :goto_0

    :cond_5
    div-float v1, p4, p5

    add-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_6

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->h:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->f:I

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->h:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->f:I

    goto :goto_0
.end method

.method public b()V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->z()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->a(Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->releaseFocus()V

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->removeAllViews()V

    move v2, v1

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v5, v0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v5

    iget v6, v5, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    iget v7, v7, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    add-float/2addr v6, v7

    iput v6, v5, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v6, v5, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    iget v7, v7, Lcom/iLoong/launcher/Desktop3D/c;->y:F

    add-float/2addr v6, v7

    iput v6, v5, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v3, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/u;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v1}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->y()I

    move-result v1

    iput v1, v5, Lcom/iLoong/launcher/a/j;->n:I

    iget v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    float-to-int v1, v1

    iput v1, v5, Lcom/iLoong/launcher/a/j;->p:I

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    float-to-int v0, v0

    iput v0, v5, Lcom/iLoong/launcher/a/j;->q:I

    invoke-static {v5}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;)V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public keyDown(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->keyDown(I)Z

    move-result v0

    goto :goto_0
.end method

.method public keyUp(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->keyUp(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z
    .locals 1

    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onDoubleClick(FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTouchDown(FFI)Z
    .locals 11

    const/4 v1, 0x0

    const-wide/high16 v7, 0x3ff8

    const/high16 v10, 0x4000

    const/4 v9, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/bo;->hit(FF)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->a:F

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->b:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->e:Z

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    if-nez v0, :cond_2

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchDown(FFI)Z

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    iget-object v2, v2, Lcom/iLoong/launcher/Desktop3D/av;->name:Ljava/lang/String;

    if-ne v1, v2, :cond_3

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchDown(FFI)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    iget v1, v1, Lcom/iLoong/launcher/Desktop3D/av;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    iget v2, v2, Lcom/iLoong/launcher/Desktop3D/av;->width:F

    div-float/2addr v2, v10

    sub-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    float-to-double v1, p1

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    iget v3, v3, Lcom/iLoong/launcher/Desktop3D/av;->x:F

    float-to-double v3, v3

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    iget v5, v5, Lcom/iLoong/launcher/Desktop3D/av;->width:F

    float-to-double v5, v5

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_4

    float-to-double v1, p2

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    iget v3, v3, Lcom/iLoong/launcher/Desktop3D/av;->y:F

    float-to-double v3, v3

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    iget v5, v5, Lcom/iLoong/launcher/Desktop3D/av;->height:F

    float-to-double v5, v5

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_4

    float-to-double v1, p2

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    iget v3, v3, Lcom/iLoong/launcher/Desktop3D/av;->y:F

    float-to-double v3, v3

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    iget v5, v5, Lcom/iLoong/launcher/Desktop3D/av;->height:F

    float-to-double v5, v5

    const-wide/high16 v7, 0x3fe0

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchDown(FFI)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v2, v10

    sub-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v2, v10

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v2, v10

    sub-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v2, v10

    add-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_0

    :cond_5
    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->k:Lcom/iLoong/launcher/Desktop3D/c;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/c;->name:Ljava/lang/String;

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->m:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->o:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->p:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->n:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    :cond_6
    iput-boolean v9, p0, Lcom/iLoong/launcher/Desktop3D/bo;->e:Z

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->c:F

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->d:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->requestFocus()V

    goto/16 :goto_0
.end method

.method public onTouchUp(FFI)Z
    .locals 5

    const/4 v1, 0x0

    const/high16 v4, 0x4000

    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/bo;->hit(FF)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->a:F

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->b:F

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->e:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->releaseFocus()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->e:Z

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->name:Ljava/lang/String;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->b()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->b()V

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->name:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bo;->b()V

    goto :goto_0
.end method

.method public scroll(FFFF)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/bo;->hit(FF)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->scroll(FFFF)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->e:Z

    if-eqz v2, :cond_2

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->c:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->d:F

    sub-float/2addr v2, p2

    invoke-direct {p0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/bo;->a(FF)V

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->c:F

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->d:F

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    iget-object v2, v2, Lcom/iLoong/launcher/Desktop3D/av;->name:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/av;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/av;->a:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/av;->b:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bo;->j:Lcom/iLoong/launcher/Desktop3D/av;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bo;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bo;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/iLoong/launcher/Desktop3D/av;->scroll(FFFF)Z

    move-result v0

    goto :goto_0
.end method
