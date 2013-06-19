.class Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ColorPickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/parts/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextSeekBarDrawable"
.end annotation


# static fields
.field private static final DELAY:J = 0x32L

.field private static final TAG:Ljava/lang/String; = "TextSeekBarDrawable"


# instance fields
.field private mActive:Z

.field private mAnimation:Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;

.field private mDelta:I

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:Landroid/graphics/drawable/Drawable;

.field private mText:Ljava/lang/String;

.field private mTextWidth:F

.field private mTextXScale:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;Z)V
    .locals 4
    .parameter "res"
    .parameter "label"
    .parameter "labelOnRight"

    .prologue
    const/high16 v0, 0x3f80

    .line 404
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 405
    iput-object p2, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mText:Ljava/lang/String;

    .line 406
    const v1, 0x108006c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mProgress:Landroid/graphics/drawable/Drawable;

    .line 407
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mPaint:Landroid/graphics/Paint;

    .line 408
    iget-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 409
    iget-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 410
    iget-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 411
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    .line 412
    iget-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 413
    iget-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4040

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 414
    iget-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    const v2, -0x44003d00

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 415
    iget-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v0, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 416
    iget-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mTextWidth:F

    .line 417
    if-eqz p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mTextXScale:F

    .line 418
    new-instance v0, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;

    invoke-direct {v0}, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;-><init>()V

    iput-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;

    .line 419
    return-void

    .line 417
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/16 v4, 0xff

    const/16 v5, 0x7f

    const/high16 v9, 0x40c0

    .line 458
    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 460
    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;

    invoke-virtual {v3}, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;

    invoke-virtual {v3}, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 462
    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 463
    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;

    invoke-virtual {v3}, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->getCurrent()F

    move-result v3

    iput v3, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mTextXScale:F

    .line 467
    :cond_0
    invoke-virtual {p0}, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 468
    .local v0, bounds:Landroid/graphics/Rect;
    iget v3, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mTextXScale:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mTextWidth:F

    sub-float/2addr v6, v7

    sub-float/2addr v6, v9

    sub-float/2addr v6, v9

    mul-float/2addr v3, v6

    add-float v1, v9, v3

    .line 469
    .local v1, x:F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    add-float/2addr v3, v6

    const/high16 v6, 0x4000

    div-float v2, v3, v6

    .line 470
    .local v2, y:F
    iget-object v6, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mActive:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 471
    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mPaint:Landroid/graphics/Paint;

    iget-boolean v6, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mActive:Z

    if-eqz v6, :cond_2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 472
    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mText:Ljava/lang/String;

    iget-object v4, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 473
    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mText:Ljava/lang/String;

    iget-object v4, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 474
    return-void

    :cond_1
    move v3, v5

    .line 470
    goto :goto_0

    :cond_2
    move v4, v5

    .line 471
    goto :goto_1
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 478
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 424
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 5
    .parameter "level"

    .prologue
    const-wide/16 v3, 0x32

    .line 441
    const/16 v0, 0xfa0

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mDelta:I

    if-gtz v0, :cond_1

    .line 443
    const/4 v0, 0x1

    iput v0, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mDelta:I

    .line 444
    iget-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;

    iget v1, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mTextXScale:F

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->startScrolling(FF)V

    .line 445
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v3

    invoke-virtual {p0, p0, v0, v1}, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 453
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0

    .line 447
    :cond_1
    const/16 v0, 0x1770

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mDelta:I

    if-ltz v0, :cond_0

    .line 449
    const/4 v0, -0x1

    iput v0, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mDelta:I

    .line 450
    iget-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;

    iget v1, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mTextXScale:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->startScrolling(FF)V

    .line 451
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v3

    invoke-virtual {p0, p0, v0, v1}, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 428
    sget-object v0, Lcom/lidroid/parts/ColorPickerDialog;->STATE_FOCUSED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    sget-object v1, Lcom/lidroid/parts/ColorPickerDialog;->STATE_PRESSED:[I

    invoke-static {v1, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mActive:Z

    .line 429
    invoke-virtual {p0}, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->invalidateSelf()V

    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 490
    iget-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 492
    iget-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;

    invoke-virtual {v0}, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->getCurrent()F

    move-result v0

    iput v0, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mTextXScale:F

    .line 493
    iget-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;

    invoke-virtual {v0}, Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;->invalidateSelf()V

    .line 498
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 483
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 487
    return-void
.end method
