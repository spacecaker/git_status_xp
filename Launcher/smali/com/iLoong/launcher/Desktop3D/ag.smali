.class Lcom/iLoong/launcher/Desktop3D/ag;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;


# instance fields
.field public a:I

.field public b:I

.field final synthetic c:Lcom/iLoong/launcher/Desktop3D/b;

.field private d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private f:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private k:F

.field private l:F

.field private m:I


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/Desktop3D/b;Ljava/lang/String;)V
    .locals 3

    const/high16 v2, 0x4000

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/ag;->c:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-direct {p0, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->m:I

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/ag;->x:F

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/ag;->y:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->width:F

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->w:I

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->height:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->height:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->originY:F

    const-string v0, "appbar-tab-app"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const-string v0, "appbar-tab-widget"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->x:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->a:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->x:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->b:I

    const-string v0, "appbar-tab-uninstall"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->f:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const v0, 0x7f0c0083

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const-string v0, "appbar-tab-hide"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->k:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->height:F

    div-float/2addr v0, v2

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->C:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->l:F

    const-string v0, "appbar-navi-back"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->az:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->c:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->c(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->c:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->c(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ak;->show()V

    :cond_0
    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/ag;->m:I

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 10

    const/16 v2, 0x302

    const/4 v0, 0x0

    const/high16 v5, 0x3fc0

    const/4 v9, 0x1

    const/high16 v8, 0x4000

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bE:Z

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getSrcBlendFunc()I

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getDstBlendFunc()I

    move-result v0

    if-ne v1, v2, :cond_0

    if-eq v0, v9, :cond_1

    :cond_0
    invoke-virtual {p1, v2, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    :cond_1
    move v6, v0

    move v7, v1

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ag;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ag;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/ag;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->B:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ag;->j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getDensity()F

    move-result v2

    mul-float/2addr v1, v2

    div-float v4, v1, v5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ag;->j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getDensity()F

    move-result v2

    mul-float/2addr v1, v2

    div-float v5, v1, v5

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->az:Z

    if-eqz v1, :cond_2

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->B:I

    div-int/lit8 v0, v0, 0x4

    :cond_2
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ag;->m:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->G:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->x:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ag;->y:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ag;->height:F

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/ag;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->c:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/aw;

    move-result-object v0

    iget-boolean v0, v0, Lcom/iLoong/launcher/Desktop3D/aw;->J:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ag;->a:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->G:I

    add-int/2addr v1, v2

    const-string v2, "appbar-divider"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->x:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ag;->y:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ag;->height:F

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/ag;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    :cond_3
    :goto_1
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bE:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1, v7, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    :cond_4
    return-void

    :cond_5
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ag;->m:I

    if-ne v1, v9, :cond_6

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ag;->j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ag;->k:F

    int-to-float v0, v0

    add-float/2addr v0, v2

    div-float v2, v4, v8

    sub-float v2, v0, v2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->l:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->C:I

    int-to-float v3, v3

    sub-float/2addr v3, v5

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->x:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->B:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ag;->y:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ag;->height:F

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/ag;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ag;->m:I

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ag;->j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ag;->k:F

    int-to-float v0, v0

    add-float/2addr v0, v2

    div-float v2, v4, v8

    sub-float v2, v0, v2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->l:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->C:I

    int-to-float v3, v3

    sub-float/2addr v3, v5

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->f:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->x:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->B:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ag;->y:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ag;->height:F

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/ag;->f:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ag;->m:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ag;->j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ag;->k:F

    int-to-float v0, v0

    add-float/2addr v0, v2

    div-float v2, v4, v8

    sub-float v2, v0, v2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->l:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->C:I

    int-to-float v3, v3

    sub-float/2addr v3, v5

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->x:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->B:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ag;->y:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ag;->height:F

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/ag;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    goto/16 :goto_1

    :cond_8
    move v6, v0

    move v7, v0

    goto/16 :goto_0
.end method

.method public onClick(FF)Z
    .locals 3

    const/4 v2, 0x2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->m:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->k:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->k:F

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->B:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->c:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/aw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/aw;->d(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchDown(FFI)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->bl:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ag;->c:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/aw;->I()V

    :cond_0
    if-nez p3, :cond_5

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ag;->m:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ag;->c:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/aw;

    move-result-object v2

    iget-boolean v2, v2, Lcom/iLoong/launcher/Desktop3D/aw;->J:Z

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ag;->a:I

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->G:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ag;->c:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v2, v2, Lcom/iLoong/launcher/Desktop3D/b;->b:Lcom/iLoong/launcher/Desktop3D/i;

    iget v2, v2, Lcom/iLoong/launcher/Desktop3D/i;->a:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ag;->c:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/b;->b(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/bb;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/iLoong/launcher/Desktop3D/bb;->a(I)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ag;->c:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v2, v2, Lcom/iLoong/launcher/Desktop3D/b;->b:Lcom/iLoong/launcher/Desktop3D/i;

    invoke-virtual {v2, v0}, Lcom/iLoong/launcher/Desktop3D/i;->a(I)V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->a:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->G:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->a:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->G:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ag;->b:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->c:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->b:Lcom/iLoong/launcher/Desktop3D/i;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/i;->a:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->c:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->b(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/bb;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bb;->a(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ag;->c:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->b:Lcom/iLoong/launcher/Desktop3D/i;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/i;->a(I)V

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onTouchDown(FFI)Z

    move-result v0

    goto :goto_0
.end method
