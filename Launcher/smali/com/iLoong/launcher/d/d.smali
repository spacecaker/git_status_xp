.class public Lcom/iLoong/launcher/d/d;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# instance fields
.field public a:Lcom/badlogic/gdx/math/Vector3;

.field public b:Lcom/badlogic/gdx/math/Vector3;

.field private final c:I

.field private final d:I

.field private e:F

.field private f:Lcom/iLoong/launcher/d/a;

.field private h:Lcom/badlogic/gdx/math/CatmullRomSpline;

.field private i:Ljava/util/List;

.field private j:Ljava/util/ArrayList;

.field private k:Laurelienribon/tweenengine/Timeline;

.field private l:Laurelienribon/tweenengine/Tween;

.field private m:Laurelienribon/tweenengine/Timeline;

.field private n:Laurelienribon/tweenengine/Timeline;

.field private o:Lcom/iLoong/launcher/UI3DEngine/d;

.field private p:Z

.field private q:Z

.field private r:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/d/d;->a:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/d/d;->b:Lcom/badlogic/gdx/math/Vector3;

    const/16 v0, 0x18

    iput v0, p0, Lcom/iLoong/launcher/d/d;->c:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/iLoong/launcher/d/d;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/d/d;->e:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/d/d;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/d/d;->j:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/iLoong/launcher/d/d;->k:Laurelienribon/tweenengine/Timeline;

    iput-object v1, p0, Lcom/iLoong/launcher/d/d;->l:Laurelienribon/tweenengine/Tween;

    iput-object v1, p0, Lcom/iLoong/launcher/d/d;->m:Laurelienribon/tweenengine/Timeline;

    iput-object v1, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    iput-boolean v2, p0, Lcom/iLoong/launcher/d/d;->p:Z

    iput-boolean v2, p0, Lcom/iLoong/launcher/d/d;->q:Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/iLoong/launcher/d/d;->r:F

    return-void
.end method

.method private a(FF)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->b:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, v2}, Lcom/badlogic/gdx/math/Vector3;->dst(FFF)F

    move-result v0

    const/high16 v1, 0x41c0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/iLoong/launcher/d/d;->e:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/iLoong/launcher/d/d;->e:F

    invoke-direct {p0}, Lcom/iLoong/launcher/d/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->b:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p1, p2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p0, p1, p2, v0}, Lcom/iLoong/launcher/d/d;->a(FFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->a:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->b:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_0
    return-void
.end method

.method private a(FFF)V
    .locals 4

    const/high16 v2, 0x4080

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->h:Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/CatmullRomSpline;->getControlPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->h:Lcom/badlogic/gdx/math/CatmullRomSpline;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->a:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->add(Lcom/badlogic/gdx/math/Vector3;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->h:Lcom/badlogic/gdx/math/CatmullRomSpline;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->a:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->add(Lcom/badlogic/gdx/math/Vector3;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->h:Lcom/badlogic/gdx/math/CatmullRomSpline;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->b:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->add(Lcom/badlogic/gdx/math/Vector3;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->h:Lcom/badlogic/gdx/math/CatmullRomSpline;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->b:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->add(Lcom/badlogic/gdx/math/Vector3;)V

    sub-float v0, p3, v2

    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->h:Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/CatmullRomSpline;->getPath(I)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/iLoong/launcher/d/d;->f()V

    return-void

    :cond_0
    new-instance v3, Lcom/iLoong/launcher/d/c;

    invoke-direct {v3}, Lcom/iLoong/launcher/d/c;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v0, v3, Lcom/iLoong/launcher/d/c;->a:F

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v0, v3, Lcom/iLoong/launcher/d/c;->b:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->i:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private b()Z
    .locals 6

    iget v0, p0, Lcom/iLoong/launcher/d/d;->e:F

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/d;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/d;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x4004

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 13

    const/4 v12, 0x1

    const v11, 0x3e99999a

    const v10, 0x3e4ccccd

    const/4 v4, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bA:I

    div-int/lit8 v0, v0, 0x2

    if-le v5, v0, :cond_0

    const v0, 0x3d75c28f

    move v2, v0

    :goto_0
    move v3, v4

    :goto_1
    if-lt v3, v5, :cond_1

    return-void

    :cond_0
    const v0, 0x3dcccccd

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v1, v4}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Z)V

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/j;)V

    :cond_2
    iget v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v6, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget v6, v6, Lcom/iLoong/launcher/d/a;->x:F

    sub-float/2addr v1, v6

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v6, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget v6, v6, Lcom/iLoong/launcher/d/a;->y:F

    sub-float/2addr v1, v6

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v6, v6

    add-float/2addr v1, v6

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v6, v6

    sub-float/2addr v1, v6

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v9, v9, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationVector(FFF)V

    add-int/lit8 v1, v5, -0x2

    if-ne v3, v1, :cond_3

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v1, v12}, Lcom/iLoong/launcher/d/a;->b(I)V

    :goto_2
    iget-object v6, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x4

    invoke-static {v0, v1, v10}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    iget-object v7, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v7}, Lcom/iLoong/launcher/d/a;->j()F

    move-result v7

    invoke-virtual {v1, v7, v9, v9}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v7, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v1, v7}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    int-to-float v7, v3

    mul-float/2addr v7, v2

    add-float/2addr v7, v11

    invoke-virtual {v1, v7}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v6, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v6, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x3

    invoke-static {v0, v1, v10}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    iget-object v7, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v7, v4}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v7

    iget-object v8, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v8, v4}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v8

    invoke-virtual {v1, v7, v8, v9}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    int-to-float v7, v3

    mul-float/2addr v7, v2

    add-float/2addr v7, v11

    invoke-virtual {v1, v7}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/Tween;

    sget-object v7, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v1, v7}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v6, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    const/high16 v6, 0x3f00

    invoke-static {v0, v12, v6}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iget-object v6, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v6}, Lcom/iLoong/launcher/d/a;->h()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v7}, Lcom/iLoong/launcher/d/a;->i()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v6, v7}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v6, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    invoke-virtual {v0, v6}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    int-to-float v6, v3

    mul-float/2addr v6, v2

    invoke-virtual {v0, v6}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v1, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->m:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Timeline;)Laurelienribon/tweenengine/Timeline;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v1, v5, -0x3

    if-ne v3, v1, :cond_4

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lcom/iLoong/launcher/d/a;->b(I)V

    goto/16 :goto_2

    :cond_4
    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v1, v4}, Lcom/iLoong/launcher/d/a;->b(I)V

    goto/16 :goto_2
.end method

.method private d()V
    .locals 11

    const/4 v4, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bA:I

    div-int/lit8 v0, v0, 0x2

    if-le v5, v0, :cond_0

    const v0, 0x3ca3d70a

    move v2, v0

    :goto_0
    const v6, 0x3ecccccd

    move v3, v4

    :goto_1
    if-lt v3, v5, :cond_1

    return-void

    :cond_0
    const v0, 0x3d23d70a

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v1, v4}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Z)V

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/j;)V

    :cond_2
    iget v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v7, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget v7, v7, Lcom/iLoong/launcher/d/a;->x:F

    sub-float/2addr v1, v7

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v7, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget v7, v7, Lcom/iLoong/launcher/d/a;->y:F

    sub-float/2addr v1, v7

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v7, v7

    add-float/2addr v1, v7

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v7, v7

    sub-float/2addr v1, v7

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v1, v3}, Lcom/iLoong/launcher/d/a;->b(I)V

    iget-object v7, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x1

    invoke-static {v0, v1, v6}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    iget-object v8, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v8}, Lcom/iLoong/launcher/d/a;->h()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v9}, Lcom/iLoong/launcher/d/a;->i()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1, v8, v9, v10}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    int-to-float v8, v3

    mul-float/2addr v8, v2

    invoke-virtual {v1, v8}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/Tween;

    sget-object v8, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v1, v8}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v7, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    const/4 v7, 0x3

    invoke-static {v0, v7, v6}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iget-object v7, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v7, v3}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v7

    iget-object v8, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v8, v3}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v8

    invoke-virtual {v0, v7, v8, v10}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    int-to-float v7, v3

    mul-float/2addr v7, v2

    invoke-virtual {v0, v7}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    sget-object v7, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    invoke-virtual {v0, v7}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v1, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->m:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Timeline;)Laurelienribon/tweenengine/Timeline;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1
.end method

.method private e()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->k:Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->k:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->k:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->free()V

    iput-object v1, p0, Lcom/iLoong/launcher/d/d;->k:Laurelienribon/tweenengine/Timeline;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->m:Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->m:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->m:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->free()V

    iput-object v1, p0, Lcom/iLoong/launcher/d/d;->m:Laurelienribon/tweenengine/Timeline;

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->free()V

    iput-object v1, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    :cond_2
    return-void
.end method

.method private f()V
    .locals 12

    const/4 v11, 0x1

    const/4 v0, 0x0

    const v10, 0x3dcccccd

    const/4 v9, 0x2

    invoke-direct {p0}, Lcom/iLoong/launcher/d/d;->e()V

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/d/d;->k:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int v4, v1, v3

    const/4 v1, 0x4

    if-le v3, v1, :cond_4

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->k:Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v1, v11}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Z)V

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/j;)V

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget v1, v1, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v1, v9, :cond_3

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->k:Laurelienribon/tweenengine/Timeline;

    invoke-static {v0, v9, v10}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v5

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->i:Ljava/util/List;

    mul-int v6, v4, v2

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/d/c;

    iget v6, v0, Lcom/iLoong/launcher/d/c;->a:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->i:Ljava/util/List;

    mul-int v7, v4, v2

    div-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/d/c;

    iget v0, v0, Lcom/iLoong/launcher/d/c;->b:F

    invoke-virtual {v5, v6, v0}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v5, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v0, v5}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v1, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->k:Laurelienribon/tweenengine/Timeline;

    invoke-static {v0, v9, v10}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v5

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->i:Ljava/util/List;

    add-int/lit8 v6, v3, -0x1

    sub-int/2addr v6, v2

    mul-int/2addr v6, v4

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/d/c;

    iget v6, v0, Lcom/iLoong/launcher/d/c;->a:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->i:Ljava/util/List;

    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v2

    mul-int/2addr v7, v4

    div-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/d/c;

    iget v0, v0, Lcom/iLoong/launcher/d/c;->b:F

    invoke-virtual {v5, v6, v0}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v5, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v0, v5}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v1, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_2
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v1, v11}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Z)V

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/j;)V

    :cond_5
    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget v1, v1, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v1, v9, :cond_6

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->k:Laurelienribon/tweenengine/Timeline;

    invoke-static {v0, v9, v10}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v5

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->i:Ljava/util/List;

    mul-int v6, v4, v2

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/d/c;

    iget v6, v0, Lcom/iLoong/launcher/d/c;->a:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->i:Ljava/util/List;

    mul-int v7, v4, v2

    div-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/d/c;

    iget v0, v0, Lcom/iLoong/launcher/d/c;->b:F

    invoke-virtual {v5, v6, v0}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v5, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v0, v5}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v1, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->k:Laurelienribon/tweenengine/Timeline;

    invoke-static {v0, v9, v10}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v5

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->i:Ljava/util/List;

    add-int/lit8 v6, v3, -0x1

    sub-int/2addr v6, v2

    mul-int/2addr v6, v4

    add-int/2addr v6, v4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/d/c;

    iget v6, v0, Lcom/iLoong/launcher/d/c;->a:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->i:Ljava/util/List;

    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v2

    mul-int/2addr v7, v4

    add-int/2addr v7, v4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/d/c;

    iget v0, v0, Lcom/iLoong/launcher/d/c;->b:F

    invoke-virtual {v5, v6, v0}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v5, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v0, v5}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v1, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    goto :goto_3
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/d;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/iLoong/launcher/d/d;->p:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/iLoong/launcher/d/d;->p:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/d/d;->q:Z

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/d/a;->j:Z

    iput v3, p0, Lcom/iLoong/launcher/d/d;->e:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/iLoong/launcher/d/d;->e()V

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->j:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v2}, Lcom/iLoong/launcher/d/a;->c()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/d/a;->a(Ljava/util/ArrayList;F)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/a;->m()V

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget v2, v2, Lcom/iLoong/launcher/d/a;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget v2, v2, Lcom/iLoong/launcher/d/a;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/d/d;->m:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget v0, v0, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lcom/iLoong/launcher/d/d;->c()V

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget v0, v0, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->m:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    const/4 v2, 0x4

    invoke-static {v1, v2, v4}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    const/high16 v2, -0x3c4c

    invoke-virtual {v1, v2, v3, v3}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Quad;->OUT:Laurelienribon/tweenengine/equations/Quad;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->m:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    const/4 v2, 0x3

    invoke-static {v1, v2, v4}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Quad;->OUT:Laurelienribon/tweenengine/equations/Quad;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->m:Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/iLoong/launcher/d/d;->d()V

    goto :goto_0
.end method

.method a(Lcom/iLoong/launcher/d/a;)V
    .locals 7

    const/4 v4, 0x2

    const/high16 v6, 0x3f80

    const/high16 v5, 0x4000

    iput-object p1, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    new-instance v0, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/d/d;->h:Lcom/badlogic/gdx/math/CatmullRomSpline;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "button_ok"

    const-string v2, "public-button-return"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iput v6, p0, Lcom/iLoong/launcher/d/d;->r:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->aA:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/d/d;->r:F

    mul-float/2addr v1, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->az:I

    int-to-float v2, v2

    iget v3, p0, Lcom/iLoong/launcher/d/d;->r:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setOrigin(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v0, v0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v0, v0, Lcom/iLoong/launcher/a/h;->p:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v1, v1, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/d;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget v0, v0, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v1, v1, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v1, v1, Lcom/iLoong/launcher/a/h;->p:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v2, v2, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v2, v2, Lcom/iLoong/launcher/a/h;->q:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v3, v3, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/d;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/d;->hide()V

    new-instance v0, Lcom/iLoong/launcher/d/c;

    invoke-direct {v0}, Lcom/iLoong/launcher/d/c;-><init>()V

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->a:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v2, v2, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v2, v2, Lcom/iLoong/launcher/a/h;->p:I

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->be:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v2, v0, Lcom/iLoong/launcher/d/c;->a:F

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->a:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v2, v2, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v2, v2, Lcom/iLoong/launcher/a/h;->q:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v3, v3, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v3, v3, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v2, v0, Lcom/iLoong/launcher/d/c;->b:F

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/a;->getChildCount()I

    move-result v1

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_6

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v1, v1, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v1, v1, Lcom/iLoong/launcher/a/h;->p:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v2, v2, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v2, v2, Lcom/iLoong/launcher/a/h;->q:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v0, v0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v0, v0, Lcom/iLoong/launcher/a/h;->q:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v1, v5

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v0, v0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v0, v0, Lcom/iLoong/launcher/a/h;->p:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v1, v1, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v1, v1, Lcom/iLoong/launcher/a/h;->p:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v2, v5

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v0, v0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v0, v0, Lcom/iLoong/launcher/a/h;->p:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v1, v1, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget v1, v1, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v2, v2, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v2, v2, Lcom/iLoong/launcher/a/h;->q:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v3, v3, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v3, v3, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    iget-object v4, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v2, v2, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v2, v2, Lcom/iLoong/launcher/a/h;->q:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget v0, v0, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v1, v1, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v1, v1, Lcom/iLoong/launcher/a/h;->p:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v2, v2, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v2, v2, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v2, v2, Lcom/iLoong/launcher/a/h;->q:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v3, v3, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v1, v1, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v1, v1, Lcom/iLoong/launcher/a/h;->p:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v2, v2, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    iget-object v2, v2, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v2, v2, Lcom/iLoong/launcher/a/h;->q:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v2, v0}, Lcom/iLoong/launcher/d/a;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    instance-of v3, v2, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    invoke-virtual {v2, v6, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotation(F)V

    iget-object v3, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Lcom/iLoong/launcher/d/a;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;F)V

    iget-object v3, p0, Lcom/iLoong/launcher/d/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
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

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/d;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->keyUp(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(FF)Z
    .locals 3

    const/high16 v2, 0x4000

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/d;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/d/d;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/d;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onClick(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->k:Laurelienribon/tweenengine/Timeline;

    if-ne p2, v0, :cond_0

    iput-object v3, p0, Lcom/iLoong/launcher/d/d;->k:Laurelienribon/tweenengine/Timeline;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->l:Laurelienribon/tweenengine/Tween;

    if-ne p2, v0, :cond_1

    if-ne p1, v2, :cond_1

    iput-object v3, p0, Lcom/iLoong/launcher/d/d;->l:Laurelienribon/tweenengine/Tween;

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/d;->setRotation(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/d/d;->p:Z

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->m:Laurelienribon/tweenengine/Timeline;

    if-ne p2, v0, :cond_2

    if-ne p1, v2, :cond_2

    iput-object v3, p0, Lcom/iLoong/launcher/d/d;->m:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->f:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/a;->o()V

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    if-ne p2, v0, :cond_3

    if-ne p1, v2, :cond_3

    iput-object v3, p0, Lcom/iLoong/launcher/d/d;->n:Laurelienribon/tweenengine/Timeline;

    :cond_3
    return-void
.end method

.method public onTouchDown(FFI)Z
    .locals 3

    const/high16 v2, 0x4000

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/d;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/d/d;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/d/d;->q:Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchDown(FFI)Z

    move-result v0

    return v0
.end method

.method public onTouchUp(FFI)Z
    .locals 7

    const/high16 v3, 0x3f00

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/d;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/d;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0, v4, v4}, Lcom/iLoong/launcher/UI3DEngine/d;->setScale(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Quad;->IN:Laurelienribon/tweenengine/equations/Quad;

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/d;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    const/4 v1, 0x4

    invoke-static {v0, v1, v3}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    const/high16 v1, 0x43b4

    invoke-virtual {v0, v1, v4, v4}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Laurelienribon/tweenengine/equations/Quad;->OUT:Laurelienribon/tweenengine/equations/Quad;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/d/d;->l:Laurelienribon/tweenengine/Tween;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchUp(FFI)Z

    move-result v0

    goto :goto_0
.end method

.method public scroll(FFFF)Z
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/iLoong/launcher/d/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/d;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/d/d;->a(FF)V

    goto :goto_0
.end method
