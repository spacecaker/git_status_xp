.class public Lcom/iLoong/launcher/Desktop3D/y;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;

# interfaces
.implements Lcom/iLoong/launcher/Desktop3D/bd;


# static fields
.field public static a:Z


# instance fields
.field public b:Z

.field private c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private f:Laurelienribon/tweenengine/Tween;

.field private h:Laurelienribon/tweenengine/Tween;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/y;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    const-string v0, "trashicon"

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->b:Z

    const-string v0, "xiezai-bg"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const-string v0, "xiezai-bg2"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aT:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getIconBmpHeight()F

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/y;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/y;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v2

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/y;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/y;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/y;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/y;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v2

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/y;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/y;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    :cond_0
    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v0, :cond_1

    const-string v0, "trash-background"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-nez v0, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->ap:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/y;->setSize(FF)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v5, v0}, Lcom/iLoong/launcher/Desktop3D/y;->setPosition(FF)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->width:F

    div-float/2addr v0, v4

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->originX:F

    :goto_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->height:F

    div-float/2addr v0, v4

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->originY:F

    return-void

    :cond_2
    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    invoke-virtual {p0, v0, v5}, Lcom/iLoong/launcher/Desktop3D/y;->setPosition(FF)V

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v0, v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/y;->setSize(FF)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->width:F

    div-float/2addr v0, v4

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->originX:F

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->aE:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bW:I

    mul-int/2addr v1, v0

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0, v5}, Lcom/iLoong/launcher/Desktop3D/y;->setPosition(FF)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->aE:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->originX:F

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->ao:I

    int-to-float v0, v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/y;->setSize(FF)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->b:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;FF)Z
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "ondrop"

    const-string v1, "list size <= 0!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/y;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/u;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v1}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/a/j;)V

    :cond_2
    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->remove()V

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/cb;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_1
.end method

.method public b(Ljava/util/ArrayList;FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/y;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/y;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v2, v6

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bT:I

    add-int/2addr v0, v7

    int-to-float v3, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/y;->height:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/y;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/y;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/y;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/y;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v2, v6

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bT:I

    add-int/2addr v0, v7

    int-to-float v3, v0

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/y;->originX:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/y;->originY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Desktop3D/y;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Desktop3D/y;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Desktop3D/y;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/y;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/y;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    sub-int v0, v6, v0

    int-to-float v2, v0

    int-to-float v3, v7

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/y;->width:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/y;->height:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_0
.end method

.method public hide()V
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->hide()V

    :goto_0
    sput-boolean v7, Lcom/iLoong/launcher/Desktop3D/y;->a:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/y;->stopTween()V

    const/4 v1, 0x7

    sget-object v2, Laurelienribon/tweenengine/equations/Elastic;->OUT:Laurelienribon/tweenengine/equations/Elastic;

    const/high16 v3, 0x3f80

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3f19999a

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    move v1, v7

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->f:Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v1, 0x8

    const/4 v5, 0x0

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->f:Laurelienribon/tweenengine/Tween;

    if-ne p2, v0, :cond_1

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->hide()V

    iput-object v7, p0, Lcom/iLoong/launcher/Desktop3D/y;->f:Laurelienribon/tweenengine/Tween;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/y;->a:Z

    return-void

    :cond_1
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->h:Laurelienribon/tweenengine/Tween;

    if-ne p2, v0, :cond_0

    const/4 v1, 0x7

    sget-object v2, Laurelienribon/tweenengine/equations/Elastic;->OUT:Laurelienribon/tweenengine/equations/Elastic;

    const v3, 0x3f4ccccd

    const/high16 v4, 0x42c8

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    iput-object v7, p0, Lcom/iLoong/launcher/Desktop3D/y;->h:Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method public show()V
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->f:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->f:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->free()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->f:Laurelienribon/tweenengine/Tween;

    :cond_0
    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-nez v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/iLoong/launcher/Desktop3D/y;->setUser(F)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/y;->stopTween()V

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3f19999a

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/y;->height:F

    sub-float v5, v0, v5

    move-object v0, p0

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/y;->h:Laurelienribon/tweenengine/Tween;

    :cond_1
    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/y;->a:Z

    return-void
.end method
