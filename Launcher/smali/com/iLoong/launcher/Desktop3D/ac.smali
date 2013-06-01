.class Lcom/iLoong/launcher/Desktop3D/ac;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/b;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/Desktop3D/b;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/ac;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-direct {p0, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x96

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->b:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->c:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->E:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->b:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->D:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->c:I

    const-string v0, "app-uninstall-button"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    const v1, 0x7f0c0081

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/ac;->a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Ljava/lang/String;)V

    const-string v0, "app-hide-button"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    const v1, 0x7f0c0084

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/ac;->a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Ljava/lang/String;)V

    const-string v0, "app-sort-button"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    const v1, 0x7f0c0085

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/ac;->a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Ljava/lang/String;)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->b:I

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->width:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ac;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ac;->c:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->height:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ac;->width:F

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->A:I

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->x:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ac;->height:F

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->w:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->y:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->width:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->originX:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->height:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->originY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->transform:Z

    return-void
.end method

.method private a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Ljava/lang/String;)V
    .locals 8

    const/high16 v7, 0x4000

    const/high16 v6, 0x3fc0

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const-string v1, "popitem"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ac;->getChildCount()I

    move-result v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ac;->c:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    const/4 v1, 0x0

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ac;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ac;->c:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setSize(FF)V

    new-instance v1, Lcom/iLoong/launcher/UI3DEngine/View3D;

    const-string v2, "itemicon"

    invoke-direct {v1, v2, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->F:I

    int-to-float v2, v2

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ac;->c:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getDensity()F

    move-result v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getDensity()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getDensity()F

    move-result v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setSize(FF)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-static {p2}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    new-instance v3, Lcom/iLoong/launcher/UI3DEngine/View3D;

    const-string v4, "itemtitle"

    invoke-direct {v3, v4, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->F:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ac;->c:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v4, v3, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v4, v7

    sub-float/2addr v2, v4

    invoke-virtual {v3, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ac;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->visible:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->touchable:Z

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 8

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ac;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ac;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/ac;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/b;->f:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    int-to-float v0, v6

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ac;->height:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ac;->scaleY:F

    mul-float/2addr v1, v2

    int-to-float v2, v7

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void

    :cond_0
    sget-object v1, Lcom/iLoong/launcher/Desktop3D/b;->f:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->x:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ac;->width:F

    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ac;->scaleX:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->y:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ac;->height:F

    add-float/2addr v0, v3

    add-int/lit8 v3, v6, 0x1

    mul-int/2addr v3, v7

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->width:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ac;->scaleX:F

    mul-float/2addr v4, v0

    int-to-float v5, v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method public hide()V
    .locals 12

    const v3, 0x3e4ccccd

    const/high16 v2, 0x3f80

    const/4 v4, 0x0

    const-string v0, "launcher"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ac;->releaseFocus()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->touchable:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ac;->stopTween()V

    invoke-virtual {p0, v2, v2}, Lcom/iLoong/launcher/Desktop3D/ac;->setScale(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/ac;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ac;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    const/4 v6, 0x5

    sget-object v7, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v9, 0x3f00

    move-object v5, p0

    move v8, v3

    move v10, v4

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/iLoong/launcher/Desktop3D/ac;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    return-void
.end method

.method public onClick(FF)Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->c:I

    int-to-float v0, v0

    div-float v0, p2, v0

    float-to-int v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/aw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->d(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ac;->hide()V

    return v2

    :cond_1
    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/aw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/aw;->d(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/aw;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowSortDialogMsg(I)V

    goto :goto_0
.end method

.method public onTouchUp(FFI)Z
    .locals 2

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "launcher"

    const-string v1, "popmenu:onTouchUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ac;->hide()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public show()V
    .locals 7

    const v3, 0x3e4ccccd

    const/high16 v4, 0x3f80

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->show()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ac;->requestFocus()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ac;->stopTween()V

    invoke-virtual {p0, v6, v6}, Lcom/iLoong/launcher/Desktop3D/ac;->setScale(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ac;->color:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f00

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/ac;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    const/4 v1, 0x5

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move-object v0, p0

    move v5, v6

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/ac;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    return-void
.end method
