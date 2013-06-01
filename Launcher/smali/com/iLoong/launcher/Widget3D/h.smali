.class public Lcom/iLoong/launcher/Widget3D/h;
.super Lcom/iLoong/launcher/Desktop3D/ch;


# instance fields
.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Landroid/graphics/Bitmap;

.field private O:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private Q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private R:Ljava/lang/String;

.field public a:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/Desktop3D/ch;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/h;->a:Z

    iput-object p2, p0, Lcom/iLoong/launcher/Widget3D/h;->N:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->N:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/h;->N:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->bmp2Pixmap(Landroid/graphics/Bitmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->Q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 13

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-boolean v1, p0, Lcom/iLoong/launcher/Widget3D/h;->m:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/iLoong/launcher/Widget3D/h;->j:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/iLoong/launcher/Widget3D/h;->l:Z

    if-eqz v1, :cond_1

    :cond_0
    float-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL

    mul-double/2addr v0, v2

    double-to-float v0, v0

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/h;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/h;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/h;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v0, p2

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->bE:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getSrcBlendFunc()I

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getDstBlendFunc()I

    move-result v0

    const/16 v2, 0x302

    if-ne v1, v2, :cond_2

    const/16 v2, 0x303

    if-eq v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-virtual {p1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    :cond_3
    move v11, v0

    move v12, v1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->Q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_6

    const-string v0, "widget-shortcut-bg"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aP:Z

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/h;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    const/high16 v5, 0x3f80

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->Q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    if-ge v0, v1, :cond_1c

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    move v6, v0

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->Q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    if-ge v0, v1, :cond_1b

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    move v7, v0

    :goto_2
    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    div-int/lit8 v1, v6, 0x2

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    const/high16 v2, 0x3f80

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    div-int/lit8 v2, v7, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    :cond_5
    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->aQ:Z

    if-eqz v2, :cond_1a

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v1, 0x41a0

    div-float v1, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    const/high16 v3, 0x3f80

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x41a0

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    int-to-float v2, v7

    sub-float/2addr v0, v2

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    if-eqz v2, :cond_1a

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    move v8, v0

    move v9, v1

    :goto_3
    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/h;->Q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    add-float v2, v9, v0

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    add-float v3, v8, v0

    int-to-float v4, v6

    int-to-float v5, v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/h;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/h;->Q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    add-float v2, v9, v0

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    add-float v3, v8, v0

    int-to-float v4, v6

    int-to-float v5, v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_6
    :goto_4
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bE:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1, v12, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    :cond_7
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->O:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/h;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->O:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    const/high16 v4, 0x3f80

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/h;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "x"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    const/high16 v0, 0x4120

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v3, 0x4080

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float v0, v2, v0

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_9

    const/4 v0, 0x0

    :cond_9
    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    const/high16 v4, 0x4080

    div-float/2addr v3, v4

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    add-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v6, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    const/high16 v6, 0x3f80

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v3, 0x4040

    mul-float/2addr v2, v3

    const/high16 v3, 0x4080

    div-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v5, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    mul-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    const/high16 v5, 0x3f80

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    const/high16 v4, 0x4080

    div-float/2addr v3, v4

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    const/high16 v4, 0x3f80

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    invoke-virtual {p1, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/h;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/h;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/h;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    add-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Widget3D/h;->u:I

    int-to-float v1, v1

    sub-float v2, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    add-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Widget3D/h;->v:I

    int-to-float v1, v1

    sub-float v3, v0, v1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/h;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/h;->l:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/h;->m:Z

    if-eqz v0, :cond_b

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/aj;->o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v0, Lcom/iLoong/launcher/Widget3D/h;->u:I

    int-to-float v4, v0

    sget v0, Lcom/iLoong/launcher/Widget3D/h;->v:I

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_b
    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/h;->l:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/h;->m:Z

    if-nez v0, :cond_c

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/aj;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v0, Lcom/iLoong/launcher/Widget3D/h;->u:I

    int-to-float v4, v0

    sget v0, Lcom/iLoong/launcher/Widget3D/h;->v:I

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_c
    :goto_7
    return-void

    :cond_d
    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->originX:F

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->originY:F

    iget v5, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    mul-float/2addr v5, v6

    sub-float v5, v0, v5

    iget v6, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    const/high16 v7, 0x3f80

    sget v8, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Widget3D/h;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/h;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    const/high16 v5, 0x3f80

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto/16 :goto_0

    :cond_f
    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->originX:F

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->originY:F

    iget v5, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    mul-float/2addr v5, v6

    sub-float v5, v0, v5

    iget v6, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    const/high16 v7, 0x3f80

    sget v8, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Widget3D/h;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/h;->Q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    add-float v2, v9, v0

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    add-float v3, v8, v0

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->originX:F

    sub-float v4, v0, v9

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->originY:F

    sub-float v5, v0, v8

    int-to-float v6, v6

    int-to-float v7, v7

    iget v8, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Widget3D/h;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto/16 :goto_4

    :cond_11
    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/h;->O:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    const/high16 v4, 0x3f80

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->originX:F

    iget v5, p0, Lcom/iLoong/launcher/Widget3D/h;->originY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->O:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->O:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Widget3D/h;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto/16 :goto_5

    :cond_12
    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/h;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->O:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    goto/16 :goto_5

    :cond_13
    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/h;->O:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->originX:F

    iget v5, p0, Lcom/iLoong/launcher/Widget3D/h;->originY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->O:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->O:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Widget3D/h;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto/16 :goto_5

    :cond_14
    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    const/high16 v4, 0x4080

    div-float/2addr v3, v4

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    add-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v6, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v3, 0x4040

    mul-float/2addr v2, v3

    const/high16 v3, 0x4080

    div-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v5, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    mul-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    const/high16 v4, 0x4080

    div-float/2addr v3, v4

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    invoke-virtual {p1, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    goto/16 :goto_6

    :cond_15
    const-string v0, "x"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v12

    const/high16 v0, 0x4120

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float v0, v1, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_19

    const/4 v0, 0x0

    move v11, v0

    :goto_8
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v2, 0x4040

    mul-float/2addr v0, v2

    const/high16 v2, 0x4080

    div-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    add-float/2addr v0, v2

    add-float v2, v0, v11

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    const/high16 v4, 0x3f80

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->originX:F

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v5, 0x4040

    mul-float/2addr v4, v5

    const/high16 v5, 0x4080

    div-float/2addr v4, v5

    sub-float v4, v0, v4

    iget v5, p0, Lcom/iLoong/launcher/Widget3D/h;->originY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v6, 0x0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Widget3D/h;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    add-float/2addr v0, v1

    add-float/2addr v0, v11

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v2, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    mul-float/2addr v1, v3

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    const/high16 v3, 0x3f80

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    add-float v3, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->originX:F

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v4, 0x4040

    mul-float/2addr v1, v4

    const/high16 v4, 0x4080

    div-float/2addr v1, v4

    sub-float v4, v0, v1

    iget v5, p0, Lcom/iLoong/launcher/Widget3D/h;->originY:F

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Widget3D/h;->rotation:F

    move-object v0, p1

    move-object v1, v12

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v2, 0x4040

    mul-float/2addr v0, v2

    const/high16 v2, 0x4080

    div-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    add-float/2addr v0, v2

    add-float/2addr v0, v11

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    const/high16 v4, 0x3f80

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->originX:F

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v5, 0x4040

    mul-float/2addr v4, v5

    const/high16 v5, 0x4080

    div-float/2addr v4, v5

    sub-float v4, v0, v4

    iget v5, p0, Lcom/iLoong/launcher/Widget3D/h;->originY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Widget3D/h;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto/16 :goto_6

    :cond_16
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v2, 0x4040

    mul-float/2addr v0, v2

    const/high16 v2, 0x4080

    div-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    add-float/2addr v0, v2

    add-float v2, v0, v11

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->originX:F

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v5, 0x4040

    mul-float/2addr v4, v5

    const/high16 v5, 0x4080

    div-float/2addr v4, v5

    sub-float v4, v0, v4

    iget v5, p0, Lcom/iLoong/launcher/Widget3D/h;->originY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v6, 0x0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Widget3D/h;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    add-float/2addr v0, v1

    add-float/2addr v0, v11

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v2, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    mul-float/2addr v1, v3

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    add-float v3, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->originX:F

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v4, 0x4040

    mul-float/2addr v1, v4

    const/high16 v4, 0x4080

    div-float/2addr v1, v4

    sub-float v4, v0, v1

    iget v5, p0, Lcom/iLoong/launcher/Widget3D/h;->originY:F

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Widget3D/h;->rotation:F

    move-object v0, p1

    move-object v1, v12

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v2, 0x4040

    mul-float/2addr v0, v2

    const/high16 v2, 0x4080

    div-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/h;->x:F

    add-float/2addr v0, v2

    add-float/2addr v0, v11

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->y:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->originX:F

    iget v4, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v5, 0x4040

    mul-float/2addr v4, v5

    const/high16 v5, 0x4080

    div-float/2addr v4, v5

    sub-float v4, v0, v4

    iget v5, p0, Lcom/iLoong/launcher/Widget3D/h;->originY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Widget3D/h;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto/16 :goto_6

    :cond_17
    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->originX:F

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Widget3D/h;->u:I

    int-to-float v1, v1

    add-float v4, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/h;->originY:F

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Widget3D/h;->v:I

    int-to-float v1, v1

    add-float v5, v0, v1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/h;->l:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/h;->m:Z

    if-eqz v0, :cond_18

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/aj;->o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v0, Lcom/iLoong/launcher/Widget3D/h;->u:I

    int-to-float v6, v0

    sget v0, Lcom/iLoong/launcher/Widget3D/h;->v:I

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Widget3D/h;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    :cond_18
    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/h;->l:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/h;->m:Z

    if-nez v0, :cond_c

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/aj;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v0, Lcom/iLoong/launcher/Widget3D/h;->u:I

    int-to-float v6, v0

    sget v0, Lcom/iLoong/launcher/Widget3D/h;->v:I

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Widget3D/h;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Widget3D/h;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto/16 :goto_7

    :cond_19
    move v11, v0

    goto/16 :goto_8

    :cond_1a
    move v8, v0

    move v9, v1

    goto/16 :goto_3

    :cond_1b
    move v7, v0

    goto/16 :goto_2

    :cond_1c
    move v6, v0

    goto/16 :goto_1
.end method

.method public onClick(FF)Z
    .locals 5

    const/4 v1, 0x1

    const-string v0, "click"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "View3D onClick:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/h;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/h;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/f;

    iget-boolean v2, p0, Lcom/iLoong/launcher/Widget3D/h;->j:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/iLoong/launcher/Widget3D/h;->l:Z

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/h;->m:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/h;->m:Z

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HIDE:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/iLoong/launcher/Widget3D/h;->m:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-static {v0, v1}, Lcom/iLoong/launcher/Widget3D/m;->a(Lcom/iLoong/launcher/a/f;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public onDoubleClick(FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLongClick(FF)Z
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/h;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/h;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/h;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/f;

    iget-object v2, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0c0089

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/ch;->onLongClick(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public s()V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->O:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->Q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/h;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/iLoong/launcher/a/f;

    iget-object v0, v7, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->R:Ljava/lang/String;

    iget-object v0, v7, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->L:Ljava/lang/String;

    const-string v1, "clock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->L:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->L:Ljava/lang/String;

    const-string v1, "memo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->L:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->L:Ljava/lang/String;

    const-string v1, "robot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->L:Ljava/lang/String;

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/iLoong/launcher/a/f;->w:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Lcom/iLoong/launcher/a/f;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->M:Ljava/lang/String;

    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v9, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->L:Ljava/lang/String;

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/h;->width:F

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v5, p0, Lcom/iLoong/launcher/Widget3D/h;->height:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    const/4 v6, -0x1

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/b;->a(Ljava/lang/String;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v8, p0, Lcom/iLoong/launcher/Widget3D/h;->O:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/iLoong/launcher/a/f;->w:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/h;->P:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/iLoong/launcher/a/f;->x:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    aput-object v1, v0, v4

    :cond_4
    return-void
.end method

.method public setSize(FF)V
    .locals 2

    const/high16 v1, 0x4000

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/ch;->setSize(FF)V

    div-float v0, p1, v1

    div-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Widget3D/h;->setOrigin(FF)V

    return-void
.end method

.method public t()V
    .locals 4

    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/h;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/f;

    iget-object v0, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HIDE:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
