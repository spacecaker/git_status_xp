.class Lcom/iLoong/launcher/Desktop3D/an;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/b;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/Desktop3D/b;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/an;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-direct {p0, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    const-string v0, "app-menu-button"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/an;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/an;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/an;->width:F

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->w:I

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/an;->height:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/an;->width:F

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->A:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/an;->x:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/an;->y:F

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/an;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/an;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/an;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/an;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/an;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/an;->x:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/an;->y:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/an;->height:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/an;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/an;->width:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/an;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public onClick(FF)Z
    .locals 2

    const-string v0, "launcher"

    const-string v1, "menu:onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/an;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/an;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aw;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/an;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/aw;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/an;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ac;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/an;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ac;->hide()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/an;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ac;->show()V

    goto :goto_0
.end method
