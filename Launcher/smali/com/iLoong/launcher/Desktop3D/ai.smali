.class public Lcom/iLoong/launcher/Desktop3D/ai;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;


# instance fields
.field public a:Lcom/iLoong/launcher/a/g;

.field public b:Z

.field public c:I

.field public d:I

.field public e:F

.field public f:F

.field public h:Z

.field protected i:Z

.field j:Lcom/iLoong/launcher/UI3DEngine/d;

.field k:Lcom/iLoong/launcher/UI3DEngine/d;

.field l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:F

.field private r:F

.field private s:Lcom/badlogic/gdx/graphics/g2d/NinePatch;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->b:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->h:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->s:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 8

    const/4 v2, 0x3

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/ai;->b:Z

    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/ai;->h:Z

    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/ai;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->s:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "resumeicon"

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/aj;->o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->f:I

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->g:I

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->j:Lcom/iLoong/launcher/UI3DEngine/d;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "hideicon"

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/aj;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->f:I

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->g:I

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->k:Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v0, "widget-shortcut-bg"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->s:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v1, "theme/pack_source/widget_holo.png"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v3, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v3, v6, v7}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;Z)V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->s:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/iLoong/launcher/Desktop3D/ai;
    .locals 5

    const/high16 v4, 0x4000

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/ai;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/ai;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->q:F

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->r:F

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/ai;->setPosition(FF)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/ai;->b:Z

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->a:Lcom/iLoong/launcher/a/g;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/ai;->a(Lcom/iLoong/launcher/a/g;)V

    return-object v0
.end method

.method public a(Lcom/iLoong/launcher/a/g;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->a:Lcom/iLoong/launcher/a/g;

    iget-object v0, p1, Lcom/iLoong/launcher/a/g;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/iLoong/launcher/a/g;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/iLoong/launcher/a/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->p:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_0

    new-instance v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v8, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->o:Ljava/lang/String;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    const/4 v6, -0x1

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/b;->a(Ljava/lang/String;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v7, p0, Lcom/iLoong/launcher/Desktop3D/ai;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/iLoong/launcher/a/g;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/iLoong/launcher/a/g;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    aput-object v1, v0, v4

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->i:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->i:Z

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 13

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->a:Lcom/iLoong/launcher/a/g;

    iget-boolean v1, v1, Lcom/iLoong/launcher/a/g;->f:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->i:Z

    if-eqz v1, :cond_2

    float-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL

    mul-double/2addr v0, v2

    double-to-float v0, v0

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/ai;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v0, p2

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    const/high16 v2, 0x3f80

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    :cond_3
    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->aQ:Z

    if-eqz v2, :cond_f

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    const/high16 v1, 0x41a0

    div-float v1, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    const/high16 v3, 0x3f80

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x41a0

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleY:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    if-eqz v2, :cond_f

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    move v6, v0

    move v7, v1

    :goto_1
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->b:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aP:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    const/high16 v5, 0x3f80

    sget v8, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v5, v8

    mul-float/2addr v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    add-float v2, v7, v0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    add-float v3, v6, v0

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originX:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Desktop3D/ai;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    const/high16 v4, 0x3f80

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originX:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Desktop3D/ai;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    const-string v0, "x"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v12

    const/high16 v0, 0x4120

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

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

    if-gez v1, :cond_e

    const/4 v0, 0x0

    move v11, v0

    :goto_5
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    const/high16 v2, 0x4040

    mul-float/2addr v0, v2

    const/high16 v2, 0x4080

    div-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    add-float/2addr v0, v2

    add-float v2, v0, v11

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    const/high16 v4, 0x3f80

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originX:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v6, 0x0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Desktop3D/ai;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    add-float/2addr v0, v1

    add-float/2addr v0, v11

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v2, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    mul-float/2addr v1, v3

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    const/high16 v3, 0x3f80

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    add-float v3, v0, v1

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originX:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originY:F

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Desktop3D/ai;->rotation:F

    move-object v0, p1

    move-object v1, v12

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    const/high16 v2, 0x4040

    mul-float/2addr v0, v2

    const/high16 v2, 0x4080

    div-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    add-float/2addr v0, v2

    add-float/2addr v0, v11

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

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

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    const/high16 v4, 0x3f80

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originX:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Desktop3D/ai;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    :cond_7
    :goto_6
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->i:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->a:Lcom/iLoong/launcher/a/g;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/g;->f:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->j:Lcom/iLoong/launcher/UI3DEngine/d;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->j:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->j:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->j:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->j:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->j:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/iLoong/launcher/UI3DEngine/d;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_8
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->a:Lcom/iLoong/launcher/a/g;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/g;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->k:Lcom/iLoong/launcher/UI3DEngine/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->k:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->k:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->k:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->k:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->k:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/iLoong/launcher/UI3DEngine/d;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    const/high16 v5, 0x3f80

    sget v8, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v5, v8

    mul-float/2addr v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->a:Lcom/iLoong/launcher/a/g;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/g;->h:Z

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originX:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Desktop3D/ai;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    :goto_7
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->s:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->a:Lcom/iLoong/launcher/a/g;

    iget v0, v0, Lcom/iLoong/launcher/a/g;->a:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->a:Lcom/iLoong/launcher/a/g;

    iget v0, v0, Lcom/iLoong/launcher/a/g;->b:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    mul-int v5, v0, v2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    int-to-float v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    int-to-float v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->s:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    int-to-float v4, v1

    int-to-float v5, v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto/16 :goto_3

    :cond_b
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originX:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originY:F

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    iget v7, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    iget v8, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Desktop3D/ai;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto :goto_7

    :cond_c
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originX:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->m:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Desktop3D/ai;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    const/high16 v2, 0x4040

    mul-float/2addr v0, v2

    const/high16 v2, 0x4080

    div-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    add-float/2addr v0, v2

    add-float v2, v0, v11

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originX:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v6, 0x0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Desktop3D/ai;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    add-float/2addr v0, v1

    add-float/2addr v0, v11

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v2, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    mul-float/2addr v1, v3

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    add-float v3, v0, v1

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originX:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originY:F

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Desktop3D/ai;->rotation:F

    move-object v0, p1

    move-object v1, v12

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    const/high16 v2, 0x4040

    mul-float/2addr v0, v2

    const/high16 v2, 0x4080

    div-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    add-float/2addr v0, v2

    add-float/2addr v0, v11

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

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

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originX:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ai;->originY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->n:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/Desktop3D/ai;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/Desktop3D/ai;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto/16 :goto_6

    :cond_e
    move v11, v0

    goto/16 :goto_5

    :cond_f
    move v6, v0

    move v7, v1

    goto/16 :goto_1
.end method

.method public onClick(FF)Z
    .locals 4

    const/4 v1, 0x1

    const-string v0, "Widget2DShortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onClick:x,y="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->a:Lcom/iLoong/launcher/a/g;

    iget-object v0, v0, Lcom/iLoong/launcher/a/g;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->a:Lcom/iLoong/launcher/a/g;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ai;->a:Lcom/iLoong/launcher/a/g;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/g;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v2, Lcom/iLoong/launcher/a/g;->f:Z

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HIDE:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/ai;->a:Lcom/iLoong/launcher/a/g;

    iget-object v3, v3, Lcom/iLoong/launcher/a/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/ai;->a:Lcom/iLoong/launcher/a/g;

    iget-boolean v3, v3, Lcom/iLoong/launcher/a/g;->f:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const v0, 0x7f0c00ad

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onLongClick(FF)Z
    .locals 5

    const/4 v0, 0x0

    const/high16 v4, 0x4000

    const-string v1, "click"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " widgetShortcut onLongClick:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/ai;->name:Ljava/lang/String;

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

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->isDragging:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/ai;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->width:F

    div-float/2addr v2, v4

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/ai;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ai;->height:F

    div-float/2addr v2, v4

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/ai;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/ai;->toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/ai;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/ai;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/ai;->setTag(Ljava/lang/Object;)V

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/ai;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/ai;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/ai;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/ai;->toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/ai;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->q:F

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/ai;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->r:F

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/ai;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sput v1, Lcom/iLoong/launcher/Desktop3D/x;->a:F

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/ai;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sput v1, Lcom/iLoong/launcher/Desktop3D/x;->b:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ai;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v1, p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public setSize(FF)V
    .locals 2

    const/high16 v1, 0x4000

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setSize(FF)V

    div-float v0, p1, v1

    div-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/ai;->setOrigin(FF)V

    return-void
.end method
