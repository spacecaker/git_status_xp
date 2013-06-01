.class public Lcom/iLoong/launcher/Desktop3D/b;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

# interfaces
.implements Laurelienribon/tweenengine/TweenCallback;
.implements Lcom/iLoong/launcher/Desktop3D/ad;


# static fields
.field public static e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static f:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# instance fields
.field public a:Lcom/iLoong/launcher/Desktop3D/ag;

.field public b:Lcom/iLoong/launcher/Desktop3D/i;

.field public c:Lcom/iLoong/launcher/Desktop3D/ac;

.field public d:Lcom/iLoong/launcher/Desktop3D/ay;

.field private h:Lcom/iLoong/launcher/Desktop3D/an;

.field private i:Lcom/iLoong/launcher/Desktop3D/ak;

.field private j:Lcom/iLoong/launcher/Desktop3D/bb;

.field private k:Lcom/iLoong/launcher/Desktop3D/aw;

.field private l:Lcom/badlogic/gdx/graphics/g2d/NinePatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/b;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/b;->f:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x3

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->x:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->w:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->y:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->width:F

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->w:I

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->height:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->height:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->originY:F

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/ag;

    const-string v1, "apptab"

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/Desktop3D/ag;-><init>(Lcom/iLoong/launcher/Desktop3D/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->a:Lcom/iLoong/launcher/Desktop3D/ag;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->a:Lcom/iLoong/launcher/Desktop3D/ag;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/b;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/i;

    const-string v1, "apptabindicator"

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/Desktop3D/i;-><init>(Lcom/iLoong/launcher/Desktop3D/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->b:Lcom/iLoong/launcher/Desktop3D/i;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->b:Lcom/iLoong/launcher/Desktop3D/i;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/b;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aV:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/ak;

    const-string v1, "apphomebutton"

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/Desktop3D/ak;-><init>(Lcom/iLoong/launcher/Desktop3D/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->i:Lcom/iLoong/launcher/Desktop3D/ak;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->i:Lcom/iLoong/launcher/Desktop3D/ak;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/b;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_0
    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aH:I

    if-eq v0, v6, :cond_2

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->M:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/an;

    const-string v1, "appmenubutton"

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/Desktop3D/an;-><init>(Lcom/iLoong/launcher/Desktop3D/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->h:Lcom/iLoong/launcher/Desktop3D/an;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->h:Lcom/iLoong/launcher/Desktop3D/an;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/b;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_1
    new-instance v0, Lcom/iLoong/launcher/Desktop3D/ac;

    const-string v1, "apppopmenu"

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/Desktop3D/ac;-><init>(Lcom/iLoong/launcher/Desktop3D/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ac;->a()V

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-string v1, "appbar-indicator"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->l:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iput-boolean v6, p0, Lcom/iLoong/launcher/Desktop3D/b;->transform:Z

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aG:Z

    if-eqz v0, :cond_5

    const-string v0, "theme/pack_source/appbar-bg-black.png"

    :goto_0
    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/b;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v1, :cond_3

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v2, v0}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/b;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v1, "theme/pack_source/app-item-bg.png"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/b;->f:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v1, :cond_4

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v2, v0}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/b;->f:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_5
    const-string v0, "theme/pack_source/appbar-bg.png"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;IIIIIZI)Landroid/graphics/Bitmap;
    .locals 10

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bg:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_0
    if-eqz p6, :cond_5

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    mul-int/lit8 v3, p5, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int p1, v1

    :cond_1
    :goto_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    const/high16 v1, 0x4120

    const/4 v6, 0x1

    if-ne p3, v6, :cond_8

    int-to-float v1, p1

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v1, v6

    const/high16 v6, 0x4000

    div-float/2addr v1, v6

    :cond_2
    :goto_2
    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-gez v6, :cond_3

    const/4 v1, 0x0

    :cond_3
    int-to-double v6, p2

    iget v8, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    sub-double v5, v6, v8

    double-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    const/4 v6, -0x1

    move/from16 v0, p7

    if-ne v0, v6, :cond_4

    sget-boolean v6, Lcom/iLoong/launcher/Desktop3D/cb;->aY:Z

    if-nez v6, :cond_4

    const/high16 v6, -0x5600

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v6, 0x2000

    const/high16 v7, 0x3f80

    const/high16 v8, -0x4080

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/high16 v7, 0x3f80

    sub-float v7, v1, v7

    invoke-virtual {v4, p0, v7, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/high16 v9, -0x4080

    invoke-virtual {v2, v7, v8, v9, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/high16 v7, 0x3f80

    sub-float v7, v5, v7

    invoke-virtual {v4, p0, v1, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/high16 v7, 0x3f80

    add-float/2addr v7, v1

    invoke-virtual {v4, p0, v7, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    invoke-virtual {v2, v7, v8, v9, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/high16 v6, 0x3f80

    add-float/2addr v6, v5

    invoke-virtual {v4, p0, v1, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Paint;->clearShadowLayer()V

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4, p0, v1, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v3

    :cond_5
    int-to-float v1, p2

    const/high16 v3, 0x4040

    div-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-int/lit8 v3, p1, -0x2

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    :goto_3
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    int-to-float v3, p1

    const-string v4, ".."

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    sub-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_8
    const/4 v6, 0x2

    if-ne p3, v6, :cond_2

    int-to-float v6, p1

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    sub-float/2addr v6, v7

    sub-float v1, v6, v1

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/String;IIIIZI)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/iLoong/launcher/Desktop3D/b;->a(Ljava/lang/String;IIIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;IZIZ)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v2, 0x1

    const/high16 v8, -0x4080

    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bg:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_0
    if-eqz p2, :cond_2

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v2, v2

    const/4 v4, -0x1

    if-ne p3, v4, :cond_1

    sget-boolean v4, Lcom/iLoong/launcher/Desktop3D/cb;->aY:Z

    if-nez v4, :cond_1

    const/high16 v4, -0x5600

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x2000

    invoke-virtual {v0, v6, v8, v7, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    sub-float v5, v7, v6

    invoke-virtual {v3, p0, v5, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v6, v7, v8, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    sub-float v5, v2, v6

    invoke-virtual {v3, p0, v7, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v6, v6, v7, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    add-float v5, v7, v6

    invoke-virtual {v3, p0, v5, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v6, v7, v6, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    add-float v4, v2, v6

    invoke-virtual {v3, p0, v7, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, p0, v7, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v1

    :cond_2
    int-to-float v1, p1

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/aw;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->k:Lcom/iLoong/launcher/Desktop3D/aw;

    return-object v0
.end method

.method public static b(Ljava/lang/String;IZIZ)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bg:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_0
    if-eqz p2, :cond_1

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, p0, v4, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v1

    :cond_1
    int-to-float v1, p1

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/bb;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->j:Lcom/iLoong/launcher/Desktop3D/bb;

    return-object v0
.end method

.method static synthetic c(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/ak;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->i:Lcom/iLoong/launcher/Desktop3D/ak;

    return-object v0
.end method

.method static synthetic d(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->l:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    return-object v0
.end method

.method static synthetic e(Lcom/iLoong/launcher/Desktop3D/b;)Lcom/iLoong/launcher/Desktop3D/an;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->h:Lcom/iLoong/launcher/Desktop3D/an;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public a(FII)V
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    cmpg-float v0, p1, v2

    if-ltz v0, :cond_3

    :cond_0
    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-ne p2, v0, :cond_1

    cmpl-float v0, p1, v2

    if-gtz v0, :cond_3

    :cond_1
    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/aw;->D:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_2

    cmpg-float v0, p1, v2

    if-ltz v0, :cond_3

    :cond_2
    if-nez p2, :cond_3

    :cond_3
    return-void
.end method

.method public a(Lcom/iLoong/launcher/Desktop3D/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/b;->k:Lcom/iLoong/launcher/Desktop3D/aw;

    return-void
.end method

.method public a(Lcom/iLoong/launcher/Desktop3D/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/b;->d:Lcom/iLoong/launcher/Desktop3D/ay;

    return-void
.end method

.method public a(Lcom/iLoong/launcher/Desktop3D/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/b;->j:Lcom/iLoong/launcher/Desktop3D/bb;

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 8

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/b;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/b;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/b;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/b;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    int-to-float v0, v6

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/b;->width:F

    int-to-float v2, v7

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void

    :cond_0
    sget-object v1, Lcom/iLoong/launcher/Desktop3D/b;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    mul-int v0, v6, v7

    int-to-float v2, v0

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/b;->y:F

    int-to-float v4, v7

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/b;->height:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ac;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    iput-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/ac;->visible:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    iput-boolean v1, v0, Lcom/iLoong/launcher/Desktop3D/ac;->touchable:Z

    :cond_0
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 2

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-lt p1, v0, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/aw;->A:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->b:Lcom/iLoong/launcher/Desktop3D/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/i;->a(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/b;->b:Lcom/iLoong/launcher/Desktop3D/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/i;->a(I)V

    goto :goto_0
.end method
