.class Lcom/iLoong/launcher/Desktop3D/ak;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/b;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/Desktop3D/b;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/ak;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-direct {p0, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/cb;->a()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "app-home-button"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ak;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ak;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ak;->width:F

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->w:I

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ak;->height:F

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aH:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ak;->width:F

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->A:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ak;->x:F

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ak;->y:F

    return-void

    :cond_0
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->N:Z

    if-eqz v0, :cond_1

    const-string v0, "app-menu-bag"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ak;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto :goto_0

    :cond_1
    const-string v0, "app-menu-downarray"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ak;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->M:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ak;->width:F

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->A:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ak;->x:F

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->A:I

    sub-int/2addr v0, v1

    const-string v1, "app-menu-button"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->z:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ak;->width:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ak;->x:F

    goto :goto_1
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ak;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ak;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ak;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/ak;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ak;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ak;->x:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ak;->y:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ak;->height:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/ak;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ak;->width:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ak;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public onClick(FF)Z
    .locals 3

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->az:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ak;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/aw;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->d(I)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ak;->hide()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ak;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/aw;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->d(I)V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/cb;->b()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ak;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ak;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/aw;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    goto :goto_0
.end method
