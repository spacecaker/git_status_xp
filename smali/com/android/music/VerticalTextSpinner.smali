.class public Lcom/android/music/VerticalTextSpinner;
.super Landroid/view/View;
.source "VerticalTextSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/VerticalTextSpinner$OnChangedListener;
    }
.end annotation


# static fields
.field private static SCROLL_DISTANCE:I

.field private static TEXT1_Y:I

.field private static TEXT2_Y:I

.field private static TEXT3_Y:I

.field private static TEXT4_Y:I

.field private static TEXT5_Y:I

.field private static TEXT_MARGIN_RIGHT:I

.field private static TEXT_SIZE:I

.field private static TEXT_SPACING:I


# instance fields
.field private isDraggingSelector:Z

.field private final mBackgroundFocused:Landroid/graphics/drawable/Drawable;

.field private mCurrentSelectedPos:I

.field private mDelayBetweenAnimations:J

.field private mDistanceOfEachAnimation:I

.field private mDownY:I

.field private mIsAnimationRunning:Z

.field private mListener:Lcom/android/music/VerticalTextSpinner$OnChangedListener;

.field private mNumberOfAnimations:I

.field private mScrollInterval:J

.field private mScrollMode:I

.field private mSelector:Landroid/graphics/drawable/Drawable;

.field private final mSelectorDefaultY:I

.field private final mSelectorFocused:Landroid/graphics/drawable/Drawable;

.field private final mSelectorHeight:I

.field private final mSelectorMaxY:I

.field private final mSelectorMinY:I

.field private final mSelectorNormal:Landroid/graphics/drawable/Drawable;

.field private mSelectorY:I

.field private mStopAnimation:Z

.field private mText1:Ljava/lang/String;

.field private mText2:Ljava/lang/String;

.field private mText3:Ljava/lang/String;

.field private mText4:Ljava/lang/String;

.field private mText5:Ljava/lang/String;

.field private mTextList:[Ljava/lang/String;

.field private final mTextPaintDark:Landroid/text/TextPaint;

.field private final mTextPaintLight:Landroid/text/TextPaint;

.field private mTotalAnimatedDistance:I

.field private mWrapAround:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/music/VerticalTextSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/music/VerticalTextSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    iput-boolean v4, p0, Lcom/android/music/VerticalTextSpinner;->mWrapAround:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/music/VerticalTextSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 107
    .local v0, scale:F
    const/high16 v1, 0x4190

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    .line 108
    const/high16 v1, 0x41c8

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/android/music/VerticalTextSpinner;->TEXT_MARGIN_RIGHT:I

    .line 109
    const/high16 v1, 0x41b0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    .line 110
    sget v1, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    sget v2, Lcom/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    add-int/2addr v1, v2

    sput v1, Lcom/android/music/VerticalTextSpinner;->SCROLL_DISTANCE:I

    .line 111
    sget v1, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    mul-int/lit8 v1, v1, 0x0

    sget v2, Lcom/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    mul-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    sput v1, Lcom/android/music/VerticalTextSpinner;->TEXT1_Y:I

    .line 112
    sget v1, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    mul-int/lit8 v1, v1, 0x1

    sget v2, Lcom/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    mul-int/lit8 v2, v2, 0x0

    add-int/2addr v1, v2

    sput v1, Lcom/android/music/VerticalTextSpinner;->TEXT2_Y:I

    .line 113
    sget v1, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/android/music/VerticalTextSpinner;->TEXT3_Y:I

    .line 114
    sget v1, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lcom/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sput v1, Lcom/android/music/VerticalTextSpinner;->TEXT4_Y:I

    .line 115
    sget v1, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    mul-int/lit8 v1, v1, 0x4

    sget v2, Lcom/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sput v1, Lcom/android/music/VerticalTextSpinner;->TEXT5_Y:I

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mBackgroundFocused:Landroid/graphics/drawable/Drawable;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorFocused:Landroid/graphics/drawable/Drawable;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorNormal:Landroid/graphics/drawable/Drawable;

    .line 121
    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorFocused:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorHeight:I

    .line 122
    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mBackgroundFocused:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v2, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorDefaultY:I

    .line 123
    iput v5, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorMinY:I

    .line 124
    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mBackgroundFocused:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v2, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorMaxY:I

    .line 126
    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorNormal:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 127
    iget v1, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorDefaultY:I

    iput v1, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    .line 129
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mTextPaintDark:Landroid/text/TextPaint;

    .line 130
    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mTextPaintDark:Landroid/text/TextPaint;

    sget v2, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 131
    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mTextPaintDark:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 134
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mTextPaintLight:Landroid/text/TextPaint;

    .line 135
    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mTextPaintLight:Landroid/text/TextPaint;

    sget v2, Lcom/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 136
    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mTextPaintLight:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 139
    iput v5, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 140
    const-wide/16 v1, 0x190

    iput-wide v1, p0, Lcom/android/music/VerticalTextSpinner;->mScrollInterval:J

    .line 141
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->calculateAnimationValues()V

    .line 142
    return-void
.end method

.method private calculateAnimationValues()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 459
    iget-wide v0, p0, Lcom/android/music/VerticalTextSpinner;->mScrollInterval:J

    long-to-int v0, v0

    sget v1, Lcom/android/music/VerticalTextSpinner;->SCROLL_DISTANCE:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    .line 460
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    if-ge v0, v2, :cond_0

    .line 461
    iput v2, p0, Lcom/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    .line 462
    sget v0, Lcom/android/music/VerticalTextSpinner;->SCROLL_DISTANCE:I

    iget v1, p0, Lcom/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    .line 463
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/VerticalTextSpinner;->mDelayBetweenAnimations:J

    .line 468
    :goto_0
    return-void

    .line 465
    :cond_0
    sget v0, Lcom/android/music/VerticalTextSpinner;->SCROLL_DISTANCE:I

    iget v1, p0, Lcom/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    .line 466
    iget-wide v0, p0, Lcom/android/music/VerticalTextSpinner;->mScrollInterval:J

    iget v2, p0, Lcom/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/music/VerticalTextSpinner;->mDelayBetweenAnimations:J

    goto :goto_0
.end method

.method private calculateTextPositions()V
    .locals 1

    .prologue
    .line 416
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/music/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mText1:Ljava/lang/String;

    .line 417
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/music/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mText2:Ljava/lang/String;

    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mText3:Ljava/lang/String;

    .line 419
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mText4:Ljava/lang/String;

    .line 420
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/music/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mText5:Ljava/lang/String;

    .line 421
    return-void
.end method

.method private canScrollDown()Z
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->mWrapAround:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canScrollUp()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 194
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->mWrapAround:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V
    .locals 4
    .parameter "canvas"
    .parameter "text"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 471
    invoke-virtual {p4, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v0, v2

    .line 472
    .local v0, width:I
    invoke-virtual {p0}, Lcom/android/music/VerticalTextSpinner;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    sget v3, Lcom/android/music/VerticalTextSpinner;->TEXT_MARGIN_RIGHT:I

    sub-int v1, v2, v3

    .line 473
    .local v1, x:I
    int-to-float v2, v1

    int-to-float v3, p3

    invoke-virtual {p1, p2, v2, v3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 474
    return-void
.end method

.method private getNewIndex(I)I
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 432
    iget v1, p0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    add-int v0, v1, p1

    .line 433
    .local v0, index:I
    if-gez v0, :cond_2

    .line 434
    iget-boolean v1, p0, Lcom/android/music/VerticalTextSpinner;->mWrapAround:Z

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    move v1, v0

    .line 446
    :goto_1
    return v1

    :cond_1
    move v1, v2

    .line 437
    goto :goto_1

    .line 439
    :cond_2
    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 440
    iget-boolean v1, p0, Lcom/android/music/VerticalTextSpinner;->mWrapAround:Z

    if-eqz v1, :cond_3

    .line 441
    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 443
    goto :goto_1
.end method

.method private getTextToDraw(I)Ljava/lang/String;
    .locals 2
    .parameter "offset"

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/android/music/VerticalTextSpinner;->getNewIndex(I)I

    move-result v0

    .line 425
    .local v0, index:I
    if-gez v0, :cond_0

    .line 426
    const-string v1, ""

    .line 428
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method private scroll()V
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->mIsAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 453
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/VerticalTextSpinner;->mIsAnimationRunning:Z

    .line 455
    invoke-virtual {p0}, Lcom/android/music/VerticalTextSpinner;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentSelectedPos()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 31
    .parameter "canvas"

    .prologue
    .line 262
    const/4 v13, 0x0

    .line 263
    .local v13, selectorLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    move v15, v0

    .line 264
    .local v15, selectorTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/VerticalTextSpinner;->getWidth()I

    move-result v14

    .line 265
    .local v14, selectorRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mSelectorHeight:I

    move/from16 v28, v0

    add-int v12, v27, v28

    .line 268
    .local v12, selectorBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move v2, v15

    move v3, v14

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mTextPaintDark:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    .line 278
    .local v21, textPaintDark:Landroid/text/TextPaint;
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/VerticalTextSpinner;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 281
    const/16 v24, 0x0

    .line 282
    .local v24, topLeft:I
    const/16 v26, 0x0

    .line 283
    .local v26, topTop:I
    move/from16 v25, v14

    .line 284
    .local v25, topRight:I
    add-int/lit8 v23, v15, 0xf

    .line 287
    .local v23, topBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mText1:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 288
    .local v16, text1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mText2:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 289
    .local v17, text2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mText3:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 290
    .local v18, text3:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mText4:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 291
    .local v19, text4:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mText5:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 292
    .local v20, text5:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mTextPaintLight:Landroid/text/TextPaint;

    move-object/from16 v22, v0

    .line 298
    .local v22, textPaintLight:Landroid/text/TextPaint;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 299
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v25

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 300
    sget v27, Lcom/android/music/VerticalTextSpinner;->TEXT1_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 302
    sget v27, Lcom/android/music/VerticalTextSpinner;->TEXT2_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 304
    sget v27, Lcom/android/music/VerticalTextSpinner;->TEXT3_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 313
    const/16 v27, 0x0

    add-int/lit8 v28, v15, 0xf

    const/16 v29, 0xf

    sub-int v29, v12, v29

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move v3, v14

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 315
    sget v27, Lcom/android/music/VerticalTextSpinner;->TEXT2_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v27

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 317
    sget v27, Lcom/android/music/VerticalTextSpinner;->TEXT3_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v27

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 319
    sget v27, Lcom/android/music/VerticalTextSpinner;->TEXT4_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, v27

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 321
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 324
    const/4 v6, 0x0

    .line 325
    .local v6, bottomLeft:I
    const/16 v27, 0xf

    sub-int v8, v12, v27

    .line 326
    .local v8, bottomTop:I
    move v7, v14

    .line 327
    .local v7, bottomRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/VerticalTextSpinner;->getMeasuredHeight()I

    move-result v5

    .line 333
    .local v5, bottomBottom:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 334
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move v2, v8

    move v3, v7

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 335
    sget v27, Lcom/android/music/VerticalTextSpinner;->TEXT3_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 337
    sget v27, Lcom/android/music/VerticalTextSpinner;->TEXT4_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 339
    sget v27, Lcom/android/music/VerticalTextSpinner;->TEXT5_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 341
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 346
    .end local v5           #bottomBottom:I
    .end local v6           #bottomLeft:I
    .end local v7           #bottomRight:I
    .end local v8           #bottomTop:I
    .end local v16           #text1:Ljava/lang/String;
    .end local v17           #text2:Ljava/lang/String;
    .end local v18           #text3:Ljava/lang/String;
    .end local v19           #text4:Ljava/lang/String;
    .end local v20           #text5:Ljava/lang/String;
    .end local v22           #textPaintLight:Landroid/text/TextPaint;
    .end local v23           #topBottom:I
    .end local v24           #topLeft:I
    .end local v25           #topRight:I
    .end local v26           #topTop:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/VerticalTextSpinner;->mIsAnimationRunning:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    .line 347
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    move/from16 v28, v0

    add-int v27, v27, v28

    sget v28, Lcom/android/music/VerticalTextSpinner;->SCROLL_DISTANCE:I

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_c

    .line 348
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 350
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    move v10, v0

    .line 351
    .local v10, oldPos:I
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/music/VerticalTextSpinner;->getNewIndex(I)I

    move-result v9

    .line 352
    .local v9, newPos:I
    if-ltz v9, :cond_2

    .line 353
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mListener:Lcom/android/music/VerticalTextSpinner$OnChangedListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mListener:Lcom/android/music/VerticalTextSpinner$OnChangedListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move v2, v10

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/music/VerticalTextSpinner$OnChangedListener;->onChanged(Lcom/android/music/VerticalTextSpinner;II[Ljava/lang/String;)V

    .line 358
    :cond_2
    if-ltz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    sub-int v27, v27, v28

    move v0, v9

    move/from16 v1, v27

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/VerticalTextSpinner;->mWrapAround:Z

    move/from16 v27, v0

    if-nez v27, :cond_4

    .line 359
    :cond_3
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 361
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/music/VerticalTextSpinner;->calculateTextPositions()V

    .line 376
    .end local v9           #newPos:I
    .end local v10           #oldPos:I
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 377
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    move v11, v0

    .line 382
    .local v11, previousScrollMode:I
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/VerticalTextSpinner;->mIsAnimationRunning:Z

    .line 383
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 384
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 389
    const-string v27, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 390
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/android/music/VerticalTextSpinner;->scroll()V

    .line 392
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 402
    .end local v11           #previousScrollMode:I
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/music/VerticalTextSpinner;->mDelayBetweenAnimations:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x0

    cmp-long v27, v27, v29

    if-lez v27, :cond_e

    .line 403
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/music/VerticalTextSpinner;->mDelayBetweenAnimations:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/music/VerticalTextSpinner;->postInvalidateDelayed(J)V

    goto/16 :goto_0

    .line 344
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mText3:Ljava/lang/String;

    move-object/from16 v27, v0

    sget v28, Lcom/android/music/VerticalTextSpinner;->TEXT3_Y:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    goto/16 :goto_1

    .line 362
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    move v10, v0

    .line 364
    .restart local v10       #oldPos:I
    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/music/VerticalTextSpinner;->getNewIndex(I)I

    move-result v9

    .line 365
    .restart local v9       #newPos:I
    if-ltz v9, :cond_9

    .line 366
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mListener:Lcom/android/music/VerticalTextSpinner$OnChangedListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_9

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mListener:Lcom/android/music/VerticalTextSpinner$OnChangedListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move v2, v10

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/music/VerticalTextSpinner$OnChangedListener;->onChanged(Lcom/android/music/VerticalTextSpinner;II[Ljava/lang/String;)V

    .line 371
    :cond_9
    if-ltz v9, :cond_a

    if-nez v9, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/VerticalTextSpinner;->mWrapAround:Z

    move/from16 v27, v0

    if-nez v27, :cond_b

    .line 372
    :cond_a
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 374
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/music/VerticalTextSpinner;->calculateTextPositions()V

    goto/16 :goto_2

    .line 396
    .end local v9           #newPos:I
    .end local v10           #oldPos:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 397
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    goto/16 :goto_3

    .line 398
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 399
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    goto/16 :goto_3

    .line 405
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/VerticalTextSpinner;->invalidate()V

    goto/16 :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 200
    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mBackgroundFocused:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/music/VerticalTextSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorFocused:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 208
    :goto_0
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/VerticalTextSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorNormal:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 206
    iget v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorDefaultY:I

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 175
    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 177
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->scroll()V

    .line 178
    iput-boolean v1, p0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    move v0, v1

    .line 186
    :goto_0
    return v0

    .line 180
    :cond_0
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iput v1, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 182
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->scroll()V

    .line 183
    iput-boolean v1, p0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    move v0, v1

    .line 184
    goto :goto_0

    .line 186
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 213
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 215
    .local v2, y:I
    packed-switch v0, :pswitch_data_0

    .line 250
    :pswitch_0
    iget v3, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorDefaultY:I

    iput v3, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    .line 251
    iput-boolean v5, p0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 252
    invoke-virtual {p0}, Lcom/android/music/VerticalTextSpinner;->invalidate()V

    .line 255
    :cond_0
    :goto_0
    return v5

    .line 217
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/music/VerticalTextSpinner;->requestFocus()Z

    .line 218
    iput v2, p0, Lcom/android/music/VerticalTextSpinner;->mDownY:I

    .line 219
    iget v3, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    if-lt v2, v3, :cond_1

    iget v3, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    iget-object v4, p0, Lcom/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_1

    move v3, v5

    :goto_1
    iput-boolean v3, p0, Lcom/android/music/VerticalTextSpinner;->isDraggingSelector:Z

    goto :goto_0

    :cond_1
    move v3, v6

    goto :goto_1

    .line 224
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/music/VerticalTextSpinner;->isDraggingSelector:Z

    if-eqz v3, :cond_0

    .line 225
    iget v3, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorDefaultY:I

    iget v4, p0, Lcom/android/music/VerticalTextSpinner;->mDownY:I

    sub-int v4, v2, v4

    add-int v1, v3, v4

    .line 226
    .local v1, top:I
    iget v3, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorMinY:I

    if-gt v1, v3, :cond_2

    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    iget v3, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorMinY:I

    iput v3, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    .line 228
    iput-boolean v6, p0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 229
    iget v3, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    if-eq v3, v7, :cond_0

    .line 230
    iput v7, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 231
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->scroll()V

    goto :goto_0

    .line 233
    :cond_2
    iget v3, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorMaxY:I

    if-lt v1, v3, :cond_3

    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 234
    iget v3, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorMaxY:I

    iput v3, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    .line 235
    iput-boolean v6, p0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 236
    iget v3, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    if-eq v3, v5, :cond_0

    .line 237
    iput v5, p0, Lcom/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 238
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->scroll()V

    goto :goto_0

    .line 241
    :cond_3
    iput v1, p0, Lcom/android/music/VerticalTextSpinner;->mSelectorY:I

    .line 242
    iput-boolean v5, p0, Lcom/android/music/VerticalTextSpinner;->mStopAnimation:Z

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setItems([Ljava/lang/String;)V
    .locals 0
    .parameter "textList"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->calculateTextPositions()V

    .line 151
    return-void
.end method

.method public setScrollInterval(J)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/android/music/VerticalTextSpinner;->mScrollInterval:J

    .line 161
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->calculateAnimationValues()V

    .line 162
    return-void
.end method

.method public setSelectedPos(I)V
    .locals 0
    .parameter "selectedPos"

    .prologue
    .line 154
    iput p1, p0, Lcom/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    .line 155
    invoke-direct {p0}, Lcom/android/music/VerticalTextSpinner;->calculateTextPositions()V

    .line 156
    invoke-virtual {p0}, Lcom/android/music/VerticalTextSpinner;->postInvalidate()V

    .line 157
    return-void
.end method

.method public setWrapAround(Z)V
    .locals 0
    .parameter "wrap"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/music/VerticalTextSpinner;->mWrapAround:Z

    .line 166
    return-void
.end method
