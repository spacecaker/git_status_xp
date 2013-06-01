.class public Lcom/iLoong/launcher/HotSeat3D/i;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# instance fields
.field a:Laurelienribon/tweenengine/Timeline;

.field b:Laurelienribon/tweenengine/Tween;

.field private c:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field private d:I

.field private e:I

.field private f:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:F

.field private q:Z

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Ljava/lang/String;FFII)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x4000

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->o:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->p:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->q:Z

    iput-object v4, p0, Lcom/iLoong/launcher/HotSeat3D/i;->a:Laurelienribon/tweenengine/Timeline;

    iput-object v4, p0, Lcom/iLoong/launcher/HotSeat3D/i;->b:Laurelienribon/tweenengine/Tween;

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->r:I

    iput v2, p0, Lcom/iLoong/launcher/HotSeat3D/i;->s:I

    iput p2, p0, Lcom/iLoong/launcher/HotSeat3D/i;->width:F

    iput p3, p0, Lcom/iLoong/launcher/HotSeat3D/i;->height:F

    iput p4, p0, Lcom/iLoong/launcher/HotSeat3D/i;->f:I

    iput p5, p0, Lcom/iLoong/launcher/HotSeat3D/i;->h:I

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->k:I

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->l:I

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->m:I

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->n:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->al:I

    if-ne v0, v2, :cond_0

    iput v2, p0, Lcom/iLoong/launcher/HotSeat3D/i;->s:I

    :goto_0
    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->width:F

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->k:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->l:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->f:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->i:I

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->height:F

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->m:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->n:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->j:I

    div-float v0, p2, v3

    div-float v1, p3, v3

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->setOrigin(FF)V

    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->s:I

    goto :goto_0
.end method

.method private b(I)V
    .locals 5

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->f:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->h:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v1

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->o:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/i;->a()V

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->a:Laurelienribon/tweenengine/Timeline;

    :cond_2
    :goto_1
    if-lt p1, v1, :cond_3

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->a:Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/i;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-boolean v2, p0, Lcom/iLoong/launcher/HotSeat3D/i;->o:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/i;->a:Laurelienribon/tweenengine/Timeline;

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    invoke-static {v0, v3, v4}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iget v3, p0, Lcom/iLoong/launcher/HotSeat3D/i;->d:I

    int-to-float v3, v3

    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/i;->e:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    invoke-virtual {v0, v3}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    int-to-float v3, p1

    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/i;->p:F

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v2, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/i;->d:I

    int-to-float v2, v2

    iget v3, p0, Lcom/iLoong/launcher/HotSeat3D/i;->e:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    goto :goto_2
.end method

.method private b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 4

    const/high16 v3, 0x4000

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->e:I

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->d:I

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/a/j;->n:I

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->f:I

    rem-int v1, v0, v1

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/i;->i:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/i;->k:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->d:I

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->s:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->f:I

    rem-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->i:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->k:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->d:I

    :cond_1
    instance-of v0, p1, Lcom/iLoong/launcher/d/a;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->n:I

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->e:I

    :goto_1
    iget v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->i:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->d:I

    int-to-float v0, v0

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/i;->i:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->d:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->n:I

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->e:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->d:I

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->i:I

    int-to-float v1, v1

    iget v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->d:I

    goto :goto_0
.end method


# virtual methods
.method public a(II)I
    .locals 5

    const/4 v1, -0x1

    const/4 v4, 0x2

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->k:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->n:I

    if-lt p2, v0, :cond_0

    int-to-float v0, p1

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/i;->width:F

    iget v3, p0, Lcom/iLoong/launcher/HotSeat3D/i;->l:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    int-to-float v0, p2

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/i;->height:F

    iget v3, p0, Lcom/iLoong/launcher/HotSeat3D/i;->m:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->k:I

    sub-int v0, p1, v0

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/i;->i:I

    div-int/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/i;->s:I

    if-ne v2, v4, :cond_4

    if-ne v0, v4, :cond_3

    const/4 v0, -0x2

    goto :goto_0

    :cond_3
    if-le v0, v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/i;->f:I

    if-lt v0, v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 4

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/a/j;->n:I

    if-eq v0, p1, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->a:Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->a:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->a:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->free()V

    iput-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->a:Laurelienribon/tweenengine/Timeline;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->b:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->b:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->c:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->c:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->stopTween()V

    :cond_1
    iput-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->b:Laurelienribon/tweenengine/Tween;

    :cond_2
    return-void
.end method

.method public a(IIII)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->k:I

    iput p2, p0, Lcom/iLoong/launcher/HotSeat3D/i;->l:I

    iput p3, p0, Lcom/iLoong/launcher/HotSeat3D/i;->m:I

    iput p4, p0, Lcom/iLoong/launcher/HotSeat3D/i;->n:I

    return-void
.end method

.method public a(ILcom/badlogic/gdx/math/Vector2;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/HotSeat3D/i;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-nez v0, :cond_0

    iput v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/i;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->d:I

    int-to-float v0, v0

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->e:I

    int-to-float v0, v0

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0
.end method

.method public a(ILcom/badlogic/gdx/math/Vector2;Z)V
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->f:I

    rem-int v0, p1, v0

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->i:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->k:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->s:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->f:I

    rem-int v0, p1, v0

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->i:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->k:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->i:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->n:I

    int-to-float v0, v0

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-void
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/HotSeat3D/i;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/i;->b(I)V

    return-void
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;I)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/HotSeat3D/i;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/i;->b(I)V

    return-void
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/HotSeat3D/i;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->d:I

    int-to-float v0, v0

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->e:I

    int-to-float v0, v0

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-void
.end method

.method public a(Lcom/iLoong/launcher/d/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/HotSeat3D/i;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/bd;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/HotSeat3D/i;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    :cond_0
    return-void
.end method

.method public addViewAt(ILcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addViewAt(ILcom/iLoong/launcher/UI3DEngine/View3D;)V

    instance-of v0, p2, Lcom/iLoong/launcher/Desktop3D/bd;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/iLoong/launcher/HotSeat3D/i;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    :cond_0
    return-void
.end method

.method public b()Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->c:Lcom/iLoong/launcher/UI3DEngine/View3D;

    return-object v0
.end method

.method public b(Lcom/iLoong/launcher/UI3DEngine/View3D;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->f:I

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/iLoong/launcher/HotSeat3D/i;->addViewAt(ILcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->q:Z

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->c:Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/a/j;->n:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->r:I

    return v0
.end method

.method public hit(FF)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v2, :cond_2

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInParent(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->a:Laurelienribon/tweenengine/Timeline;

    if-ne p2, v0, :cond_0

    iput-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/i;->a:Laurelienribon/tweenengine/Timeline;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->p:F

    :cond_0
    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->b:Laurelienribon/tweenengine/Tween;

    if-ne p2, v0, :cond_1

    iput-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/i;->b:Laurelienribon/tweenengine/Tween;

    :cond_1
    return-void
.end method

.method public onLongClick(FF)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->q:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->o:Z

    iput-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->c:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/HotSeat3D/i;->hit(FF)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->c:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->c:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-ne v0, p0, :cond_0

    iput-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/i;->c:Lcom/iLoong/launcher/UI3DEngine/View3D;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->c:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v0, :cond_1

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bJ:I

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->vibrator(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/i;->toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sput v0, Lcom/iLoong/launcher/Desktop3D/x;->a:F

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sput v0, Lcom/iLoong/launcher/Desktop3D/x;->b:F

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    :cond_1
    return v2
.end method

.method public onTouchUp(FFI)Z
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->c:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/i;->c:Lcom/iLoong/launcher/UI3DEngine/View3D;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchUp(FFI)Z

    move-result v0

    return v0
.end method
