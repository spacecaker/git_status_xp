.class Lcom/iLoong/launcher/Desktop3D/i;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;


# instance fields
.field public a:I

.field final synthetic b:Lcom/iLoong/launcher/Desktop3D/b;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/Desktop3D/b;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/i;->b:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-direct {p0, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->a:I

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/i;->x:F

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/i;->y:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->width:F

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->height:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->height:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->originY:F

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 12

    const/4 v1, 0x7

    const/high16 v3, 0x3f00

    const/4 v4, 0x0

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/i;->a:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->a:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/i;->stopTween()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->b:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->e(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/an;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->b:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->e(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/an;->show()V

    :cond_0
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->az:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->b:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->c(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/ak;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->b:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->c(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ak;->show()V

    :cond_1
    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/i;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->b:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->e(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/an;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->b:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->e(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/an;->hide()V

    :cond_4
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->az:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->b:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->c(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/ak;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->b:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->c(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ak;->hide()V

    :cond_5
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/i;->stopTween()V

    sget-object v7, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->b:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->a:Lcom/iLoong/launcher/Desktop3D/ag;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/ag;->a:I

    const-string v2, "appbar-divider"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionWidth()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v9, v0

    move-object v5, p0

    move v6, v1

    move v8, v3

    move v10, v4

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/iLoong/launcher/Desktop3D/i;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 9

    const/high16 v8, 0x4080

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/i;->getUser()F

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/i;->b:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/b;->a:Lcom/iLoong/launcher/Desktop3D/ag;

    iget v1, v1, Lcom/iLoong/launcher/Desktop3D/ag;->a:I

    const-string v3, "appbar-divider"

    invoke-static {v3}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionWidth()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    div-float v6, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/i;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/i;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/i;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->b:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->d(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v0

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/i;->width:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/i;->height:F

    div-float v5, v1, v8

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->b:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/aw;

    move-result-object v0

    iget-boolean v0, v0, Lcom/iLoong/launcher/Desktop3D/aw;->J:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->b:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->d(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/i;->getUser()F

    move-result v5

    const/high16 v0, 0x3f80

    sub-float/2addr v0, v6

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/i;->b:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/b;->a:Lcom/iLoong/launcher/Desktop3D/ag;

    iget v1, v1, Lcom/iLoong/launcher/Desktop3D/ag;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/i;->b:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/b;->a:Lcom/iLoong/launcher/Desktop3D/ag;

    iget v1, v1, Lcom/iLoong/launcher/Desktop3D/ag;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    add-float v7, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/i;->height:F

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    div-float v8, v0, v8

    move-object v4, p1

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_0
    return-void
.end method
