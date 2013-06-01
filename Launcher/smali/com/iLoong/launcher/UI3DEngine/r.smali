.class public Lcom/iLoong/launcher/UI3DEngine/r;
.super Lcom/badlogic/gdx/scenes/scene2d/Stage;

# interfaces
.implements Lcom/iLoong/launcher/UI3DEngine/q;


# static fields
.field public static a:Z

.field private static j:I


# instance fields
.field final b:Lcom/badlogic/gdx/math/Vector2;

.field final c:Lcom/badlogic/gdx/math/Vector2;

.field d:Lcom/iLoong/launcher/UI3DEngine/j;

.field e:Z

.field f:Lcom/badlogic/gdx/math/Vector2;

.field g:Lcom/badlogic/gdx/math/Vector2;

.field private h:Z

.field private i:Z

.field private k:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field private l:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field private m:J

.field private n:Z

.field private o:Z

.field private p:Lcom/iLoong/launcher/UI3DEngine/View3D;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xfa

    sput v0, Lcom/iLoong/launcher/UI3DEngine/r;->j:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/UI3DEngine/r;->a:Z

    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x4000

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(FFZ)V

    iput-boolean v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->h:Z

    iput-boolean v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->i:Z

    iput-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->n:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->o:Z

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/j;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/UI3DEngine/j;-><init>(Lcom/iLoong/launcher/UI3DEngine/q;)V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->d:Lcom/iLoong/launcher/UI3DEngine/j;

    iput-boolean v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->e:Z

    iput-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->p:Lcom/iLoong/launcher/UI3DEngine/View3D;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->f:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->g:Lcom/badlogic/gdx/math/Vector2;

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aX:Z

    if-eqz v0, :cond_0

    sput v1, Lcom/iLoong/launcher/UI3DEngine/r;->j:I

    :cond_0
    const/high16 v0, 0x420c

    div-float v1, p2, v5

    float-to-double v1, v1

    div-float v3, v0, v5

    const v4, 0x3c8efa35

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x42c8

    add-float v3, v1, p2

    new-instance v4, Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    invoke-direct {v4, v0, p1, p2}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;-><init>(FFF)V

    iput v2, v4, Lcom/badlogic/gdx/graphics/Camera;->near:F

    iput v3, v4, Lcom/badlogic/gdx/graphics/Camera;->far:F

    iget-object v0, v4, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    div-float v2, p1, v5

    div-float v3, p2, v5

    invoke-virtual {v0, v2, v3, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, v4, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, -0x4080

    invoke-virtual {v0, v6, v6, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v4}, Lcom/iLoong/launcher/UI3DEngine/r;->setCamera(Lcom/badlogic/gdx/graphics/Camera;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/r;->getActors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    return-object v0
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 2

    instance-of v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Desktop3D can only have View3D children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public a(FF)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v1, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->fling(FF)Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/r;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->fling(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public a(II)Z
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2, v0}, Lcom/iLoong/launcher/UI3DEngine/r;->toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->e(FF)Z

    move-result v0

    return v0
.end method

.method public a(III)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2, v0}, Lcom/iLoong/launcher/UI3DEngine/r;->toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {p0, v4}, Lcom/iLoong/launcher/UI3DEngine/r;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hit(FF)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->h:Z

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->h:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->m:J

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->p:Lcom/iLoong/launcher/UI3DEngine/View3D;

    :goto_1
    return v5

    :cond_0
    iput-boolean v5, p0, Lcom/iLoong/launcher/UI3DEngine/r;->h:Z

    sput-boolean v4, Lcom/iLoong/launcher/UI3DEngine/r;->a:Z

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v2}, Lcom/iLoong/launcher/UI3DEngine/r;->d(FF)Z

    iput-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->p:Lcom/iLoong/launcher/UI3DEngine/View3D;

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(IIII)Z
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->h:Z

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v3, v3

    int-to-float v3, v3

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/iLoong/launcher/UI3DEngine/View3D;->scroll(FFFF)Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/r;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInParent(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v4, v4

    int-to-float v4, v4

    int-to-float v5, p3

    int-to-float v6, p4

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->scroll(FFFF)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public a(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 7

    const/4 v0, 0x1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v1, v1

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/r;->toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v1, v1

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/r;->toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V

    iget v1, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v1, v1

    iget v2, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->f:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/r;->toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V

    iget v1, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v1, v1

    iget v2, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->g:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/r;->toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->f:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/iLoong/launcher/UI3DEngine/r;->g:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/iLoong/launcher/UI3DEngine/View3D;->multiTouch2(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/r;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/iLoong/launcher/UI3DEngine/r;->f:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/iLoong/launcher/UI3DEngine/r;->g:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->multiTouch2(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public b()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->e:Z

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/iLoong/launcher/UI3DEngine/r;->touchUp(IIII)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public b(FF)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v1, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->zoom(FF)Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/r;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->zoom(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public b(III)Z
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->n:Z

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3, p3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onTouchDown(FFI)Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/r;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInParent(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, p3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onTouchDown(FFI)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public c()Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    return-object v0
.end method

.method public c(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    return-void
.end method

.method public c(FF)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onClick(FF)Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/r;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInParent(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onClick(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public c(III)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3, p3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onTouchDragged(FFI)Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/r;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInParent(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, p3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onTouchDragged(FFI)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->d:Lcom/iLoong/launcher/UI3DEngine/j;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/j;->b()V

    return-void
.end method

.method public d(FF)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onDoubleClick(FF)Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/r;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInParent(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onDoubleClick(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public d(III)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->n:Z

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2, v2}, Lcom/iLoong/launcher/UI3DEngine/r;->toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2, v2}, Lcom/iLoong/launcher/UI3DEngine/r;->toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, p3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onTouchUp(FFI)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->h:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v2, Lcom/iLoong/launcher/UI3DEngine/r;->a:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->h:Z

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->h:Z

    sput-boolean v1, Lcom/iLoong/launcher/UI3DEngine/r;->a:Z

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/r;->c(FF)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/r;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-gez v2, :cond_3

    sget-boolean v2, Lcom/iLoong/launcher/UI3DEngine/r;->a:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->h:Z

    if-nez v2, :cond_6

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->h:Z

    sput-boolean v1, Lcom/iLoong/launcher/UI3DEngine/r;->a:Z

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->c(FF)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/UI3DEngine/r;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v3

    iget-boolean v4, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v4, :cond_4

    iget-boolean v4, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v4, :cond_5

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInParent(FF)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, p3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onTouchUp(FFI)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->h:Z

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public draw()V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->d:Lcom/iLoong/launcher/UI3DEngine/j;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/j;->a()V

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->h:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->m:J

    sub-long/2addr v0, v2

    sget v2, Lcom/iLoong/launcher/UI3DEngine/r;->j:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "test"

    const-string v1, "--------double single"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->h:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/UI3DEngine/r;->a:Z

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->c:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->c(FF)Z

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->camera:Lcom/badlogic/gdx/graphics/Camera;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Camera;->update()V

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->visible:Z

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->n:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    goto :goto_0
.end method

.method public e(FF)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onLongClick(FF)Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/r;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->pointerInParent(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/r;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onLongClick(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public keyDown(I)Z
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->o:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/r;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->keyDown(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/r;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    goto :goto_1
.end method

.method public keyTyped(C)Z
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/r;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/r;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iget-boolean v2, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->keyTyped(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public keyUp(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->o:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->o:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/r;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/r;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget-boolean v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->keyUp(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V
    .locals 1

    int-to-float v0, p1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-void
.end method

.method public touchDown(IIII)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->e:Z

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->h:Z

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->d:Lcom/iLoong/launcher/UI3DEngine/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/j;->a(IIII)Z

    goto :goto_0
.end method

.method public touchDragged(III)Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->h:Z

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->d:Lcom/iLoong/launcher/UI3DEngine/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/j;->a(III)Z

    goto :goto_0
.end method

.method public touchUp(IIII)Z
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/r;->e:Z

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/iLoong/launcher/UI3DEngine/r;->a(III)Z

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/r;->d:Lcom/iLoong/launcher/UI3DEngine/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/j;->b(IIII)Z

    goto :goto_0
.end method
