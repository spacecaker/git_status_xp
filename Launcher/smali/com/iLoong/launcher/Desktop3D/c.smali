.class public Lcom/iLoong/launcher/Desktop3D/c;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# instance fields
.field a:Laurelienribon/tweenengine/Timeline;

.field b:Laurelienribon/tweenengine/Tween;

.field public c:Z

.field private d:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field private e:I

.field private f:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:F

.field private t:Z

.field private u:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FFII)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v1, 0x4000

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/c;->r:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->s:F

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/c;->t:Z

    iput-object v4, p0, Lcom/iLoong/launcher/Desktop3D/c;->a:Laurelienribon/tweenengine/Timeline;

    iput-object v4, p0, Lcom/iLoong/launcher/Desktop3D/c;->b:Laurelienribon/tweenengine/Tween;

    const/high16 v0, 0x40c0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->u:F

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->c:Z

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/c;->width:F

    iput p3, p0, Lcom/iLoong/launcher/Desktop3D/c;->height:F

    div-float v0, p2, v1

    div-float v1, p3, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->setOrigin(FF)V

    iput p4, p0, Lcom/iLoong/launcher/Desktop3D/c;->h:I

    iput p5, p0, Lcom/iLoong/launcher/Desktop3D/c;->i:I

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->n:I

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->o:I

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->p:I

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->q:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->width:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->n:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->o:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->l:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->height:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->p:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->q:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->m:I

    return-void
.end method

.method private b(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->h:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->i:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->width:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->n:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->o:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->l:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->height:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->p:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->q:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->m:I

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->j:I

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->k:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->h:I

    if-le v1, v5, :cond_2

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->l:I

    int-to-float v1, v1

    iget v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->h:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->j:I

    :cond_2
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->m:I

    int-to-float v1, v1

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sub-float v0, v1, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->k:I

    :cond_3
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->r:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/c;->a()V

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->a:Laurelienribon/tweenengine/Timeline;

    :cond_4
    :goto_1
    if-lt p1, v1, :cond_5

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->a:Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eq v0, v2, :cond_6

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/Desktop3D/c;->c(I)V

    iget-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->r:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->a:Laurelienribon/tweenengine/Timeline;

    const/high16 v3, 0x3f00

    invoke-static {v0, v5, v3}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/c;->e:I

    int-to-float v3, v3

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/c;->f:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    invoke-virtual {v0, v3}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    int-to-float v3, p1

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/c;->s:F

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v2, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/c;->f:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    goto :goto_2
.end method

.method private c(I)V
    .locals 4

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->h:I

    rem-int v0, p1, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->l:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->j:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->e:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->height:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->p:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->m:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->h:I

    div-int v1, p1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->m:I

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/c;->k:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->k:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->i:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->f:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->children:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 3

    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startMove  = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->u:F

    neg-int v1, p1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/c;->setUser(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->c:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->c:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/c;->setUser(F)V

    goto :goto_0
.end method

.method private d(II)V
    .locals 5

    const/high16 v4, 0x4000

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    int-to-float v1, p1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    int-to-float v2, p2

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v3, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->a:Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->a:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->a:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->free()V

    iput-object v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->a:Laurelienribon/tweenengine/Timeline;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->b:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->b:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->stopTween()V

    :cond_1
    iput-object v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->b:Laurelienribon/tweenengine/Tween;

    :cond_2
    return-void
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/c;->s:F

    return-void
.end method

.method public a(II)V
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->width:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p2

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->height:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->width:F

    int-to-float v0, p2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->height:F

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/c;->b(I)V

    goto :goto_0
.end method

.method public a(IIII)V
    .locals 2

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/c;->n:I

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/c;->o:I

    iput p3, p0, Lcom/iLoong/launcher/Desktop3D/c;->p:I

    iput p4, p0, Lcom/iLoong/launcher/Desktop3D/c;->q:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->width:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->n:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->o:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->l:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->height:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->p:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->q:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->m:I

    return-void
.end method

.method public a(IZ)V
    .locals 0

    iput-boolean p2, p0, Lcom/iLoong/launcher/Desktop3D/c;->r:Z

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/Desktop3D/c;->b(I)V

    return-void
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/c;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/c;->b(I)V

    return-void
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;I)V
    .locals 1

    invoke-virtual {p0, p2, p1}, Lcom/iLoong/launcher/Desktop3D/c;->addViewAt(ILcom/iLoong/launcher/UI3DEngine/View3D;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/c;->b(I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/c;->b(I)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/c;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/iLoong/launcher/Desktop3D/c;->r:Z

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->r:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/c;->a()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/c;->b(I)V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    if-lez p1, :cond_4

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/c;->g()F

    move-result v4

    packed-switch v0, :pswitch_data_0

    :cond_3
    :pswitch_0
    move v0, v2

    :goto_2
    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->c:Z

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_1

    :pswitch_1
    neg-float v0, v3

    const/high16 v3, 0x41f0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_2

    :pswitch_2
    neg-float v0, v3

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    const/high16 v3, 0x41a0

    sub-float v3, v4, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    move v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->h:I

    return v0
.end method

.method public b(II)V
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->h:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->i:I

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/c;->h:I

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/c;->i:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/c;->b(I)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/Desktop3D/c;->t:Z

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->i:I

    return v0
.end method

.method public c(II)I
    .locals 3

    const-string v0, "click"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GridView3D getIndex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->n:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->q:I

    if-lt p2, v0, :cond_0

    int-to-float v0, p1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->width:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->o:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    int-to-float v0, p2

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->height:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->p:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->height:F

    float-to-int v0, v0

    sub-int/2addr v0, p2

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->p:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->m:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->h:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->n:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->l:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->l:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->m:I

    return v0
.end method

.method public f()Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    return-object v0
.end method

.method public g()F
    .locals 2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->h:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->l:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->n:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->o:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->h:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->l:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->n:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->o:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->a:Laurelienribon/tweenengine/Timeline;

    if-ne p2, v0, :cond_0

    iput-object v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->a:Laurelienribon/tweenengine/Timeline;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->s:F

    :cond_0
    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->b:Laurelienribon/tweenengine/Tween;

    if-ne p2, v0, :cond_1

    iput-object v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->b:Laurelienribon/tweenengine/Tween;

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onEvent(ILaurelienribon/tweenengine/BaseTween;)V

    return-void
.end method

.method public onLongClick(FF)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const v3, 0x3f19999a

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->t:Z

    if-eqz v0, :cond_2

    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/c;->r:Z

    iput-object v4, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->c(II)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bJ:I

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->vibrator(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->children:Ljava/util/List;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {p0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/c;->c(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-ne v0, p0, :cond_1

    iput-object v4, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/c;->a()V

    float-to-int v0, p1

    float-to-int v1, p2

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->d(II)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/c;->requestFocus()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v4, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleX:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v5, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    mul-float v1, v4, v3

    mul-float v2, v5, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Elastic;->OUT:Laurelienribon/tweenengine/equations/Elastic;

    const v3, 0x3f4ccccd

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move v0, v7

    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onLongClick(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchDragged(FFI)Z
    .locals 9

    const/4 v8, -0x1

    const/4 v0, 0x1

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v1, :cond_7

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {p0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/c;->c(II)I

    move-result v2

    if-ne v2, v8, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sput v1, Lcom/iLoong/launcher/Desktop3D/x;->a:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sput v1, Lcom/iLoong/launcher/Desktop3D/x;->b:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/c;->releaseFocus()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/c;->d(II)V

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v1, p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v1

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v4, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v5, v5, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v5, 0x428c

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/c;->height:F

    cmpg-float v4, p2, v4

    if-gez v4, :cond_4

    invoke-virtual {p0, v8}, Lcom/iLoong/launcher/Desktop3D/c;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v8}, Lcom/iLoong/launcher/Desktop3D/c;->d(I)V

    :goto_2
    if-nez v1, :cond_0

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v3, v2}, Lcom/iLoong/launcher/Desktop3D/c;->moveViewTo(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    invoke-direct {p0, v7}, Lcom/iLoong/launcher/Desktop3D/c;->b(I)V

    goto :goto_0

    :cond_3
    const-string v3, "test"

    const-string v4, "left fail "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7}, Lcom/iLoong/launcher/Desktop3D/c;->d(I)V

    goto :goto_2

    :cond_4
    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x46

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/c;->height:F

    cmpg-float v3, p2, v3

    if-gez v3, :cond_6

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/c;->a(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/c;->d(I)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, v7}, Lcom/iLoong/launcher/Desktop3D/c;->d(I)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, v7}, Lcom/iLoong/launcher/Desktop3D/c;->d(I)V

    goto :goto_2

    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchDragged(FFI)Z

    move-result v0

    goto :goto_1
.end method

.method public onTouchUp(FFI)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->c:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->d(I)V

    :cond_0
    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v2, :cond_3

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {p0, v2, v3}, Lcom/iLoong/launcher/Desktop3D/c;->c(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v2, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->children:Ljava/util/List;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->c(I)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/high16 v2, 0x3f00

    invoke-static {v1, v0, v2}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/c;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/c;->f:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->b:Laurelienribon/tweenengine/Tween;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->b:Laurelienribon/tweenengine/Tween;

    sget-object v2, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/c;->releaseFocus()V

    :goto_0
    return v0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchUp(FFI)Z

    move-result v0

    goto :goto_0
.end method

.method public removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/c;->b(I)V

    return-void
.end method

.method public scroll(FFFF)Z
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/c;->d:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->scroll(FFFF)Z

    move-result v0

    goto :goto_0
.end method
