.class public Lcom/iLoong/launcher/b/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/text/TextPaint;

.field private final b:Landroid/graphics/RectF;

.field private final c:F

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    const/high16 v6, 0x3f00

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/b/b;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/iLoong/launcher/b/b;->i:I

    mul-float v1, v8, v2

    mul-float v3, v8, v2

    const v4, 0x7f0b0036

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v4, p0, Lcom/iLoong/launcher/b/b;->b:Landroid/graphics/RectF;

    iput v7, v4, Landroid/graphics/RectF;->left:F

    iput v7, v4, Landroid/graphics/RectF;->top:F

    float-to-int v5, v0

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/iLoong/launcher/b/b;->c:F

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/b/b;->a:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v1, 0x4150

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    add-float v2, v7, v6

    float-to-int v2, v2

    iput v2, p0, Lcom/iLoong/launcher/b/b;->d:I

    add-float v2, v7, v1

    add-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p0, Lcom/iLoong/launcher/b/b;->e:I

    add-float/2addr v1, v7

    add-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/b/b;->f:I

    iget-object v0, p0, Lcom/iLoong/launcher/b/b;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/b/b;->g:I

    iget v0, p0, Lcom/iLoong/launcher/b/b;->f:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v7

    add-float/2addr v0, v6

    float-to-int v0, v0

    invoke-static {v0}, Lcom/iLoong/launcher/b/c;->b(I)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/b/b;->h:I

    iget-object v0, p0, Lcom/iLoong/launcher/b/b;->b:Landroid/graphics/RectF;

    iget v1, p0, Lcom/iLoong/launcher/b/b;->g:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/b/b;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    invoke-virtual {v0, v1, v7}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v8, 0x2

    iget v0, p0, Lcom/iLoong/launcher/b/b;->g:I

    iget v1, p0, Lcom/iLoong/launcher/b/b;->h:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iget v0, p0, Lcom/iLoong/launcher/b/b;->i:I

    invoke-virtual {v9, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/iLoong/launcher/b/b;->a:Landroid/text/TextPaint;

    iget v1, p0, Lcom/iLoong/launcher/b/b;->c:F

    float-to-int v3, v1

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-le v1, v8, :cond_0

    move v1, v8

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    return-object v9

    :cond_1
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iLoong/launcher/b/b;->b:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/iLoong/launcher/b/b;->b:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/iLoong/launcher/b/b;->a:Landroid/text/TextPaint;

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/iLoong/launcher/b/b;->e:I

    iget v6, p0, Lcom/iLoong/launcher/b/b;->f:I

    mul-int/2addr v6, v2

    add-int/2addr v5, v6

    int-to-float v4, v4

    int-to-float v5, v5

    iget-object v6, p0, Lcom/iLoong/launcher/b/b;->a:Landroid/text/TextPaint;

    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
