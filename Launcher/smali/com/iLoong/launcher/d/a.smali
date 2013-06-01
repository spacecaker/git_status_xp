.class public Lcom/iLoong/launcher/d/a;
.super Lcom/iLoong/launcher/UI3DEngine/c;

# interfaces
.implements Lcom/iLoong/launcher/Desktop3D/bd;
.implements Lcom/iLoong/launcher/Desktop3D/u;
.implements Lcom/iLoong/launcher/a/i;
.implements Lcom/iLoong/launcher/cling/l;


# static fields
.field private static K:F

.field public static o:Landroid/graphics/Bitmap;

.field public static p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/badlogic/gdx/math/Vector2;

.field private D:I

.field private E:Z

.field private F:F

.field private G:I

.field private H:I

.field private I:F

.field private J:I

.field private L:F

.field public a:Lcom/iLoong/launcher/d/b;

.field public b:Lcom/iLoong/launcher/d/d;

.field public c:Lcom/iLoong/launcher/a/h;

.field d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field e:Lcom/iLoong/launcher/UI3DEngine/d;

.field f:Lcom/iLoong/launcher/UI3DEngine/d;

.field h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public i:Z

.field public j:Z

.field public k:I

.field l:F

.field m:F

.field n:F

.field private q:I

.field private final r:I

.field private s:Ljava/lang/String;

.field private t:Laurelienribon/tweenengine/Tween;

.field private u:Laurelienribon/tweenengine/Timeline;

.field private v:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iLoong/launcher/d/a;->o:Landroid/graphics/Bitmap;

    sput-object v0, Lcom/iLoong/launcher/d/a;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v0, 0x0

    sput v0, Lcom/iLoong/launcher/d/a;->K:F

    return-void
.end method

.method public constructor <init>(Lcom/iLoong/launcher/a/h;)V
    .locals 1

    const-string v0, "folder"

    invoke-direct {p0, v0, p1}, Lcom/iLoong/launcher/d/a;-><init>(Ljava/lang/String;Lcom/iLoong/launcher/a/h;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/iLoong/launcher/a/h;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/c;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/iLoong/launcher/d/a;->q:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/iLoong/launcher/d/a;->r:I

    iput-object v2, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    iput-object v2, p0, Lcom/iLoong/launcher/d/a;->t:Laurelienribon/tweenengine/Tween;

    iput-object v2, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    iput-boolean v1, p0, Lcom/iLoong/launcher/d/a;->i:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/d/a;->j:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/d/a;->A:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/d/a;->B:Z

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->C:Lcom/badlogic/gdx/math/Vector2;

    iput v4, p0, Lcom/iLoong/launcher/d/a;->k:I

    sget v0, Lcom/iLoong/launcher/cling/i;->f:I

    iput v0, p0, Lcom/iLoong/launcher/d/a;->D:I

    iput-boolean v3, p0, Lcom/iLoong/launcher/d/a;->E:Z

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bf:I

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/d/a;->F:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/d/a;->L:F

    iput v1, p0, Lcom/iLoong/launcher/d/a;->q:I

    iget-object v0, p2, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    invoke-virtual {p0, p2}, Lcom/iLoong/launcher/d/a;->setTag(Ljava/lang/Object;)V

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bA:I

    iput v0, p0, Lcom/iLoong/launcher/d/a;->v:I

    iget-object v0, p2, Lcom/iLoong/launcher/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/d/a;->w:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bD:I

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/d/a;->I:F

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bm:I

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/d/a;->n:F

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bk:I

    iput v0, p0, Lcom/iLoong/launcher/d/a;->J:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bp:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "folder_style"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iput v4, p0, Lcom/iLoong/launcher/d/a;->k:I

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/a/h;->a(Lcom/iLoong/launcher/a/i;)V

    iget v0, p0, Lcom/iLoong/launcher/d/a;->w:I

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/d/a;->c(I)V

    iget-object v0, p2, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->w()V

    return-void

    :cond_0
    iput v3, p0, Lcom/iLoong/launcher/d/a;->k:I

    iput-object v2, p0, Lcom/iLoong/launcher/d/a;->e:Lcom/iLoong/launcher/UI3DEngine/d;

    goto :goto_0
.end method

.method private A()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->getChildCount()I

    move-result v2

    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->t()V

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/d/a;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v3

    instance-of v4, v3, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->c()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/iLoong/launcher/d/a;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;F)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v4

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->b(I)V

    iget v4, p0, Lcom/iLoong/launcher/d/a;->G:I

    int-to-float v4, v4

    iget v5, p0, Lcom/iLoong/launcher/d/a;->H:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->bp:I

    if-lt v0, v4, :cond_1

    invoke-virtual {v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->hide()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private B()V
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->z()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->A()V

    goto :goto_0
.end method

.method private C()V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->t()V

    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->z()V

    return-void
.end method

.method private D()V
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->C()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->A()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    const-string v1, "x.z"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object v1, Lcom/iLoong/launcher/Desktop3D/aj;->n:Landroid/graphics/Bitmap;

    invoke-static {p0, v1, v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->folderTitleToBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->bf:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int v0, v4, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    cmpg-float v7, v0, v2

    if-gez v7, :cond_0

    move v0, v2

    :cond_0
    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->bp:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    const-string v7, "folder_style"

    invoke-static {v7}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    invoke-virtual {v6, p0, v0, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-static {v3}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->bmp2Pixmap(Landroid/graphics/Bitmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->titleToBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->bmp2Pixmap(Landroid/graphics/Bitmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/iLoong/launcher/UI3DEngine/View3D;FF)V
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Lcom/iLoong/launcher/d/a;->F:F

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createSequence()Laurelienribon/tweenengine/Timeline;

    move-result-object v2

    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v0, v4, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    sub-float v0, v1, v0

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/d/a;->b(Lcom/iLoong/launcher/Desktop3D/aj;)V

    iget v0, p0, Lcom/iLoong/launcher/d/a;->w:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->b(I)V

    iget v0, p0, Lcom/iLoong/launcher/d/a;->G:I

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/d/a;->H:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    const/4 v0, 0x3

    const v1, 0x3e4ccccd

    invoke-static {p1, v0, v1}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iget v1, p0, Lcom/iLoong/launcher/d/a;->w:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v1

    iget v3, p0, Lcom/iLoong/launcher/d/a;->w:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v3

    invoke-virtual {v0, v1, v3}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v2, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Timeline;)Laurelienribon/tweenengine/Timeline;

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/d/a;->b(Lcom/iLoong/launcher/Desktop3D/aj;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->b(I)V

    iget v0, p0, Lcom/iLoong/launcher/d/a;->G:I

    int-to-float v0, v0

    iget v3, p0, Lcom/iLoong/launcher/d/a;->H:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    const v0, 0x3ecccccd

    invoke-static {p1, v4, v0}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iget v3, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    invoke-virtual {v0, v3, v1}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v2, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    goto :goto_0
.end method

.method private a(Lcom/iLoong/launcher/UI3DEngine/View3D;FFF)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotation(F)V

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v0

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    invoke-virtual {p1, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    return-void
.end method

.method private b(Lcom/iLoong/launcher/Desktop3D/aj;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget v1, v0, Lcom/iLoong/launcher/a/j;->l:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    instance-of v1, v0, Lcom/iLoong/launcher/a/b;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/iLoong/launcher/a/f;

    check-cast v0, Lcom/iLoong/launcher/a/b;

    invoke-direct {v1, v0}, Lcom/iLoong/launcher/a/f;-><init>(Lcom/iLoong/launcher/a/b;)V

    move-object v0, v1

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v1, p1}, Lcom/iLoong/launcher/d/a;->addViewBefore(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iput v3, v0, Lcom/iLoong/launcher/a/j;->p:I

    iget v1, p1, Lcom/iLoong/launcher/Desktop3D/aj;->y:F

    float-to-int v1, v1

    iput v1, v0, Lcom/iLoong/launcher/a/j;->q:I

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-object v1, v1, Lcom/iLoong/launcher/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/iLoong/launcher/a/j;->n:I

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-wide v1, v1, Lcom/iLoong/launcher/a/h;->k:J

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;J)V

    invoke-virtual {p1, v3}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Z)V

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/j;)V

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    check-cast v0, Lcom/iLoong/launcher/a/f;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/a/h;->a(Lcom/iLoong/launcher/a/f;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    add-int/lit8 v0, v4, -0x1

    if-le v2, v0, :cond_0

    return-void

    :cond_0
    move v3, v2

    :goto_1
    if-lt v3, v4, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/f;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/a/f;

    iget v5, v0, Lcom/iLoong/launcher/a/f;->n:I

    iget v6, v1, Lcom/iLoong/launcher/a/f;->n:I

    if-le v5, v6, :cond_2

    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1
.end method

.method private b(FF)Z
    .locals 6

    const/high16 v5, 0x3f80

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/iLoong/launcher/d/a;->A:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/iLoong/launcher/d/a;->w:I

    if-lez v2, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_3

    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    instance-of v2, v2, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    if-eqz v2, :cond_4

    iput v0, p0, Lcom/iLoong/launcher/d/a;->q:I

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/iLoong/launcher/d/a;->w:I

    if-lez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_6

    :cond_5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    instance-of v2, v2, Lcom/iLoong/launcher/HotSeat3D/i;

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/iLoong/launcher/d/a;->q:I

    move v0, v1

    goto :goto_0
.end method

.method private c(I)V
    .locals 3

    const/4 v2, 0x3

    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/d/a;->v:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/d/a;->v:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    goto :goto_0

    :cond_2
    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bA:I

    if-ne p1, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "folder-maxnumber-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "folder-number-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto :goto_0
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->t()V

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v4

    :goto_0
    if-lt v1, v2, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bA:I

    div-int/lit8 v0, v0, 0x2

    if-le v6, v0, :cond_2

    const v0, 0x3d75c28f

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v7, v0, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget v2, p0, Lcom/iLoong/launcher/d/a;->F:F

    add-float/2addr v0, v2

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v2, v10, :cond_4

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    sub-float/2addr v0, v2

    move v2, v0

    :goto_2
    move v3, v4

    :goto_3
    if-lt v3, v6, :cond_3

    iput-boolean v10, p0, Lcom/iLoong/launcher/d/a;->j:Z

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const v0, 0x3dcccccd

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->c()F

    move-result v8

    invoke-virtual {p0, v0, v8}, Lcom/iLoong/launcher/d/a;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;F)V

    iget-object v8, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    const v9, 0x3f4ccccd

    invoke-static {v0, v10, v9}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v9, Laurelienribon/tweenengine/equations/Quad;->INOUT:Laurelienribon/tweenengine/equations/Quad;

    invoke-virtual {v0, v9}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    int-to-float v9, v3

    mul-float/2addr v9, v1

    invoke-virtual {v0, v9}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v8, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_4
    move v2, v0

    goto :goto_2
.end method

.method public static d()V
    .locals 4

    sget-object v0, Lcom/iLoong/launcher/d/a;->o:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v1, "theme/folder/widget-folder-bg.png"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/iLoong/launcher/desktop/iLoongApplication;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bp:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const-string v2, "folder_style"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/high16 v2, 0x3fc0

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/d/a;->o:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bI:I

    if-lez v1, :cond_2

    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->ao:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/cb;->ao:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/d/a;->o:Landroid/graphics/Bitmap;

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iLoong/launcher/b/c;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/d/a;->o:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method private d(I)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/d/a;->n:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    const-string v1, "folder_front_margin_offset"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/d/a;->G:I

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->c()F

    move-result v1

    sub-float/2addr v0, v1

    const-string v1, "folder_front_margin_offset"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/d/a;->G:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bn:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/d/a;->G:I

    iget v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bo:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/d/a;->G:I

    sget-object v1, Lcom/iLoong/launcher/d/a;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/d/a;->G:I

    iget v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    sget-object v1, Lcom/iLoong/launcher/d/a;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    goto :goto_0
.end method

.method private d(Lcom/iLoong/launcher/a/j;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/h;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/b;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/d/b;->a(Lcom/iLoong/launcher/a/j;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_1
    if-gez v4, :cond_2

    move v0, v3

    :goto_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/d/a;->e(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/iLoong/launcher/d/a;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    instance-of v0, v1, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/h;->e:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/d/a;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    move v0, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1
.end method

.method private f(Z)V
    .locals 9

    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->t()V

    if-eqz p1, :cond_0

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    :goto_0
    if-gez v8, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v8}, Lcom/iLoong/launcher/d/a;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v1

    :cond_3
    instance-of v0, v2, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->c()F

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/iLoong/launcher/d/a;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;F)V

    invoke-virtual {p0, v7}, Lcom/iLoong/launcher/d/a;->b(I)V

    const v3, 0x3e99999a

    iget v4, p0, Lcom/iLoong/launcher/d/a;->n:F

    iget v0, p0, Lcom/iLoong/launcher/d/a;->G:I

    int-to-float v5, v0

    iget v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    int-to-float v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/d/a;->a(Laurelienribon/tweenengine/Timeline;Lcom/iLoong/launcher/UI3DEngine/View3D;FFFF)V

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bp:I

    add-int/lit8 v0, v0, -0x1

    if-le v7, v0, :cond_4

    invoke-virtual {v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->hide()V

    :cond_4
    add-int/lit8 v0, v7, 0x1

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v2, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Timeline;)Laurelienribon/tweenengine/Timeline;

    :goto_1
    add-int/lit8 v1, v8, -0x1

    move v8, v1

    move v7, v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget v1, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget v3, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    add-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    :cond_6
    move v0, v7

    goto :goto_1
.end method

.method public static g()V
    .locals 3

    invoke-static {}, Lcom/iLoong/launcher/d/a;->d()V

    invoke-static {}, Lcom/iLoong/launcher/d/a;->v()F

    move-result v0

    sput v0, Lcom/iLoong/launcher/d/a;->K:F

    sget-object v0, Lcom/iLoong/launcher/d/a;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/d/a;->o:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iLoong/launcher/d/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v2, v0}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v1, Lcom/iLoong/launcher/d/a;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_0
    return-void
.end method

.method private g(Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->getChildCount()I

    move-result v2

    const v3, 0x3e99999a

    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->t()V

    if-eqz p1, :cond_0

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    :cond_0
    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/d/a;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    instance-of v5, v4, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v5, :cond_4

    if-eqz p1, :cond_5

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->c()F

    move-result v6

    invoke-virtual {p0, v4, v6}, Lcom/iLoong/launcher/d/a;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;F)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v6

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->b(I)V

    invoke-static {v4, v10, v3}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v6

    iget v7, p0, Lcom/iLoong/launcher/d/a;->G:I

    int-to-float v7, v7

    iget v8, p0, Lcom/iLoong/launcher/d/a;->H:I

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v6

    sget-object v7, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v6, v7}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v6

    invoke-virtual {v5, v6}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->bp:I

    if-lt v0, v6, :cond_3

    invoke-virtual {v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->hide()V

    :cond_3
    iget-object v4, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v4, v5}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Timeline;)Laurelienribon/tweenengine/Timeline;

    add-int/lit8 v0, v0, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v5, v5, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget v6, v4, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v6, v6, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget v7, v4, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    goto :goto_1
.end method

.method private s()V
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->t()V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v5, v0, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget v1, p0, Lcom/iLoong/launcher/d/a;->F:F

    add-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v1, v9, :cond_3

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    sub-float/2addr v0, v1

    move v1, v0

    :goto_0
    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->getChildCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x2

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bA:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    const v0, 0x3d75c28f

    move v2, v0

    :goto_1
    move v3, v4

    :goto_2
    if-lt v3, v6, :cond_1

    iput-boolean v9, p0, Lcom/iLoong/launcher/d/a;->j:Z

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    return-void

    :cond_0
    const v0, 0x3dcccccd

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/d/a;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    instance-of v7, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    const v8, 0x3f4ccccd

    invoke-static {v0, v9, v8}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    int-to-float v8, v3

    mul-float/2addr v8, v2

    invoke-virtual {v0, v8}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    sget-object v8, Laurelienribon/tweenengine/equations/Quad;->INOUT:Laurelienribon/tweenengine/equations/Quad;

    invoke-virtual {v0, v8}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method private t()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->free()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    :cond_0
    return-void
.end method

.method private u()V
    .locals 4

    const/high16 v2, 0x4000

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/iLoong/launcher/d/a;->setPosition(FF)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/d/a;->setSize(FF)V

    iget v0, p0, Lcom/iLoong/launcher/d/a;->width:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/iLoong/launcher/d/a;->height:F

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/d/a;->setOrigin(FF)V

    const-string v0, "testdrag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFolderIconPathFullScreen 111"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v1, v1, Lcom/iLoong/launcher/a/h;->p:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v2, v2, Lcom/iLoong/launcher/a/h;->q:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/d/a;->F:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->e:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    sget v2, Lcom/iLoong/launcher/d/a;->K:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget v3, p0, Lcom/iLoong/launcher/d/a;->F:F

    add-float/2addr v2, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->bi:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->e:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bg:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bh:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->e(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    iget-object v0, v0, Lcom/iLoong/launcher/d/d;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v2, v2, Lcom/iLoong/launcher/a/h;->p:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    iget-object v0, v0, Lcom/iLoong/launcher/d/d;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v2, v2, Lcom/iLoong/launcher/a/h;->q:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    return-void
.end method

.method private static v()F
    .locals 2

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    sget-object v1, Lcom/iLoong/launcher/d/a;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bI:I

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private w()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/iLoong/launcher/d/b;

    const-string v1, "folder3D"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/d/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/d/b;->a(Lcom/iLoong/launcher/d/a;)V

    invoke-static {}, Lcom/iLoong/launcher/d/a;->g()V

    sget-object v0, Lcom/iLoong/launcher/d/a;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "folder_front"

    sget-object v2, Lcom/iLoong/launcher/d/a;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/d/a;->F:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/d;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->e:Lcom/iLoong/launcher/UI3DEngine/d;

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/d/b;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/b;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v0, v0, Lcom/iLoong/launcher/a/h;->p:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v1, v1, Lcom/iLoong/launcher/a/h;->q:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/iLoong/launcher/d/a;->a(FFFF)V

    invoke-virtual {p0, v4}, Lcom/iLoong/launcher/d/a;->e(Z)V

    return-void

    :cond_1
    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "folder_behind"

    const-string v2, "widget-folder-bg2"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->e:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->e:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bg:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bh:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->e:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_0
.end method

.method private x()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0, v1, v1}, Lcom/iLoong/launcher/d/b;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/d/b;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/b;->hide()V

    const-string v0, "testdrag"

    const-string v1, "closeFolder 111"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/d/a;->j:Z

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowClingPointMsg()V

    return-void
.end method

.method private y()V
    .locals 8

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iput-boolean v1, v0, Lcom/iLoong/launcher/a/h;->e:Z

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bq:I

    int-to-float v2, v2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/d/b;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->bq:I

    sub-int/2addr v2, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->br:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v3

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/d/b;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/b;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    iput-boolean v7, v0, Lcom/iLoong/launcher/d/b;->b:Z

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->be:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bt:I

    int-to-float v2, v2

    invoke-virtual {p0, v6, v6, v0, v2}, Lcom/iLoong/launcher/d/a;->a(FFFF)V

    invoke-virtual {p0, v7}, Lcom/iLoong/launcher/d/a;->e(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/b;->a()V

    const-string v0, "testdrag"

    const-string v2, "openFolder"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    sget-object v2, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    const v3, 0x3ecccccd

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->bq:I

    int-to-float v4, v4

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/d/b;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->t:Laurelienribon/tweenengine/Tween;

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendHideClingPointMsg()V

    return-void
.end method

.method private z()V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v2, "testtetstest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Folder Count:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/iLoong/launcher/d/a;->w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_0
    if-gez v1, :cond_0

    const-string v1, "testtetstest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "iconIndex="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/d/a;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    instance-of v3, v2, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v3, :cond_2

    const-string v3, "testtetstest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "myActor:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->b(I)V

    iget v3, p0, Lcom/iLoong/launcher/d/a;->n:F

    iget v4, p0, Lcom/iLoong/launcher/d/a;->G:I

    int-to-float v4, v4

    iget v5, p0, Lcom/iLoong/launcher/d/a;->H:I

    int-to-float v5, v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/iLoong/launcher/d/a;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;FFF)V

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->bp:I

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_1

    invoke-virtual {v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->hide()V

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->c()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/iLoong/launcher/d/a;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;F)V

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public a(I)F
    .locals 4

    const/4 v3, 0x1

    const v2, 0x3dcccccd

    const-string v0, "folder_style"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bp:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/d/a;->I:F

    :goto_0
    return v0

    :cond_0
    if-ne p1, v3, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/d/a;->I:F

    sub-float/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/d/a;->I:F

    sub-float/2addr v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/d/a;->I:F

    goto :goto_0
.end method

.method public a(FFFF)V
    .locals 4

    const/high16 v3, 0x4000

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/h;->e:Z

    if-nez v0, :cond_1

    const-string v0, "testdrag"

    const-string v1, "setFolderIconSize 111"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/d/a;->setPosition(FF)V

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v0, v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/d/a;->setSize(FF)V

    :goto_0
    iget v0, p0, Lcom/iLoong/launcher/d/a;->width:F

    div-float/2addr v0, v3

    iget v1, p0, Lcom/iLoong/launcher/d/a;->height:F

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/d/a;->setOrigin(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->e:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    sget v2, Lcom/iLoong/launcher/d/a;->K:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget v3, p0, Lcom/iLoong/launcher/d/a;->F:F

    add-float/2addr v2, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->bi:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "testdrag"

    const-string v1, "setFolderIconSize 222"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v2}, Lcom/iLoong/launcher/d/a;->setPosition(FF)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/d/a;->setSize(FF)V

    goto :goto_0
.end method

.method public a(Laurelienribon/tweenengine/Timeline;Lcom/iLoong/launcher/UI3DEngine/View3D;FFFF)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, 0x3f80

    invoke-virtual {p2, v3, v3, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationVector(FFF)V

    const/4 v0, 0x4

    invoke-static {p2, v0, p3}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p4, v3, v3}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    const/4 v0, 0x3

    invoke-static {p2, v0, p3}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v1

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    const/4 v0, 0x1

    invoke-static {p2, v0, p3}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p5, p6, v3}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/Desktop3D/aj;)V
    .locals 3

    invoke-virtual {p1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget v1, v0, Lcom/iLoong/launcher/a/j;->l:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    instance-of v1, v0, Lcom/iLoong/launcher/a/b;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/iLoong/launcher/a/f;

    check-cast v0, Lcom/iLoong/launcher/a/b;

    invoke-direct {v1, v0}, Lcom/iLoong/launcher/a/f;-><init>(Lcom/iLoong/launcher/a/b;)V

    move-object v0, v1

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    float-to-int v1, v1

    iput v1, v0, Lcom/iLoong/launcher/a/j;->p:I

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    float-to-int v1, v1

    iput v1, v0, Lcom/iLoong/launcher/a/j;->q:I

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-object v1, v1, Lcom/iLoong/launcher/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/iLoong/launcher/a/j;->n:I

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-wide v1, v1, Lcom/iLoong/launcher/a/h;->k:J

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;J)V

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    check-cast v0, Lcom/iLoong/launcher/a/f;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/a/h;->a(Lcom/iLoong/launcher/a/f;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v0, p1}, Lcom/iLoong/launcher/d/a;->addViewBefore(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget v0, p1, Lcom/iLoong/launcher/Desktop3D/aj;->x:F

    iget v1, p0, Lcom/iLoong/launcher/d/a;->x:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/iLoong/launcher/Desktop3D/aj;->x:F

    iget v0, p1, Lcom/iLoong/launcher/Desktop3D/aj;->y:F

    iget v1, p0, Lcom/iLoong/launcher/d/a;->y:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/iLoong/launcher/Desktop3D/aj;->y:F

    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->s()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Lcom/iLoong/launcher/Desktop3D/aj;Lcom/iLoong/launcher/Desktop3D/aj;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-object v0, v0, Lcom/iLoong/launcher/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/h;->e:Z

    if-eqz v0, :cond_1

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/d/b;->a(Lcom/iLoong/launcher/Desktop3D/aj;Lcom/iLoong/launcher/Desktop3D/aj;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-object v2, v0, Lcom/iLoong/launcher/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/f;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    iget v1, v1, Lcom/iLoong/launcher/a/j;->n:I

    iput v1, v0, Lcom/iLoong/launcher/a/j;->n:I

    invoke-virtual {p2}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-wide v1, v1, Lcom/iLoong/launcher/a/h;->k:J

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;J)V

    invoke-virtual {p1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/a/j;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->D()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eq v1, v2, :cond_0

    iget v0, p1, Lcom/iLoong/launcher/Desktop3D/aj;->x:F

    iput v0, p2, Lcom/iLoong/launcher/Desktop3D/aj;->x:F

    iget v0, p1, Lcom/iLoong/launcher/Desktop3D/aj;->y:F

    iput v0, p2, Lcom/iLoong/launcher/Desktop3D/aj;->y:F

    iget v0, p1, Lcom/iLoong/launcher/Desktop3D/aj;->rotation:F

    iput v0, p2, Lcom/iLoong/launcher/Desktop3D/aj;->rotation:F

    invoke-virtual {p2}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v2

    iget v2, v2, Lcom/iLoong/launcher/a/j;->n:I

    iput v2, v0, Lcom/iLoong/launcher/a/j;->n:I

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/d/a;->replaceView(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-object v2, v0, Lcom/iLoong/launcher/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/f;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-wide v1, v1, Lcom/iLoong/launcher/a/h;->k:J

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;J)V

    invoke-virtual {p1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/a/j;)V

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/high16 v2, 0x4000

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bp:I

    if-ne v0, v3, :cond_0

    const-string v0, "folder_style"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v0, v2

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bp:I

    if-ne v0, v3, :cond_1

    const-string v0, "folder_style"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->ao:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->ao:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->c()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;F)V
    .locals 5

    const/high16 v4, 0x4000

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->c()F

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const-string v1, "title"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "iconHeight,iconBmp="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->c()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    iget-object v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v2

    iget-object v3, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/d/a;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_0
    :goto_0
    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setSize(FF)V

    return-void

    :cond_1
    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    iget-object v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v2

    iget-object v3, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v0, v2, v0

    add-float/2addr v0, v1

    iget-object v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    iget v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v0, v4

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/a/j;)V
    .locals 0

    check-cast p1, Lcom/iLoong/launcher/a/h;

    iput-object p1, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    return-void
.end method

.method public a(Lcom/iLoong/launcher/app/ak;Lcom/iLoong/launcher/a/h;)V
    .locals 7

    iput-object p2, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-object v2, p2, Lcom/iLoong/launcher/a/h;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/iLoong/launcher/d/a;->b(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    iput v3, p0, Lcom/iLoong/launcher/d/a;->w:I

    iget v0, p0, Lcom/iLoong/launcher/d/a;->w:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->r()V

    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->B()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/f;

    iget v4, v0, Lcom/iLoong/launcher/a/f;->l:I

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/iLoong/launcher/a/f;->l:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    :cond_2
    new-instance v4, Lcom/iLoong/launcher/Desktop3D/aj;

    iget-object v5, v0, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->c(Lcom/iLoong/launcher/a/f;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/iLoong/launcher/Desktop3D/aj;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v4, v0}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/j;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v0, v4}, Lcom/iLoong/launcher/d/a;->addViewBefore(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iget v4, v0, Lcom/iLoong/launcher/a/f;->l:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/cb;->a(Lcom/iLoong/launcher/a/f;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v4, v0}, Lcom/iLoong/launcher/d/a;->addViewBefore(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/d/a;->c(Ljava/util/ArrayList;)V

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    iget-object v4, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    float-to-int v4, v4

    iput v4, v1, Lcom/iLoong/launcher/a/j;->p:I

    iget-object v4, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    float-to-int v4, v4

    iput v4, v1, Lcom/iLoong/launcher/a/j;->q:I

    iget-object v4, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-object v4, v4, Lcom/iLoong/launcher/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v1, Lcom/iLoong/launcher/a/j;->n:I

    iget-object v4, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-wide v4, v4, Lcom/iLoong/launcher/a/h;->k:J

    invoke-static {v1, v4, v5}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;J)V

    iget-object v4, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    check-cast v1, Lcom/iLoong/launcher/a/f;

    invoke-virtual {v4, v1}, Lcom/iLoong/launcher/a/h;->a(Lcom/iLoong/launcher/a/f;)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->calcCoordinate(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v1, v0}, Lcom/iLoong/launcher/d/a;->addViewBefore(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;F)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v0, p2}, Lcom/iLoong/launcher/d/a;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(FF)Z
    .locals 7

    const/4 v2, 0x4

    const v3, 0x3e4ccccd

    const/4 v6, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/iLoong/launcher/d/a;->A:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/iLoong/launcher/d/a;->j:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/d/a;->w:I

    if-nez v0, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sysPlaySoundEffect()V

    iput-boolean v1, p0, Lcom/iLoong/launcher/d/a;->i:Z

    invoke-static {p0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRenameFolderMsg(Lcom/iLoong/launcher/d/a;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    if-eqz v0, :cond_3

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/c;->onClick(FF)Z

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/h;->e:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/d/a;->hit(FF)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iget-object v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v3, v3, Lcom/iLoong/launcher/UI3DEngine/d;->name:Ljava/lang/String;

    if-ne v2, v3, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/b;->g()V

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/iLoong/launcher/d/a;->k:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-object v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/iLoong/launcher/d/a;->e:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v3, v3, Lcom/iLoong/launcher/UI3DEngine/d;->name:Ljava/lang/String;

    if-ne v2, v3, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/b;->g()V

    goto :goto_0

    :cond_5
    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->name:Ljava/lang/String;

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/b;->g()V

    goto :goto_0

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/c;->onClick(FF)Z

    move-result v1

    goto :goto_0

    :cond_7
    cmpl-float v0, p1, v6

    if-lez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/d/a;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v6

    if-lez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/d/a;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sysPlaySoundEffect()V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    instance-of v0, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/iLoong/launcher/d/a;->j:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/d/a;->q:I

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    sget-object v2, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->be:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bt:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/d/a;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->t:Laurelienribon/tweenengine/Tween;

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendHideWorkspaceMsg()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    instance-of v0, v0, Lcom/iLoong/launcher/HotSeat3D/i;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/iLoong/launcher/d/a;->j:Z

    iput v1, p0, Lcom/iLoong/launcher/d/a;->q:I

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    sget-object v2, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->be:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bt:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/d/a;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->t:Laurelienribon/tweenengine/Tween;

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendHideWorkspaceMsg()V

    goto/16 :goto_0
.end method

.method public a(Ljava/util/ArrayList;FF)Z
    .locals 8

    const/4 v7, -0x1

    const/high16 v5, 0x3f80

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "test12345"

    const-string v1, " folderIcon3D onDrop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/iLoong/launcher/d/a;->B:Z

    :goto_1
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/iLoong/launcher/d/a;->B:Z

    iget v0, p0, Lcom/iLoong/launcher/d/a;->w:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/d/a;->v:I

    if-le v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/d/a;->setTag(Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/iLoong/launcher/d/a;->B:Z

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->bC:Ljava/lang/String;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v6, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v6, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    iput v7, v1, Lcom/iLoong/launcher/a/j;->s:I

    iput v7, v1, Lcom/iLoong/launcher/a/j;->t:I

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->h()V

    move v1, v3

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->t()V

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v1, :cond_9

    iput-boolean v3, p0, Lcom/iLoong/launcher/d/a;->A:Z

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move v2, v3

    goto :goto_1

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v6, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v6, :cond_6

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->h()V

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->c()F

    move-result v6

    cmpl-float v1, v1, v6

    if-nez v1, :cond_8

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_8
    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->c()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/d/a;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;F)V

    invoke-direct {p0, v0, p2, p3}, Lcom/iLoong/launcher/d/a;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;FF)V

    move v1, v3

    goto :goto_3

    :cond_9
    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->t()V

    goto/16 :goto_1
.end method

.method public addViewBefore(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/c;->addViewBefore(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :goto_0
    instance-of v0, p2, Lcom/iLoong/launcher/Desktop3D/ch;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/iLoong/launcher/Desktop3D/ch;

    invoke-virtual {p2, p0}, Lcom/iLoong/launcher/Desktop3D/ch;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p2}, Lcom/iLoong/launcher/UI3DEngine/c;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_0
.end method

.method public b()Lcom/iLoong/launcher/a/j;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    return-object v0
.end method

.method b(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v0, v5, :cond_2

    iput v3, p0, Lcom/iLoong/launcher/d/a;->n:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/d/a;->G:I

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->c()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/d/a;->a(I)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    if-ne p1, v4, :cond_1

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bm:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/d/a;->n:F

    iget v0, p0, Lcom/iLoong/launcher/d/a;->G:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bn:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/d/a;->G:I

    iget v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bo:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v5, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bm:I

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/d/a;->n:F

    iget v0, p0, Lcom/iLoong/launcher/d/a;->G:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bn:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/d/a;->G:I

    iget v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bo:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/d/a;->J:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bp:I

    div-int v0, v1, v0

    const-string v1, "folder_style"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_3

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bp:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/d/a;->d(I)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/iLoong/launcher/d/a;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const-string v2, "folder_front_margin_offset"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/2addr v1, v0

    iput v3, p0, Lcom/iLoong/launcher/d/a;->n:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bp:I

    if-lt p1, v2, :cond_4

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bp:I

    add-int/lit8 p1, v2, -0x1

    :cond_4
    rem-int v2, p1, v0

    mul-int/2addr v2, v1

    const-string v3, "folder_front_margin_offset"

    invoke-static {v3}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/iLoong/launcher/d/a;->G:I

    iget v2, p0, Lcom/iLoong/launcher/d/a;->J:I

    mul-int/2addr v2, v1

    div-int v0, p1, v0

    mul-int/2addr v0, v1

    sub-int v0, v2, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/d/a;->F:F

    add-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bf:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/h;->e:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/iLoong/launcher/d/a;->G:I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->be:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/d/a;->G:I

    iget v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bt:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    :cond_5
    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bp:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    const-string v1, "folder_front_margin_offset"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    goto/16 :goto_0
.end method

.method public b(Lcom/iLoong/launcher/a/j;)V
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/d/a;->w:I

    iget v1, p0, Lcom/iLoong/launcher/d/a;->v:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/d/a;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/d/a;->w:I

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 6

    const/high16 v5, 0x4000

    const/4 v4, 0x2

    const v0, 0x3f2147ae

    iget v1, p0, Lcom/iLoong/launcher/d/a;->k:I

    if-eq v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->c()F

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/iLoong/launcher/d/a;->E:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/iLoong/launcher/d/a;->E:Z

    if-nez v1, :cond_3

    if-nez p1, :cond_1

    :cond_3
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v2

    iget-object v3, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v3, v3, Lcom/iLoong/launcher/UI3DEngine/d;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    iget v1, p0, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v2, v2

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->bf:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iLoong/launcher/d/a;->E:Z

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bf:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/d/a;->F:F

    :goto_2
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    div-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setOrigin(FF)V

    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->e:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    sget v2, Lcom/iLoong/launcher/d/a;->K:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget v3, p0, Lcom/iLoong/launcher/d/a;->F:F

    add-float/2addr v2, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->bi:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    :cond_4
    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->D()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->c()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v2

    iget-object v3, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v3, v3, Lcom/iLoong/launcher/UI3DEngine/d;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v0, v2, v0

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bf:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bf:I

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/d/a;->F:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/d/a;->E:Z

    goto :goto_2
.end method

.method public b(Ljava/util/ArrayList;FF)Z
    .locals 2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v0, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()F
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/d/a;->L:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getIconBmpHeight()F

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/d/a;->L:F

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/d/a;->L:F

    return v0
.end method

.method public c(Lcom/iLoong/launcher/a/j;)V
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/d/a;->w:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/d/a;->w:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/d/a;->w:I

    :cond_0
    invoke-direct {p0, p1}, Lcom/iLoong/launcher/d/a;->d(Lcom/iLoong/launcher/a/j;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public d(Z)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "testdrag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " FolderIcon3D onHomeKey bAnimate="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/iLoong/launcher/d/a;->j:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/iLoong/launcher/d/a;->j:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/iLoong/launcher/d/a;->i:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->n()V

    :cond_2
    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/d;->a()V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-boolean v2, v2, Lcom/iLoong/launcher/a/h;->e:Z

    if-eqz v2, :cond_0

    const-string v0, "testdrag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " FolderIcon3D DealButtonOKDown bAnimate="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/iLoong/launcher/d/a;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/b;->g()V

    move v0, v1

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 9

    const/4 v8, 0x2

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/iLoong/launcher/d/a;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget v6, p0, Lcom/iLoong/launcher/d/a;->x:F

    iget v7, p0, Lcom/iLoong/launcher/d/a;->y:F

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/c;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/d/a;->E:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    add-float/2addr v0, v6

    float-to-int v0, v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    add-float/2addr v0, v7

    float-to-int v0, v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v0, v8, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    add-float/2addr v0, v6

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/d/a;->K:F

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bd:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bd:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->ba:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/d/a;->l:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    add-float/2addr v0, v7

    iget v1, p0, Lcom/iLoong/launcher/d/a;->F:F

    add-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bi:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bd:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bc:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bd:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bb:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/d/a;->m:F

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/d/a;->l:F

    iget v3, p0, Lcom/iLoong/launcher/d/a;->m:F

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->ba:I

    int-to-float v4, v0

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bb:I

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-object v0, v0, Lcom/iLoong/launcher/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/iLoong/launcher/d/a;->D:I

    sget v1, Lcom/iLoong/launcher/cling/i;->f:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/a/j;->s:I

    if-ge v0, v8, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/a/j;->t:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/a/j;->t:I

    if-ne v0, v8, :cond_3

    :cond_2
    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/cling/i;->c(Lcom/iLoong/launcher/cling/l;)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/d/a;->D:I

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/d/a;->D:I

    sget v1, Lcom/iLoong/launcher/cling/i;->g:I

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/a/j;->s:I

    if-ge v0, v8, :cond_4

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/a/j;->t:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/a/j;->t:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    :cond_4
    sget v0, Lcom/iLoong/launcher/cling/i;->f:I

    iput v0, p0, Lcom/iLoong/launcher/d/a;->D:I

    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/cling/i;->d(Lcom/iLoong/launcher/cling/l;)V

    :cond_5
    return-void
.end method

.method protected drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 12

    const/4 v11, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget v1, p0, Lcom/iLoong/launcher/d/a;->k:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/c;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v8, p2, v1

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/iLoong/launcher/d/a;->transform:Z

    if-eqz v1, :cond_13

    move v7, v0

    :goto_1
    if-gez v7, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v0, v11, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/d;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/UI3DEngine/d;->applyTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0, p1, v8}, Lcom/iLoong/launcher/UI3DEngine/d;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/d;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/UI3DEngine/d;->resetTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_2
    if-lez v7, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->children:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v0, :cond_d

    :cond_4
    :goto_3
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->children:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v0, :cond_7

    :cond_6
    :goto_4
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_1

    :cond_7
    instance-of v0, v6, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_a

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_9

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->applyTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_8
    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, v8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v4, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v5, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->resetTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_9
    invoke-virtual {v6, p1, v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_4

    :cond_a
    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->applyTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_b
    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_c

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, v8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v4, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v5, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_c
    invoke-virtual {v6, p1, v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->resetTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_4

    :cond_d
    instance-of v0, v6, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_10

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_f

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->applyTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_e
    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, v8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v4, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v5, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->resetTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_f
    invoke-virtual {v6, p1, v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto/16 :goto_3

    :cond_10
    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->applyTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_11
    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_12

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, v8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v4, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v5, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_12
    invoke-virtual {v6, p1, v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->resetTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto/16 :goto_3

    :cond_13
    iget v9, p0, Lcom/iLoong/launcher/d/a;->x:F

    iget v10, p0, Lcom/iLoong/launcher/d/a;->y:F

    iput v3, p0, Lcom/iLoong/launcher/d/a;->x:F

    iput v3, p0, Lcom/iLoong/launcher/d/a;->y:F

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-eqz v0, :cond_15

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    add-float/2addr v0, v9

    iput v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    add-float/2addr v0, v10

    iput v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_14

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, v8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v4, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v5, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_14
    invoke-virtual {v6, p1, v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    sub-float/2addr v0, v9

    iput v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    sub-float/2addr v0, v10

    iput v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    :cond_15
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v0, v11, :cond_16

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    add-float/2addr v1, v9

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    add-float/2addr v2, v10

    iget v3, p0, Lcom/iLoong/launcher/d/a;->F:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v3}, Lcom/iLoong/launcher/UI3DEngine/d;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    :cond_16
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_5
    if-gtz v7, :cond_17

    iput v9, p0, Lcom/iLoong/launcher/d/a;->x:F

    iput v10, p0, Lcom/iLoong/launcher/d/a;->y:F

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->children:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v0, :cond_18

    :goto_6
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_5

    :cond_18
    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    add-float/2addr v0, v9

    iput v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    add-float/2addr v0, v10

    iput v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_19

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, v8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v4, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v5, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_19
    invoke-virtual {v6, p1, v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    sub-float/2addr v0, v9

    iput v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    sub-float/2addr v0, v10

    iput v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    goto :goto_6
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public e(Z)V
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/d/a;->f(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/iLoong/launcher/d/a;->g(Z)V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    sget v0, Lcom/iLoong/launcher/cling/i;->e:I

    iput v0, p0, Lcom/iLoong/launcher/d/a;->D:I

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/d/a;->G:I

    return v0
.end method

.method public hide()V
    .locals 2

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/c;->hide()V

    iget v0, p0, Lcom/iLoong/launcher/d/a;->D:I

    sget v1, Lcom/iLoong/launcher/cling/i;->g:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    :cond_0
    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    return v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/d/a;->n:F

    return v0
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method

.method public l()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lcom/iLoong/launcher/d/a;->w:I

    iget v2, p0, Lcom/iLoong/launcher/d/a;->v:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v1, v2, :cond_0

    const/high16 v0, -0x1

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->s:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/iLoong/launcher/d/a;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public m()V
    .locals 4

    const/high16 v3, 0x4000

    const/4 v2, 0x0

    const-string v0, "testdrag"

    const-string v1, "FolderIconNormalScreen 111"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v0, v0, Lcom/iLoong/launcher/a/h;->p:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v1, v1, Lcom/iLoong/launcher/a/h;->q:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/d/a;->setPosition(FF)V

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->be:I

    int-to-float v0, v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/d/a;->setSize(FF)V

    iget v0, p0, Lcom/iLoong/launcher/d/a;->width:F

    div-float/2addr v0, v3

    iget v1, p0, Lcom/iLoong/launcher/d/a;->height:F

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/d/a;->setOrigin(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0, v2, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->e:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    sget v2, Lcom/iLoong/launcher/d/a;->K:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    iget v3, p0, Lcom/iLoong/launcher/d/a;->F:F

    add-float/2addr v2, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->bi:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    :cond_0
    return-void
.end method

.method public multiTouch2(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-boolean v1, v1, Lcom/iLoong/launcher/a/h;->e:Z

    if-nez v1, :cond_0

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/iLoong/launcher/d/a;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/iLoong/launcher/d/a;->x:F

    iget v3, p0, Lcom/iLoong/launcher/d/a;->width:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/iLoong/launcher/d/a;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/iLoong/launcher/d/a;->y:F

    iget v3, p0, Lcom/iLoong/launcher/d/a;->height:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/d/a;->q:I

    return v0
.end method

.method public o()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    iput-boolean v2, v0, Lcom/iLoong/launcher/d/b;->d:Z

    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->e(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->releaseFocus()V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    iput-boolean v2, p0, Lcom/iLoong/launcher/d/a;->j:Z

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowClingPointMsg()V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->A()V

    goto :goto_0
.end method

.method public onClick(FF)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/d/a;->a(FF)Z

    move-result v0

    return v0
.end method

.method public onDoubleClick(FF)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/iLoong/launcher/d/a;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/h;->e:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/d/a;->w:I

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 9

    const/16 v3, 0x8

    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->t:Laurelienribon/tweenengine/Tween;

    if-ne p2, v0, :cond_0

    if-ne p1, v3, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->t:Laurelienribon/tweenengine/Tween;

    invoke-virtual {p2}, Laurelienribon/tweenengine/BaseTween;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/h;->e:Z

    if-nez v0, :cond_3

    const-string v0, "testdrag"

    const-string v1, "on Event openFolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->y()V

    :cond_0
    :goto_0
    if-ne p1, v3, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    if-ne p2, v0, :cond_2

    invoke-virtual {p2}, Laurelienribon/tweenengine/BaseTween;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->t()V

    if-nez v0, :cond_6

    iput-boolean v7, p0, Lcom/iLoong/launcher/d/a;->j:Z

    invoke-virtual {p0, v8}, Lcom/iLoong/launcher/d/a;->e(Z)V

    iput-boolean v7, p0, Lcom/iLoong/launcher/d/a;->A:Z

    const-string v0, "test12345"

    const-string v1, "bAnimate is false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowWorkspaceMsg()V

    :cond_2
    return-void

    :cond_3
    const-string v0, "testdrag"

    const-string v1, "on Event bAnimate false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/iLoong/launcher/d/a;->j:Z

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/b;->d()V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0, v8}, Lcom/iLoong/launcher/d/b;->a(Z)V

    iput-boolean v7, p0, Lcom/iLoong/launcher/d/a;->j:Z

    goto :goto_0

    :cond_5
    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->x()V

    goto :goto_0

    :cond_6
    if-ne v2, v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->f:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/d;->getIndexInParent()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v7}, Lcom/iLoong/launcher/d/a;->b(I)V

    iget v0, p0, Lcom/iLoong/launcher/d/a;->G:I

    int-to-float v1, v0

    iget v0, p0, Lcom/iLoong/launcher/d/a;->H:I

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    int-to-float v0, v0

    :goto_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->getChildCount()I

    move-result v3

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v4

    iput-object v4, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    :goto_3
    if-lt v2, v3, :cond_8

    iput-boolean v8, p0, Lcom/iLoong/launcher/d/a;->j:Z

    const-string v0, "test12345"

    const-string v1, "bAnimate is true animation_line_ondrop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/iLoong/launcher/d/a;->w:I

    add-int/lit8 v2, v0, 0x2

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bn:I

    neg-int v0, v0

    int-to-float v1, v0

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bo:I

    int-to-float v0, v0

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v3, v3

    iget v4, p0, Lcom/iLoong/launcher/d/a;->I:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->bo:I

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    add-float/2addr v0, v3

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/d/a;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->stopTween()V

    iget-object v5, p0, Lcom/iLoong/launcher/d/a;->u:Laurelienribon/tweenengine/Timeline;

    const v6, 0x3e99999a

    invoke-static {v4, v8, v6}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v0, v6}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    sget-object v6, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v4, v6}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    invoke-virtual {v5, v4}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public onLongClick(FF)Z
    .locals 3

    iget-boolean v0, p0, Lcom/iLoong/launcher/d/a;->isDragging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/h;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/iLoong/launcher/d/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/d/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sput v0, Lcom/iLoong/launcher/Desktop3D/x;->a:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sput v0, Lcom/iLoong/launcher/Desktop3D/x;->b:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/c;->onLongClick(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchDown(FFI)Z
    .locals 2

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/d/a;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/d/a;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->C:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/iLoong/launcher/d/a;->j:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/c;->onTouchDown(FFI)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/d;->a()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public p()V
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/d/a;->B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/d/a;->B:Z

    :cond_0
    return-void
.end method

.method public q()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const-string v0, "testdrag"

    const-string v1, "closeFolderStartAnim 111"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/iLoong/launcher/a/h;->e:Z

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->be:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bt:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1, v6, v6}, Lcom/iLoong/launcher/d/a;->a(FFFF)V

    iget v0, p0, Lcom/iLoong/launcher/d/a;->k:I

    if-ne v0, v7, :cond_0

    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->C()V

    :goto_0
    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e4ccccd

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v0, v0, Lcom/iLoong/launcher/a/h;->p:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v0, v0, Lcom/iLoong/launcher/a/h;->q:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/d/a;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->t:Laurelienribon/tweenengine/Tween;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->A()V

    goto :goto_0
.end method

.method public r()V
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/d/a;->w:I

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/d/a;->c(I)V

    return-void
.end method

.method public scroll(FFFF)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-boolean v0, v0, Lcom/iLoong/launcher/a/h;->e:Z

    if-nez v0, :cond_1

    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/d/a;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/d/a;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bH:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p3, p4}, Lcom/iLoong/launcher/d/a;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drag folder clingState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/iLoong/launcher/d/a;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iLoong/launcher/d/d;

    const-string v1, "folderIconPath"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/d/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    iget-object v0, v0, Lcom/iLoong/launcher/d/d;->b:Lcom/badlogic/gdx/math/Vector3;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    iget-object v0, v0, Lcom/iLoong/launcher/d/d;->b:Lcom/badlogic/gdx/math/Vector3;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-direct {p0}, Lcom/iLoong/launcher/d/a;->u()V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/d/d;->a(Lcom/iLoong/launcher/d/a;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/d/a;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/d/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/d/a;->requestFocus()V

    const-string v0, "launcher"

    const-string v1, "cancel folder cling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/iLoong/launcher/cling/i;->e:I

    iput v0, p0, Lcom/iLoong/launcher/d/a;->D:I

    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/i;->i()V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendHideClingPointMsg()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/c;->scroll(FFFF)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/c;->scroll(FFFF)Z

    move-result v0

    goto :goto_0
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/c;->show()V

    iget v0, p0, Lcom/iLoong/launcher/d/a;->D:I

    sget v1, Lcom/iLoong/launcher/cling/i;->g:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    :cond_0
    return-void
.end method
