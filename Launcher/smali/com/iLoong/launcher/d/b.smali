.class public Lcom/iLoong/launcher/d/b;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

# interfaces
.implements Lcom/iLoong/launcher/Desktop3D/bm;


# static fields
.field private static o:Z


# instance fields
.field a:Lcom/badlogic/gdx/graphics/Texture;

.field public b:Z

.field c:Z

.field public d:Z

.field private e:Lcom/iLoong/launcher/d/a;

.field private f:Lcom/iLoong/launcher/Desktop3D/c;

.field private h:Lcom/iLoong/launcher/UI3DEngine/d;

.field private i:Lcom/iLoong/launcher/UI3DEngine/d;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Z

.field private n:Laurelienribon/tweenengine/Timeline;

.field private p:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/d/b;->o:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/d/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/iLoong/launcher/d/b;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/d/b;->b:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/d/b;->c:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/d/b;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/d/b;->p:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/lang/String;II)Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 9

    const/4 v6, 0x0

    const/high16 v8, 0x4000

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->v:I

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v0, "x.z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x3

    if-le v0, v4, :cond_0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    div-int/lit8 v0, p3, 0x2

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-int/lit8 v4, p2, -0x2

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    :goto_0
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v4, p2

    const-string v5, "..."

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v4, v8

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getDensity()F

    move-result v0

    const/high16 v5, 0x3f80

    cmpg-float v0, v0, v5

    if-gez v0, :cond_3

    div-int/lit8 v0, p3, 0x2

    int-to-float v0, v0

    :goto_1
    iget v5, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v6, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    int-to-float v6, p3

    int-to-float v7, p3

    sub-float v5, v7, v5

    div-float/2addr v5, v8

    sub-float v5, v6, v5

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v4, v5, v4

    invoke-virtual {v2, p1, v0, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-static {v1}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->bmp2Pixmap(Landroid/graphics/Bitmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    div-int/lit8 v0, p3, 0x2

    int-to-float v0, v0

    goto :goto_1
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v4, 0x0

    const v11, 0x3e4ccccd

    const v10, 0x3dcccccd

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/iLoong/launcher/d/b;->i()V

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bA:I

    div-int/lit8 v0, v0, 0x2

    if-le v5, v0, :cond_0

    const v0, 0x3ca3d70a

    move v2, v0

    :goto_0
    move v3, v4

    :goto_1
    if-lt v3, v5, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    const v1, 0x3ecccccd

    invoke-static {p0, v12, v1}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    iget-object v2, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    iget v2, v2, Lcom/iLoong/launcher/d/a;->x:F

    neg-float v2, v2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    return-void

    :cond_0
    const v0, 0x3d23d70a

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->stopTween()V

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v9, v9, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationVector(FFF)V

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    iget-object v6, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    iget-object v6, v6, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v1, v6, v0}, Lcom/iLoong/launcher/d/a;->addViewBefore(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    add-int/lit8 v1, v5, -0x2

    if-ne v3, v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v1, v12}, Lcom/iLoong/launcher/d/a;->b(I)V

    iget-object v6, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x4

    invoke-static {v0, v1, v11}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->bm:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v1, v7, v9, v9}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v7, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v1, v7}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sub-int v7, v5, v3

    int-to-float v7, v7

    mul-float/2addr v7, v2

    add-float/2addr v7, v10

    invoke-virtual {v1, v7}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v6, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :goto_2
    iget-object v6, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x3

    invoke-static {v0, v1, v11}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    iget-object v7, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v7, v4}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v7

    iget-object v8, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v8, v4}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v8

    invoke-virtual {v1, v7, v8, v9}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sub-int v7, v5, v3

    int-to-float v7, v7

    mul-float/2addr v7, v2

    add-float/2addr v7, v10

    invoke-virtual {v1, v7}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/Tween;

    sget-object v7, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v1, v7}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v6, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    const v6, 0x3e99999a

    invoke-static {v0, v12, v6}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iget-object v6, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v6}, Lcom/iLoong/launcher/d/a;->h()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v7}, Lcom/iLoong/launcher/d/a;->i()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v6, v7, v9}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v6, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    invoke-virtual {v0, v6}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sub-int v6, v5, v3

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-virtual {v0, v6}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v1, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v1, v5, -0x3

    if-ne v3, v1, :cond_3

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lcom/iLoong/launcher/d/a;->b(I)V

    iget-object v6, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x4

    invoke-static {v0, v1, v11}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->bm:I

    int-to-float v7, v7

    invoke-virtual {v1, v7, v9, v9}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v7, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v1, v7}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sub-int v7, v5, v3

    int-to-float v7, v7

    mul-float/2addr v7, v2

    add-float/2addr v7, v10

    invoke-virtual {v1, v7}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v6, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v1, v4}, Lcom/iLoong/launcher/d/a;->b(I)V

    iget-object v6, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x4

    invoke-static {v0, v1, v11}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v1, v9, v9, v9}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v7, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v1, v7}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sub-int v7, v5, v3

    int-to-float v7, v7

    mul-float/2addr v7, v2

    add-float/2addr v7, v10

    invoke-virtual {v1, v7}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v6, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    goto/16 :goto_2
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v1}, Lcom/iLoong/launcher/d/a;->c()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/iLoong/launcher/d/a;->a(Ljava/util/ArrayList;F)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    iget v0, v0, Lcom/iLoong/launcher/d/a;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/d/b;->a(Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/iLoong/launcher/d/b;->c(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/iLoong/launcher/d/b;->i()V

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bA:I

    div-int/lit8 v0, v0, 0x2

    if-le v4, v0, :cond_0

    const v0, 0x3ca3d70a

    move v2, v0

    :goto_0
    const v5, 0x3e99999a

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-lt v3, v4, :cond_1

    const/high16 v0, 0x3f00

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    invoke-static {p0, v10, v0}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iget-object v2, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    iget v2, v2, Lcom/iLoong/launcher/d/a;->x:F

    neg-float v2, v2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v2, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v1, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    return-void

    :cond_0
    const v0, 0x3d23d70a

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/d/a;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v6, v6

    add-float/2addr v1, v6

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v6, v6

    sub-float/2addr v1, v6

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    iget-object v6, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    iget-object v6, v6, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v1, v6, v0}, Lcom/iLoong/launcher/d/a;->addViewBefore(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v1, v3}, Lcom/iLoong/launcher/d/a;->b(I)V

    iget-object v6, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    invoke-static {v0, v10, v5}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    iget-object v7, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v7}, Lcom/iLoong/launcher/d/a;->h()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v8}, Lcom/iLoong/launcher/d/a;->i()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1, v7, v8, v9}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v7, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v1, v7}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    int-to-float v7, v3

    mul-float/2addr v7, v2

    invoke-virtual {v1, v7}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v6, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    const/4 v6, 0x3

    invoke-static {v0, v6, v5}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iget-object v6, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v6, v3}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v6

    iget-object v7, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v7, v3}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v7

    invoke-virtual {v0, v6, v7, v9}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    int-to-float v6, v3

    mul-float/2addr v6, v2

    invoke-virtual {v0, v6}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    sget-object v6, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    invoke-virtual {v0, v6}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v1, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1
.end method

.method private h()V
    .locals 9

    const/4 v7, 0x4

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bA:I

    div-int v6, v0, v7

    sget v8, Lcom/iLoong/launcher/Desktop3D/at;->aV:I

    const-string v0, "widget-folder-windows-bg"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bu:I

    add-int/lit8 v2, v2, 0x2

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->bw:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->bv:I

    add-int/lit8 v4, v4, 0x2

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->bx:I

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/c;

    const-string v2, "iconGroupGrid"

    iget v3, p0, Lcom/iLoong/launcher/d/b;->width:F

    iget v4, p0, Lcom/iLoong/launcher/d/b;->height:F

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/iLoong/launcher/Desktop3D/c;-><init>(Ljava/lang/String;FFII)V

    iput-object v1, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/c;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->a(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/c;->width:F

    float-to-int v0, v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bu:I

    sub-int/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bw:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/d/b;->k:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->by:I

    iput v0, p0, Lcom/iLoong/launcher/d/b;->l:I

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "inputTextView"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/d/b;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bu:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    iget v2, v2, Lcom/iLoong/launcher/Desktop3D/c;->height:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->by:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->bv:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bI:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    mul-int/lit8 v1, v8, 0x2

    mul-int/lit8 v2, v8, 0x2

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->by:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->bv:I

    add-int/2addr v3, v4

    mul-int/lit8 v4, v8, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/Desktop3D/c;->a(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, p0, Lcom/iLoong/launcher/d/b;->k:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/d/b;->l:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    const-string v0, "widget-folder-windows-title"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bz:I

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->bz:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->bz:I

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->bz:I

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/UI3DEngine/d;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    iget-object v0, v0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-object v0, v0, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/d/b;->j:Ljava/lang/String;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    iget-object v1, v1, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-object v1, v1, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/iLoong/launcher/d/b;->k:I

    iget v3, p0, Lcom/iLoong/launcher/d/b;->l:I

    invoke-direct {p0, v1, v2, v3}, Lcom/iLoong/launcher/d/b;->a(Ljava/lang/String;II)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    iput-object v0, p0, Lcom/iLoong/launcher/d/b;->a:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/b;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/b;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    mul-int/lit8 v1, v8, 0x2

    mul-int/lit8 v2, v8, 0x2

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->by:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->bv:I

    add-int/2addr v3, v4

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->aW:I

    add-int/2addr v3, v4

    mul-int/lit8 v4, v8, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/Desktop3D/c;->a(IIII)V

    goto :goto_0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->free()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/d/a;->i:Z

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRenameFolderMsg(Lcom/iLoong/launcher/d/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "button_ok"

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/b;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iLoong/launcher/d/b;->h()V

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "button_ok"

    const-string v2, "public-button-return"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/iLoong/launcher/d/b;->h:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->h:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->aA:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->az:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->h:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, p0, Lcom/iLoong/launcher/d/b;->width:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bq:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->aA:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/d/b;->height:F

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->az:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->az:I

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->h:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/b;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    sget-boolean v0, Lcom/iLoong/launcher/d/b;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->h:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/d;->hide()V

    :cond_0
    return-void
.end method

.method public a(Lcom/iLoong/launcher/Desktop3D/aj;Lcom/iLoong/launcher/Desktop3D/aj;)V
    .locals 1

    iget v0, p1, Lcom/iLoong/launcher/Desktop3D/aj;->x:F

    iput v0, p2, Lcom/iLoong/launcher/Desktop3D/aj;->x:F

    iget v0, p1, Lcom/iLoong/launcher/Desktop3D/aj;->y:F

    iput v0, p2, Lcom/iLoong/launcher/Desktop3D/aj;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/c;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0, p2}, Lcom/iLoong/launcher/Desktop3D/c;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method public a(Lcom/iLoong/launcher/a/j;)V
    .locals 4

    iget-boolean v0, p0, Lcom/iLoong/launcher/d/b;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    instance-of v0, v1, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method a(Lcom/iLoong/launcher/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    iget-object v0, v0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/a/h;->a(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/iLoong/launcher/d/b;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/iLoong/launcher/d/b;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/d/b;->b:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/d/b;->d:Z

    return v0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d()V
    .locals 8

    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v1}, Lcom/iLoong/launcher/d/a;->getChildCount()I

    move-result v4

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    iget v1, v1, Lcom/iLoong/launcher/d/a;->k:I

    if-eq v7, v1, :cond_0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bA:I

    div-int/lit8 v1, v1, 0x2

    if-le v4, v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    const v2, 0x3ca3d70a

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Desktop3D/c;->a(F)V

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/iLoong/launcher/d/b;->c:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/d/b;->d:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v3, v0

    :goto_1
    if-lt v3, v4, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/Desktop3D/c;->a(Ljava/util/List;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    const v2, 0x3d23d70a

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Desktop3D/c;->a(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/d/a;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    instance-of v0, v1, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotation(F)V

    invoke-virtual {v1, v6, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/d/a;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;F)V

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v0, v7}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Z)V

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    move-object v2, v1

    check-cast v2, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/j;)V

    iget v0, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v2, p0, Lcom/iLoong/launcher/d/b;->x:F

    sub-float/2addr v0, v2

    iput v0, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v0, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v2, p0, Lcom/iLoong/launcher/d/b;->y:F

    sub-float/2addr v0, v2

    iput v0, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    const/4 v0, 0x0

    const/16 v4, 0x302

    const/4 v3, 0x1

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bE:Z

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getSrcBlendFunc()I

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getDstBlendFunc()I

    move-result v0

    if-ne v1, v4, :cond_0

    if-eq v0, v3, :cond_1

    :cond_0
    invoke-virtual {p1, v4, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->bE:Z

    if-eqz v2, :cond_3

    if-ne v1, v4, :cond_2

    if-eq v0, v3, :cond_3

    :cond_2
    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->a:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/iLoong/launcher/d/b;->m:Z

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->a:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v0, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget v3, p0, Lcom/iLoong/launcher/d/b;->y:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/iLoong/launcher/d/b;->k:I

    int-to-float v4, v0

    iget v0, p0, Lcom/iLoong/launcher/d/b;->l:I

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    :cond_4
    return-void

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method public e()V
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v5

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    instance-of v0, v1, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v2

    const-string v0, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mFolder 3d updateTexture i="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "myActor="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    check-cast v0, Lcom/iLoong/launcher/a/f;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/f;->c:Z

    if-eqz v0, :cond_2

    move-object v0, v2

    check-cast v0, Lcom/iLoong/launcher/a/f;

    iput-boolean v4, v0, Lcom/iLoong/launcher/a/f;->c:Z

    const-string v0, "test"

    const-string v6, "mFolder change using fallbackIcon"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    check-cast v2, Lcom/iLoong/launcher/a/f;

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Lcom/iLoong/launcher/a/f;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method

.method public f()V
    .locals 4

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bq:I

    sub-int/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->br:I

    sub-int/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->aA:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/d/b;->k:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->by:I

    iput v0, p0, Lcom/iLoong/launcher/d/b;->l:I

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->j:Ljava/lang/String;

    iget v2, p0, Lcom/iLoong/launcher/d/b;->k:I

    iget v3, p0, Lcom/iLoong/launcher/d/b;->l:I

    invoke-direct {p0, v1, v2, v3}, Lcom/iLoong/launcher/d/b;->a(Ljava/lang/String;II)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->a:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/iLoong/launcher/d/b;->a:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/Desktop3D/c;->a(Z)V

    iput-boolean v4, p0, Lcom/iLoong/launcher/d/b;->b:Z

    iput-boolean v4, p0, Lcom/iLoong/launcher/d/b;->m:Z

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/d/a;->j:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v6

    move v3, v4

    :goto_0
    if-lt v3, v6, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->removeAllViews()V

    iput-boolean v4, p0, Lcom/iLoong/launcher/d/b;->c:Z

    invoke-direct {p0, v5}, Lcom/iLoong/launcher/d/b;->b(Ljava/util/ArrayList;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/c;->f()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    if-eq v1, v0, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    iput v3, v1, Lcom/iLoong/launcher/a/j;->n:I

    iget-object v2, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    iget-object v2, v2, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-wide v7, v2, Lcom/iLoong/launcher/a/h;->k:J

    invoke-static {v1, v7, v8}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;J)V

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v1, v4}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Z)V

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/aj;

    move-object v2, v0

    check-cast v2, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/j;)V

    iget-object v1, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    iget v1, v1, Lcom/iLoong/launcher/d/a;->k:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bt:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    :goto_1
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bt:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    goto :goto_1
.end method

.method public keyDown(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->keyDown(I)Z

    move-result v0

    goto :goto_0
.end method

.method public keyUp(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/d/b;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/d/b;->d:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/b;->g()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->keyUp(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z
    .locals 5

    const/4 v4, 0x1

    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/c;

    if-eqz v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    iget-object v0, v0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/h;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->f()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->releaseFocus()V

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    iput-boolean v4, p0, Lcom/iLoong/launcher/d/b;->c:Z

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    iget-object v2, v0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/f;

    invoke-virtual {v2, v0}, Lcom/iLoong/launcher/a/h;->b(Lcom/iLoong/launcher/a/f;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/b;->g()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/iLoong/launcher/d/b;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/d/b;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/b;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v4, p0, Lcom/iLoong/launcher/d/b;->d:Z

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/16 v1, -0x2710

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    if-ne p2, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/d/b;->n:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/a;->stopTween()V

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->h:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/b;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->f:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/b;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/b;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/b;->e:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/a;->q()V

    :cond_0
    return-void
.end method

.method public onTouchUp(FFI)Z
    .locals 6

    const/4 v0, 0x1

    const/high16 v5, 0x4000

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/d/b;->hit(FF)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    const-string v2, "touch"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " Folder3D onTouchUp:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/iLoong/launcher/d/b;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bEnableTouch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/iLoong/launcher/d/b;->b:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/iLoong/launcher/d/b;->b:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iLoong/launcher/d/b;->h:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v2}, Lcom/iLoong/launcher/UI3DEngine/d;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iLoong/launcher/d/b;->h:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/d/b;->h:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v3, v3, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/iLoong/launcher/d/b;->h:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget-object v3, p0, Lcom/iLoong/launcher/d/b;->h:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v3, v3, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/b;->g()V

    const-string v1, "touch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Folder3D 111 onTouchUp:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/d/b;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bEnableTouch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/iLoong/launcher/d/b;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/iLoong/launcher/d/b;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->name:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/iLoong/launcher/d/b;->j()V

    goto :goto_0

    :cond_1
    const-string v0, "touch"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Folder3D 222 onTouchUp:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/d/b;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bEnableTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iLoong/launcher/d/b;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchUp(FFI)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
