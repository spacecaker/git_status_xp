.class public Lcom/iLoong/launcher/Desktop3D/x;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# static fields
.field public static a:F

.field public static b:F


# instance fields
.field public c:F

.field public d:F

.field public e:Z

.field private f:Lcom/iLoong/launcher/Desktop3D/ab;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;

.field private j:F

.field private k:F

.field private l:Lcom/iLoong/launcher/Desktop3D/bd;

.field private m:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field private n:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field private o:F

.field private p:F

.field private q:I

.field private r:J

.field private s:F

.field private t:Z

.field private u:F

.field private v:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x4080

    sput v0, Lcom/iLoong/launcher/Desktop3D/x;->a:F

    sput v0, Lcom/iLoong/launcher/Desktop3D/x;->b:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/high16 v3, -0x4080

    const/4 v6, 0x0

    const/16 v4, 0x1e

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/ab;

    const-string v1, "dragview"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Desktop3D/ab;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->i:Ljava/util/ArrayList;

    iput v3, p0, Lcom/iLoong/launcher/Desktop3D/x;->c:F

    iput v3, p0, Lcom/iLoong/launcher/Desktop3D/x;->d:F

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->l:Lcom/iLoong/launcher/Desktop3D/bd;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-string v1, "move_to_left_screen_bar_bg"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->m:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-string v1, "move_to_right_screen_bar_bg"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->n:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-string v0, "drag_border_width"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->o:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->p:F

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->q:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->r:J

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/x;->s:F

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->t:Z

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/x;->u:F

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/x;->v:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/ab;->transform:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/ab;->color:Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f4ccccd

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    return-void
.end method

.method private b(FF)V
    .locals 13

    const/4 v1, 0x1

    const/high16 v5, 0x4000

    const/high16 v12, 0x3f80

    const v11, 0x3f19999a

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ab;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ab;->removeAllViews()V

    :cond_0
    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->k:I

    sget v8, Lcom/iLoong/launcher/Desktop3D/at;->k:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->i:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    iget v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    add-int/lit8 v4, v9, -0x1

    mul-int/2addr v4, v7

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    add-int/lit8 v4, v9, -0x1

    mul-int/2addr v4, v8

    int-to-float v4, v4

    add-float/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Lcom/iLoong/launcher/Desktop3D/ab;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    iget v2, v2, Lcom/iLoong/launcher/Desktop3D/ab;->width:F

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    iget v3, v3, Lcom/iLoong/launcher/Desktop3D/ab;->height:F

    div-float/2addr v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/Desktop3D/ab;->setOrigin(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    iput p1, v0, Lcom/iLoong/launcher/Desktop3D/ab;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    iput p2, v0, Lcom/iLoong/launcher/Desktop3D/ab;->y:F

    const-string v0, "launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "x,y="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/x;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ab;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    invoke-virtual {v0, v11, v11}, Lcom/iLoong/launcher/Desktop3D/ab;->setScale(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Elastic;->OUT:Laurelienribon/tweenengine/equations/Elastic;

    const v3, 0x3f4ccccd

    move v4, v12

    move v5, v12

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/ab;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_1
    return-void

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    add-int/lit8 v2, v9, -0x1

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    invoke-virtual {v3}, Lcom/iLoong/launcher/Desktop3D/ab;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/2addr v2, v7

    int-to-float v4, v2

    add-int/lit8 v2, v9, -0x1

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    invoke-virtual {v3}, Lcom/iLoong/launcher/Desktop3D/ab;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/2addr v2, v8

    int-to-float v5, v2

    iget v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    iget v3, v3, Lcom/iLoong/launcher/Desktop3D/ab;->x:F

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    iget v3, v3, Lcom/iLoong/launcher/Desktop3D/ab;->y:F

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x3f00

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    invoke-virtual {v2, v0}, Lcom/iLoong/launcher/Desktop3D/ab;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_0
.end method

.method private c(FF)Lcom/iLoong/launcher/Desktop3D/bd;
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bd;

    invoke-interface {v0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/bd;->pointerInAbs(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/bd;->isVisibleInParent()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/x;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Lcom/iLoong/launcher/Desktop3D/bd;->a(Ljava/util/ArrayList;FF)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private d(FF)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x4000

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/x;->q:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v2

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->o:F

    mul-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->q:I

    :cond_0
    :goto_0
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->q:I

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_1
    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/x;->o:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->q:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(FF)Lcom/iLoong/launcher/Desktop3D/bd;
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bd;

    invoke-interface {v0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/bd;->pointerInAbs(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/bd;->isVisibleInParent()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->i:Ljava/util/ArrayList;

    invoke-interface {v0, v2, p1, p2}, Lcom/iLoong/launcher/Desktop3D/bd;->b(Ljava/util/ArrayList;FF)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lcom/iLoong/launcher/Desktop3D/bd;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/iLoong/launcher/Desktop3D/bd;Lcom/iLoong/launcher/Desktop3D/bd;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;FF)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/x;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p2, p3}, Lcom/iLoong/launcher/Desktop3D/x;->b(FF)V

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/x;->e:Z

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    :cond_1
    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->remove()V

    iput-boolean v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->isDragging:Z

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b()Lcom/iLoong/launcher/Desktop3D/bd;
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->j:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/x;->k:F

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/x;->c(FF)Lcom/iLoong/launcher/Desktop3D/bd;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->stopTween()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->isDragging:Z

    goto :goto_0
.end method

.method public b(Lcom/iLoong/launcher/Desktop3D/bd;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Lcom/iLoong/launcher/Desktop3D/bd;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->l:Lcom/iLoong/launcher/Desktop3D/bd;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->t:Z

    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->q:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/x;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/x;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/x;->s:F

    mul-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/x;->p:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float v3, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->q:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->m:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const/4 v2, 0x0

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/x;->o:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/x;->p:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->n:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->o:F

    sub-float v2, v1, v2

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/x;->o:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/x;->p:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_0
.end method

.method public fling(FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getUser()F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->s:F

    return v0
.end method

.method public multiTouch2(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/x;->getTween()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    if-ne p2, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->q:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/x;->stopTween()V

    :cond_0
    return-void
.end method

.method public onTouchDown(FFI)Z
    .locals 1

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/x;->u:F

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/x;->v:F

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchDown(FFI)Z

    move-result v0

    return v0
.end method

.method public onTouchUp(FFI)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onTouchUp:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p3, :cond_0

    :goto_0
    return v5

    :cond_0
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->t:Z

    if-eqz v0, :cond_1

    const-string v0, "launcher"

    const-string v1, "dismiss up"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/x;->t:Z

    iget p1, p0, Lcom/iLoong/launcher/Desktop3D/x;->u:F

    iget p2, p0, Lcom/iLoong/launcher/Desktop3D/x;->v:F

    :cond_1
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->d:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->c:F

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/x;->j:F

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/x;->k:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/x;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/x;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/iLoong/launcher/Desktop3D/x;->setColor(FFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    iput-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/x;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->l:Lcom/iLoong/launcher/Desktop3D/bd;

    iput v4, p0, Lcom/iLoong/launcher/Desktop3D/x;->q:I

    goto :goto_0
.end method

.method public scroll(FFFF)Z
    .locals 11

    const/high16 v10, 0x4000

    const/high16 v4, 0x3f80

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/x;->u:F

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/x;->v:F

    add-float v1, p1, p3

    sub-float v3, p2, p4

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->c:F

    const/high16 v6, -0x4080

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->d:F

    const/high16 v6, -0x4080

    cmpl-float v0, v0, v6

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/iLoong/launcher/Desktop3D/x;->a:F

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    iget v6, v6, Lcom/iLoong/launcher/Desktop3D/ab;->x:F

    sub-float/2addr v0, v6

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->c:F

    sget v0, Lcom/iLoong/launcher/Desktop3D/x;->b:F

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    iget v6, v6, Lcom/iLoong/launcher/Desktop3D/ab;->y:F

    sub-float/2addr v0, v6

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->d:F

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/x;->c:F

    sub-float v6, v1, v6

    iget v7, p0, Lcom/iLoong/launcher/Desktop3D/x;->d:F

    sub-float v7, v3, v7

    invoke-virtual {v0, v6, v7}, Lcom/iLoong/launcher/Desktop3D/ab;->setPosition(FF)V

    invoke-virtual {p0, v1, v3}, Lcom/iLoong/launcher/Desktop3D/x;->a(FF)Lcom/iLoong/launcher/Desktop3D/bd;

    move-result-object v0

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/x;->l:Lcom/iLoong/launcher/Desktop3D/bd;

    if-eq v6, v0, :cond_2

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->l:Lcom/iLoong/launcher/Desktop3D/bd;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->l:Lcom/iLoong/launcher/Desktop3D/bd;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/x;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v6, 0x1

    invoke-virtual {v0, p0, v6}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    :cond_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/x;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v0

    instance-of v6, v0, Lcom/iLoong/launcher/Desktop3D/e;

    if-eqz v6, :cond_c

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/e;

    iget-boolean v6, v0, Lcom/iLoong/launcher/Desktop3D/e;->b:Z

    if-eqz v6, :cond_3

    iput-wide v8, p0, Lcom/iLoong/launcher/Desktop3D/x;->r:J

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->q:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-wide v8, p0, Lcom/iLoong/launcher/Desktop3D/x;->r:J

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->q:I

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->c:F

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    iget v6, v6, Lcom/iLoong/launcher/Desktop3D/ab;->width:F

    div-float/2addr v6, v10

    cmpg-float v0, v0, v6

    if-ltz v0, :cond_6

    :cond_5
    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_d

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->c:F

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    iget v6, v6, Lcom/iLoong/launcher/Desktop3D/ab;->width:F

    div-float/2addr v6, v10

    cmpl-float v0, v0, v6

    if-lez v0, :cond_d

    :cond_6
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/ab;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/x;->f:Lcom/iLoong/launcher/Desktop3D/ab;

    iget v1, v1, Lcom/iLoong/launcher/Desktop3D/ab;->width:F

    div-float/2addr v1, v10

    add-float/2addr v0, v1

    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/iLoong/launcher/Desktop3D/x;->d(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->r:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->r:J

    :cond_7
    :goto_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->s:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_9

    const/4 v1, 0x7

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->INOUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x3f00

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/x;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->r:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    goto :goto_2

    :cond_9
    iput v4, p0, Lcom/iLoong/launcher/Desktop3D/x;->s:F

    goto :goto_3

    :cond_a
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->s:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_b

    const/4 v2, 0x7

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->INOUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v4, 0x3f00

    move-object v1, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v1 .. v7}, Lcom/iLoong/launcher/Desktop3D/x;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    :goto_4
    iput-wide v8, p0, Lcom/iLoong/launcher/Desktop3D/x;->r:J

    goto :goto_3

    :cond_b
    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/x;->q:I

    goto :goto_4

    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->scroll(FFFF)Z

    move-result v0

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto :goto_1
.end method

.method public setColor(FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/x;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(FFFF)V

    goto :goto_0
.end method

.method public setUser(F)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/x;->s:F

    return-void
.end method
