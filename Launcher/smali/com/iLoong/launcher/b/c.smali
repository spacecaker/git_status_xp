.class public final Lcom/iLoong/launcher/b/c;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field static c:[I

.field static d:I

.field private static e:I

.field private static f:I

.field private static final g:Landroid/graphics/Paint;

.field private static final h:Landroid/graphics/Paint;

.field private static final i:Landroid/graphics/Paint;

.field private static final j:Landroid/graphics/Paint;

.field private static final k:Landroid/graphics/Paint;

.field private static final l:Landroid/graphics/Rect;

.field private static final m:Landroid/graphics/Rect;

.field private static final n:Landroid/graphics/Canvas;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, -0x1

    sput v0, Lcom/iLoong/launcher/b/c;->e:I

    sput v0, Lcom/iLoong/launcher/b/c;->f:I

    sput v0, Lcom/iLoong/launcher/b/c;->a:I

    sput v0, Lcom/iLoong/launcher/b/c;->b:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/b/c;->g:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/b/c;->h:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/b/c;->i:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/b/c;->j:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/b/c;->k:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/b/c;->l:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/b/c;->m:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/b/c;->n:Landroid/graphics/Canvas;

    sget-object v0, Lcom/iLoong/launcher/b/c;->n:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/iLoong/launcher/b/c;->c:[I

    const/4 v0, 0x0

    sput v0, Lcom/iLoong/launcher/b/c;->d:I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    sget-object v1, Lcom/iLoong/launcher/b/c;->n:Landroid/graphics/Canvas;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/iLoong/launcher/b/c;->e:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-static {p1}, Lcom/iLoong/launcher/b/c;->a(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v2, Lcom/iLoong/launcher/b/c;->e:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget v2, Lcom/iLoong/launcher/b/c;->f:I

    if-ne v0, v2, :cond_1

    monitor-exit v1

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, p1}, Lcom/iLoong/launcher/b/c;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 11

    sget-object v4, Lcom/iLoong/launcher/b/c;->n:Landroid/graphics/Canvas;

    monitor-enter v4

    :try_start_0
    sget v1, Lcom/iLoong/launcher/b/c;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/iLoong/launcher/b/c;->a(Landroid/content/Context;)V

    :cond_0
    sget v3, Lcom/iLoong/launcher/b/c;->e:I

    sget v2, Lcom/iLoong/launcher/b/c;->f:I

    instance-of v1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v1, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v1, v0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-lez v1, :cond_7

    if-lez v1, :cond_7

    if-lt v3, v1, :cond_2

    if-ge v2, v5, :cond_5

    :cond_2
    int-to-float v6, v1

    int-to-float v7, v5

    div-float/2addr v6, v7

    if-le v1, v5, :cond_4

    int-to-float v1, v3

    div-float/2addr v1, v6

    float-to-int v1, v1

    move v2, v3

    :goto_1
    sget v3, Lcom/iLoong/launcher/b/c;->a:I

    sget v5, Lcom/iLoong/launcher/b/c;->b:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    sget-object v7, Lcom/iLoong/launcher/b/c;->n:Landroid/graphics/Canvas;

    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    sget-object v8, Lcom/iLoong/launcher/b/c;->m:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    add-int/2addr v2, v3

    add-int/2addr v1, v5

    invoke-virtual {p0, v3, v5, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v1, Lcom/iLoong/launcher/b/c;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    monitor-exit v4

    return-object v6

    :cond_3
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    if-le v5, v1, :cond_7

    int-to-float v1, v2

    mul-float/2addr v1, v6

    float-to-int v1, v1

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_1

    :cond_5
    if-ge v1, v3, :cond_7

    if-ge v5, v2, :cond_7

    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    if-le v3, v2, :cond_6

    int-to-float v1, v1

    div-float/2addr v1, v6

    float-to-int v1, v1

    move v2, v3

    goto :goto_1

    :cond_6
    if-le v2, v3, :cond_7

    int-to-float v1, v5

    mul-float/2addr v1, v6

    float-to-int v1, v1

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_1

    :cond_7
    move v1, v2

    move v2, v3

    goto :goto_1
.end method

.method public static a(I)V
    .locals 1

    sput p0, Lcom/iLoong/launcher/b/c;->f:I

    sput p0, Lcom/iLoong/launcher/b/c;->e:I

    sget v0, Lcom/iLoong/launcher/b/c;->e:I

    sput v0, Lcom/iLoong/launcher/b/c;->b:I

    sput v0, Lcom/iLoong/launcher/b/c;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->ao:I

    sput v1, Lcom/iLoong/launcher/b/c;->f:I

    sput v1, Lcom/iLoong/launcher/b/c;->e:I

    sget v1, Lcom/iLoong/launcher/b/c;->e:I

    sput v1, Lcom/iLoong/launcher/b/c;->b:I

    sput v1, Lcom/iLoong/launcher/b/c;->a:I

    sget-object v1, Lcom/iLoong/launcher/b/c;->h:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const/high16 v3, 0x40a0

    mul-float/2addr v0, v3

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v0, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    sget-object v0, Lcom/iLoong/launcher/b/c;->i:Landroid/graphics/Paint;

    const/16 v1, -0x3d00

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/iLoong/launcher/b/c;->j:Landroid/graphics/Paint;

    const/16 v1, -0x7200

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const v1, 0x3e4ccccd

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    sget-object v1, Lcom/iLoong/launcher/b/c;->k:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    sget-object v0, Lcom/iLoong/launcher/b/c;->k:Landroid/graphics/Paint;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method static b(I)I
    .locals 3

    shr-int/lit8 v1, p0, 0x1

    const/high16 v0, 0x800

    :goto_0
    if-eqz v0, :cond_0

    and-int v2, v1, v0

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    if-nez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    if-eq v0, p0, :cond_1

    shl-int/lit8 v0, v0, 0x1

    :cond_1
    return v0

    :cond_2
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    or-int/2addr v1, v0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
