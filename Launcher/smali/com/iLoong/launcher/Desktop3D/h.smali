.class Lcom/iLoong/launcher/Desktop3D/h;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;


# instance fields
.field public a:F

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field final synthetic f:Lcom/iLoong/launcher/Desktop3D/af;

.field private h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private j:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field private k:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private l:Laurelienribon/tweenengine/Tween;

.field private m:Laurelienribon/tweenengine/Tween;

.field private n:F


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/Desktop3D/af;Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x9

    const/4 v0, 0x0

    const/4 v2, 0x6

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/h;->f:Lcom/iLoong/launcher/Desktop3D/af;

    invoke-direct {p0, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->j:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->cb:I

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->cd:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->b:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->ce:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->cf:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->d:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->cg:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->n:F

    const-string v0, "page_indicator_width"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    const-string v3, "page_indicator_height"

    invoke-static {v3}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v0, v3}, Lcom/iLoong/launcher/Desktop3D/h;->setSize(FF)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/h;->width:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x4000

    div-float/2addr v0, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->N:I

    int-to-float v3, v3

    iget v4, p1, Lcom/iLoong/launcher/Desktop3D/af;->y:F

    add-float/2addr v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/iLoong/launcher/Desktop3D/h;->setPosition(FF)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->d:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->j:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v3, "theme/pack_source/default_indicator_current.png"

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v3, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v3, v6, v1}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;Z)V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->j:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "page_indicator_width"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v2, "theme/pack_source/default_indicator_current_s2.png"

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v2, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;Z)V

    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v3, p0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-boolean v2, Lcom/iLoong/launcher/desktop/iLoongLauncher;->m:Z

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    new-array v0, v6, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->k:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "theme/pack_source/indicator_num_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v3, v2, v1}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;Z)V

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/h;->k:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v5, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    aput-object v5, v4, v0

    sget-boolean v3, Lcom/iLoong/launcher/desktop/iLoongLauncher;->m:Z

    if-nez v3, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_6

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v2, "theme/pack_source/default_indicator.png"

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v2, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;Z)V

    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v3, p0, Lcom/iLoong/launcher/Desktop3D/h;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-boolean v2, Lcom/iLoong/launcher/desktop/iLoongLauncher;->m:Z

    if-nez v2, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v2, "theme/pack_source/default_indicator_current.png"

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v2, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v1, p0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-boolean v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->m:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1
.end method


# virtual methods
.method public a()V
    .locals 7

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    iput v4, p0, Lcom/iLoong/launcher/Desktop3D/h;->n:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/h;->stopTween()V

    const-string v0, "IndicatorView"

    const-string v1, "TweenStart show"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    sget-object v2, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    move-object v0, p0

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/h;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->l:Laurelienribon/tweenengine/Tween;

    return-void
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/h;->n:F

    return-void
.end method

.method public a(Laurelienribon/tweenengine/Tween;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/h;->m:Laurelienribon/tweenengine/Tween;

    return-void
.end method

.method public b()Laurelienribon/tweenengine/Tween;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->m:Laurelienribon/tweenengine/Tween;

    return-object v0
.end method

.method public c()V
    .locals 7

    const/4 v4, 0x0

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->n:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->m:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->m:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->m:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->free()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->m:Laurelienribon/tweenengine/Tween;

    :cond_0
    const/4 v1, 0x7

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/af;->w()F

    move-result v3

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/h;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->m:Laurelienribon/tweenengine/Tween;

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Desktop3D/h;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->f:Lcom/iLoong/launcher/Desktop3D/af;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/af;->h()I

    move-result v19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    move/from16 v0, v19

    int-to-float v3, v0

    mul-float/2addr v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->f:Lcom/iLoong/launcher/Desktop3D/af;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/af;->i()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->f:Lcom/iLoong/launcher/Desktop3D/af;

    iget v0, v2, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    move/from16 v20, v0

    const/4 v2, 0x0

    cmpl-float v2, v20, v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/4 v4, 0x0

    cmpl-float v4, v20, v4

    if-nez v4, :cond_2

    move v14, v15

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->width:F

    sub-float v3, v4, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v21, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->d:I

    packed-switch v2, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->b:I

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->height:F

    sub-float/2addr v3, v7

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v5, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->height:F

    sub-float/2addr v3, v13

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v11, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float v22, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->b:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float v23, v2, v3

    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v19

    if-lt v0, v1, :cond_15

    :cond_0
    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    :cond_1
    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_2
    const/high16 v4, 0x3f80

    cmpl-float v4, v20, v4

    if-nez v4, :cond_4

    if-nez v15, :cond_3

    add-int/lit8 v2, v19, -0x1

    :goto_4
    move v14, v2

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v2, v15, -0x1

    goto :goto_4

    :cond_4
    const/high16 v4, -0x4080

    cmpl-float v4, v20, v4

    if-nez v4, :cond_6

    add-int/lit8 v2, v19, -0x1

    if-ne v15, v2, :cond_5

    const/4 v2, 0x0

    :goto_5
    move v14, v2

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v2, v15, 0x1

    goto :goto_5

    :cond_6
    if-nez v15, :cond_7

    const/4 v4, 0x0

    cmpl-float v4, v20, v4

    if-lez v4, :cond_7

    add-int/lit8 v2, v19, -0x1

    move v14, v2

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v4, v19, -0x1

    if-ne v15, v4, :cond_8

    const/4 v4, 0x0

    cmpg-float v4, v20, v4

    if-gez v4, :cond_8

    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_1

    :cond_8
    move/from16 v0, v20

    float-to-double v4, v0

    const-wide/high16 v6, 0x3ff0

    int-to-double v8, v2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v2, v4

    sub-int v2, v15, v2

    move v14, v2

    goto/16 :goto_1

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->e:I

    int-to-float v2, v2

    move/from16 v0, v19

    int-to-float v3, v0

    div-float v3, v2, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->width:F

    sub-float v2, v4, v2

    const/high16 v4, 0x4000

    div-float/2addr v2, v4

    add-float v8, v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v7, v2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    neg-float v2, v2

    mul-float v10, v2, v20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->n:F

    mul-float v2, v2, v18

    move-object/from16 v0, v17

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->f:Lcom/iLoong/launcher/Desktop3D/af;

    iget-boolean v2, v2, Lcom/iLoong/launcher/Desktop3D/af;->p:Z

    if-nez v2, :cond_0

    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v10

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v2, v4

    add-float v4, v8, v2

    float-to-int v2, v9

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    add-float v6, v2, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->width:F

    sub-float/2addr v2, v8

    add-float v4, v2, v10

    float-to-int v2, v9

    int-to-float v5, v2

    neg-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto/16 :goto_3

    :cond_9
    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v8

    add-float/2addr v2, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->width:F

    sub-float/2addr v3, v8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v8

    add-float v4, v2, v10

    float-to-int v2, v9

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    sub-float v6, v2, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    float-to-int v2, v9

    int-to-float v5, v2

    move-object/from16 v2, p1

    move v4, v8

    move v6, v10

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v8

    add-float v4, v2, v10

    float-to-int v2, v9

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto/16 :goto_3

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->j:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->height:F

    sub-float/2addr v3, v7

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v11, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->height:F

    sub-float/2addr v3, v7

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v5, v2, v3

    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_6
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->f:Lcom/iLoong/launcher/Desktop3D/af;

    iget-boolean v2, v2, Lcom/iLoong/launcher/Desktop3D/af;->p:Z

    if-nez v2, :cond_d

    move/from16 v0, v16

    if-ne v0, v15, :cond_b

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, v17

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    float-to-double v2, v2

    const-wide/high16 v8, 0x3ff0

    move/from16 v0, v20

    float-to-double v12, v0

    const-wide/high16 v22, 0x3fe0

    mul-double v12, v12, v22

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    sub-double/2addr v8, v12

    mul-double/2addr v2, v8

    double-to-float v2, v2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    sub-float/2addr v2, v6

    const/high16 v3, 0x4000

    div-float v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->j:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v4, v8

    add-float v4, v4, v21

    add-float/2addr v4, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :goto_7
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_6

    :cond_b
    move/from16 v0, v16

    if-ne v0, v14, :cond_c

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, v17

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    float-to-double v2, v2

    move/from16 v0, v20

    float-to-double v8, v0

    const-wide/high16 v12, 0x3fe0

    mul-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide/high16 v12, 0x3fe0

    add-double/2addr v8, v12

    mul-double/2addr v2, v8

    double-to-float v2, v2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v2, v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    sub-float/2addr v2, v6

    const/high16 v3, 0x4000

    div-float v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->j:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v4, v8

    add-float v4, v4, v21

    add-float/2addr v4, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_7

    :cond_c
    const/high16 v2, 0x3f00

    mul-float v2, v2, v18

    move-object/from16 v0, v17

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iLoong/launcher/Desktop3D/h;->j:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move/from16 v0, v16

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v3, v4

    add-float v3, v3, v21

    add-float v10, v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v12, v2

    move-object/from16 v9, p1

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto/16 :goto_7

    :cond_d
    const/high16 v2, 0x3f00

    mul-float v2, v2, v18

    move-object/from16 v0, v17

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iLoong/launcher/Desktop3D/h;->j:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move/from16 v0, v16

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v3, v4

    add-float v3, v3, v21

    add-float v10, v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v12, v2

    move-object/from16 v9, p1

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto/16 :goto_7

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->b:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->height:F

    sub-float/2addr v3, v11

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v12, v2, v3

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-boolean v4, Lcom/iLoong/launcher/Desktop3D/cb;->bE:Z

    if-eqz v4, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getSrcBlendFunc()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getDstBlendFunc()I

    move-result v2

    const/16 v4, 0x302

    if-ne v3, v4, :cond_e

    const/16 v4, 0x303

    if-eq v2, v4, :cond_f

    :cond_e
    const/16 v4, 0x302

    const/16 v5, 0x303

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    :cond_f
    move v8, v2

    move v9, v3

    const/4 v2, 0x0

    move v10, v2

    :goto_8
    move/from16 v0, v19

    if-lt v10, v0, :cond_11

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->bE:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x302

    if-ne v9, v2, :cond_10

    const/16 v2, 0x303

    if-eq v8, v2, :cond_0

    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->f:Lcom/iLoong/launcher/Desktop3D/af;

    iget-boolean v2, v2, Lcom/iLoong/launcher/Desktop3D/af;->p:Z

    if-nez v2, :cond_14

    if-ne v10, v15, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->b:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    sub-float/2addr v2, v6

    const/high16 v3, 0x4000

    div-float v13, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->height:F

    sub-float/2addr v3, v6

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v5, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v2, v10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v2, v4

    add-float v2, v2, v21

    add-float v4, v2, v13

    move-object/from16 v2, p1

    move v7, v6

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->k:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v3, v2, v10

    int-to-float v2, v10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v2, v4

    add-float v2, v2, v21

    add-float/2addr v2, v13

    const/high16 v4, 0x40a0

    div-float v4, v6, v4

    add-float/2addr v4, v2

    const/high16 v2, 0x40a0

    div-float v2, v6, v2

    add-float/2addr v5, v2

    const/high16 v2, 0x4040

    mul-float/2addr v2, v6

    const/high16 v7, 0x40a0

    div-float v13, v2, v7

    const/high16 v2, 0x4040

    mul-float/2addr v2, v6

    const/high16 v6, 0x40a0

    div-float v7, v2, v6

    move-object/from16 v2, p1

    move v6, v13

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :goto_9
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_8

    :cond_12
    if-ne v10, v14, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v2, v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->b:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    sub-float/2addr v2, v6

    const/high16 v3, 0x4000

    div-float v13, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->height:F

    sub-float/2addr v3, v6

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v5, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v2, v10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v2, v4

    add-float v2, v2, v21

    add-float v4, v2, v13

    move-object/from16 v2, p1

    move v7, v6

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->k:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v3, v2, v10

    int-to-float v2, v10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v2, v4

    add-float v2, v2, v21

    add-float/2addr v2, v13

    const/high16 v4, 0x40a0

    div-float v4, v6, v4

    add-float/2addr v4, v2

    const/high16 v2, 0x40a0

    div-float v2, v6, v2

    add-float/2addr v5, v2

    const/high16 v2, 0x4040

    mul-float/2addr v2, v6

    const/high16 v7, 0x40a0

    div-float v13, v2, v7

    const/high16 v2, 0x4040

    mul-float/2addr v2, v6

    const/high16 v6, 0x40a0

    div-float v7, v2, v6

    move-object/from16 v2, p1

    move v6, v13

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_9

    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v4, v5

    add-float v4, v4, v21

    add-float/2addr v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    move v5, v12

    move v7, v11

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto/16 :goto_9

    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v4, v5

    add-float v4, v4, v21

    add-float/2addr v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    move v5, v12

    move v7, v11

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto/16 :goto_9

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->f:Lcom/iLoong/launcher/Desktop3D/af;

    iget-boolean v2, v2, Lcom/iLoong/launcher/Desktop3D/af;->p:Z

    if-nez v2, :cond_19

    move/from16 v0, v16

    if-ne v0, v15, :cond_17

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, v17

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, v17

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v2, v4

    add-float v2, v2, v21

    add-float v4, v2, v22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->c:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    move/from16 v0, v16

    if-ne v0, v15, :cond_1a

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, v17

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v3, 0x3f80

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    move-object/from16 v0, v17

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->f:Lcom/iLoong/launcher/Desktop3D/af;

    iget-boolean v2, v2, Lcom/iLoong/launcher/Desktop3D/af;->p:Z

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v2, v3

    add-float v2, v2, v21

    add-float v10, v2, v23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->b:I

    int-to-float v12, v2

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_16
    :goto_b
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto/16 :goto_2

    :cond_17
    move/from16 v0, v16

    if-ne v0, v14, :cond_18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, v17

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v3, 0x3f80

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    move-object/from16 v0, v17

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_a

    :cond_18
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_a

    :cond_19
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_a

    :cond_1a
    move/from16 v0, v16

    if-ne v0, v14, :cond_16

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, v17

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, v17

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->f:Lcom/iLoong/launcher/Desktop3D/af;

    iget-boolean v2, v2, Lcom/iLoong/launcher/Desktop3D/af;->p:Z

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iLoong/launcher/Desktop3D/h;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/h;->a:F

    mul-float/2addr v2, v3

    add-float v2, v2, v21

    add-float v10, v2, v23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/h;->b:I

    int-to-float v12, v2

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto/16 :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getUser()F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->n:F

    return v0
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->l:Laurelienribon/tweenengine/Tween;

    if-ne p2, v0, :cond_1

    iput-object v2, p0, Lcom/iLoong/launcher/Desktop3D/h;->l:Laurelienribon/tweenengine/Tween;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->color:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f80

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/h;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->m:Laurelienribon/tweenengine/Tween;

    if-ne p2, v0, :cond_0

    iput-object v2, p0, Lcom/iLoong/launcher/Desktop3D/h;->m:Laurelienribon/tweenengine/Tween;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->n:F

    goto :goto_0
.end method

.method public setUser(F)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/h;->n:F

    return-void
.end method

.method public show()V
    .locals 7

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    iput v4, p0, Lcom/iLoong/launcher/Desktop3D/h;->n:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/h;->stopTween()V

    const-string v0, "IndicatorView"

    const-string v1, "TweenStart show"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    sget-object v2, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    const v3, 0x3ecccccd

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/h;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/h;->l:Laurelienribon/tweenengine/Tween;

    return-void
.end method
