.class public Lcom/iLoong/launcher/Desktop3D/az;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# instance fields
.field a:F

.field b:F

.field c:Z

.field private d:F

.field private e:F

.field private f:F

.field private h:F

.field private i:Lcom/iLoong/launcher/UI3DEngine/d;

.field private j:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/az;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->a:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->b:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->c:Z

    return-void
.end method

.method private a(FF)V
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->d:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->e:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->e:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->e:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/az;->e:F

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->d:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/az;->d:F

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->d:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/az;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/az;->j:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/az;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/az;->j:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->d:F

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->e:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/az;->getHeight()F

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/az;->j:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/az;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/az;->j:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->e:F

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->e:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/az;->j:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->h:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->d:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/az;->j:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->f:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/az;->f:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/az;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v2}, Lcom/iLoong/launcher/UI3DEngine/d;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/az;->h:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/az;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v3}, Lcom/iLoong/launcher/UI3DEngine/d;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->j:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/az;->d:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/az;->e:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->z()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->j:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/az;->releaseFocus()V

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->j:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeAllViews()V

    move v2, v1

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/az;->j:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v5, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v5

    iget v6, v5, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/az;->j:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget v7, v7, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    add-float/2addr v6, v7

    iput v6, v5, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v6, v5, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/az;->j:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget v7, v7, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

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

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/az;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

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

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/az;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->keyUp(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleClick(FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLongClick(FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTouchDown(FFI)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/az;->hit(FF)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-ne p3, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/az;->c:Z

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/az;->d:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/az;->f:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/az;->e:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/az;->h:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/az;->a:F

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/az;->b:F

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/az;->c:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/az;->requestFocus()V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/az;->name:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/az;->a()V

    goto :goto_0
.end method

.method public onTouchDragged(FFI)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTouchUp(FFI)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/az;->hit(FF)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-ne p3, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/az;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->name:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/az;->a()V

    :cond_2
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->c:Z

    goto :goto_0
.end method

.method public scroll(FFFF)Z
    .locals 2

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/az;->a:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/az;->b:F

    sub-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/az;->a(FF)V

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/az;->a:F

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/az;->b:F

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
