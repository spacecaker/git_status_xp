.class public Lcom/sec/android/app/twlauncher/PageIndicator;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/PageIndicator$Page;
    }
.end annotation


# static fields
.field private static final center_padding:[I

.field private static final rate:[F

.field private static final rate_iconmenu:[F


# instance fields
.field mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field mBitmap:Landroid/graphics/Bitmap;

.field mCanvas:Landroid/graphics/Canvas;

.field mCurrentPage:I

.field private mDrawLastFrame:Z

.field mEnableShowHide:Z

.field mEnableTouch:Z

.field mFirstTextIndex:I

.field mGap:I

.field mIsDraw:Z

.field mIsHiding:Z

.field mIsVisibleLeftMore:Z

.field mIsVisibleRightMore:Z

.field mLeft:I

.field mMoreDrawable:Landroid/graphics/drawable/Drawable;

.field mMoreDrawableDim:[Landroid/graphics/drawable/Drawable;

.field mMoreGap:I

.field mOffsetY:I

.field mOrientation:I

.field mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

.field mPageDrawable:Landroid/graphics/drawable/Drawable;

.field mPageDrawableSmall:Landroid/graphics/drawable/Drawable;

.field mPaint:Landroid/graphics/Paint;

.field mScrollX:I

.field mTextPaint:Landroid/graphics/Paint;

.field mTextSize:I

.field mTop:I

.field mTotalPageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 35
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/twlauncher/PageIndicator;->rate:[F

    .line 40
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/twlauncher/PageIndicator;->rate_iconmenu:[F

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sec/android/app/twlauncher/PageIndicator;->center_padding:[I

    return-void

    .line 35
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5ct 0x8ft 0xc2t 0x3et
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 40
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x19t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 44
    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextPaint:Landroid/graphics/Paint;

    const-string v1, "/system/fonts/DroidSans-Bold.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 90
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsDraw:Z

    .line 91
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableTouch:Z

    .line 92
    return-void
.end method

.method static synthetic access$000()[F
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/sec/android/app/twlauncher/PageIndicator;->rate_iconmenu:[F

    return-object v0
.end method

.method static synthetic access$100()[F
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/sec/android/app/twlauncher/PageIndicator;->rate:[F

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/sec/android/app/twlauncher/PageIndicator;->center_padding:[I

    return-object v0
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)Z
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 157
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsDraw:Z

    if-nez v7, :cond_1

    :cond_0
    move v7, v10

    .line 205
    :goto_0
    return v7

    .line 159
    :cond_1
    const/4 v0, 0x0

    .line 160
    .local v0, animating:Z
    const/4 v6, 0x0

    .line 161
    .local v6, redraw:Z
    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPageCount:I

    .line 162
    .local v5, pageCount:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mGap:I

    .line 163
    .local v1, gap:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreGap:I

    .line 164
    .local v3, moreGap:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    sget-boolean v7, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mOrientation:I

    if-ne v7, v11, :cond_5

    .line 168
    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mScrollX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 170
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsDraw:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    .line 171
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 173
    :cond_2
    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mScrollX:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mOffsetY:I

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 178
    :goto_1
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsVisibleLeftMore:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    .line 179
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int v4, v7, v3

    .line 180
    .local v4, move:I
    neg-int v7, v4

    int-to-float v7, v7

    invoke-virtual {p1, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 181
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 182
    int-to-float v7, v4

    invoke-virtual {p1, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 185
    .end local v4           #move:I
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_6

    .line 186
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    aget-object v7, v7, v2

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFirstTextIndex:I

    add-int/2addr v8, v2

    invoke-virtual {v7, p1, v8}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->draw(Landroid/graphics/Canvas;I)Z

    move-result v0

    .line 187
    if-eqz v0, :cond_4

    const/4 v6, 0x1

    .line 188
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v1

    int-to-float v7, v7

    invoke-virtual {p1, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 175
    .end local v2           #i:I
    :cond_5
    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 191
    .restart local v2       #i:I
    :cond_6
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsVisibleRightMore:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_7

    .line 192
    sub-int v7, v3, v1

    int-to-float v7, v7

    invoke-virtual {p1, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 193
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 197
    if-nez v6, :cond_8

    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-eqz v7, :cond_8

    .line 198
    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    .line 199
    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsDraw:Z

    .line 200
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawLastFrame:Z

    if-eqz v7, :cond_8

    .line 201
    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawLastFrame:Z

    move v7, v11

    .line 202
    goto/16 :goto_0

    :cond_8
    move v7, v6

    .line 205
    goto/16 :goto_0
.end method

.method enableLeftMore(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsVisibleLeftMore:Z

    .line 210
    return-void
.end method

.method enableRightMore(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsVisibleRightMore:Z

    .line 214
    return-void
.end method

.method public enableShowHide(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    .line 120
    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsDraw:Z

    .line 121
    if-nez p1, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableTouch:Z

    .line 122
    return-void

    :cond_0
    move v0, v1

    .line 120
    goto :goto_0

    :cond_1
    move v0, v1

    .line 121
    goto :goto_1
.end method

.method getPageTouchArea(II)I
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 301
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableTouch:Z

    if-nez v9, :cond_1

    :cond_0
    move v9, v11

    .line 340
    :goto_0
    return v9

    .line 302
    :cond_1
    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPageCount:I

    .line 303
    .local v5, pageCount:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mGap:I

    .line 304
    .local v0, gap:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreGap:I

    .line 305
    .local v4, moreGap:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    .line 306
    .local v3, left:I
    div-int/lit8 v7, v0, 0x2

    .line 308
    .local v7, touchArea:I
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 309
    .local v8, width:I
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 310
    .local v1, height:I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 312
    .local v6, rect:Landroid/graphics/Rect;
    iput v12, v6, Landroid/graphics/Rect;->top:I

    .line 313
    iget v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    add-int/2addr v9, v1

    add-int/lit8 v9, v9, 0x8

    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 315
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsVisibleLeftMore:Z

    if-eqz v9, :cond_2

    .line 316
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int v9, v3, v9

    sub-int/2addr v9, v4

    sub-int/2addr v9, v7

    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 317
    iput v3, v6, Landroid/graphics/Rect;->right:I

    .line 319
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 320
    const/4 v9, -0x2

    goto :goto_0

    .line 324
    :cond_2
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsVisibleRightMore:Z

    if-eqz v9, :cond_3

    .line 325
    mul-int/lit8 v9, v8, 0x9

    add-int/2addr v9, v3

    mul-int/lit8 v10, v0, 0x7

    add-int/2addr v9, v10

    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 326
    iget v9, v6, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v7

    iput v9, v6, Landroid/graphics/Rect;->right:I

    .line 327
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 328
    const/4 v9, -0x3

    goto :goto_0

    .line 332
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_6

    .line 333
    mul-int v9, v8, v2

    add-int/2addr v9, v3

    if-lez v2, :cond_4

    const/4 v10, 0x1

    sub-int v10, v2, v10

    :goto_2
    mul-int/2addr v10, v0

    add-int/2addr v9, v10

    sub-int/2addr v9, v7

    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 334
    iget v9, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v8

    mul-int/lit8 v10, v7, 0x2

    add-int/2addr v9, v10

    iput v9, v6, Landroid/graphics/Rect;->right:I

    .line 336
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 337
    iget v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFirstTextIndex:I

    add-int/2addr v9, v2

    goto :goto_0

    :cond_4
    move v10, v12

    .line 333
    goto :goto_2

    .line 332
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v9, v11

    .line 340
    goto/16 :goto_0
.end method

.method public hide()V
    .locals 4

    .prologue
    .line 148
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    if-nez v2, :cond_0

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPageCount:I

    .line 150
    .local v1, pageCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 151
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->setDrawState(I)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    goto :goto_0
.end method

.method setCurrentPage(IZ)V
    .locals 6
    .parameter "current"
    .parameter "useLargeDrawablesOnly"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 264
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    .line 265
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-eqz v2, :cond_1

    .line 285
    :cond_0
    return-void

    .line 266
    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPageCount:I

    .line 267
    .local v1, pageCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 268
    if-ne v0, p1, :cond_4

    .line 269
    if-eqz p2, :cond_2

    .line 270
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->setDrawState(I)V

    .line 267
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_2
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFirstTextIndex:I

    add-int/2addr v2, v0

    const/16 v3, 0x9

    if-ge v2, v3, :cond_3

    .line 273
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    aget-object v2, v2, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->setDrawState(I)V

    goto :goto_1

    .line 275
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->setDrawState(I)V

    goto :goto_1

    .line 278
    :cond_4
    sub-int v2, p1, v4

    if-eq v0, v2, :cond_5

    add-int/lit8 v2, p1, 0x1

    if-ne v0, v2, :cond_6

    .line 280
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->setDrawState(I)V

    goto :goto_1

    .line 282
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->setDrawState(I)V

    goto :goto_1
.end method

.method setFirstTextNum(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 297
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFirstTextIndex:I

    .line 298
    return-void
.end method

.method setGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 217
    invoke-virtual {p0, p1, p1}, Lcom/sec/android/app/twlauncher/PageIndicator;->setGap(II)V

    .line 218
    return-void
.end method

.method setGap(II)V
    .locals 0
    .parameter "gap"
    .parameter "moregap"

    .prologue
    .line 221
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mGap:I

    .line 222
    iput p2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreGap:I

    .line 223
    return-void
.end method

.method public setMoreDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    return-void
.end method

.method public setMoreDrawableDim([Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "da"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMoreDrawableDim:[Landroid/graphics/drawable/Drawable;

    .line 116
    return-void
.end method

.method setOffset(II)V
    .locals 0
    .parameter "left"
    .parameter "top"

    .prologue
    .line 226
    iput p2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    .line 227
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    .line 228
    return-void
.end method

.method setOffsetY(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 235
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mOffsetY:I

    .line 236
    return-void
.end method

.method setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 239
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mOrientation:I

    .line 240
    return-void
.end method

.method setPageCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 243
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v1, :cond_1

    .line 244
    const/16 v1, 0xb

    if-le p1, v1, :cond_0

    .line 245
    const/16 p1, 0xb

    .line 253
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPageCount:I

    if-eq v1, p1, :cond_2

    .line 254
    new-array v1, p1, [Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    .line 255
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    new-instance v2, Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;-><init>(Lcom/sec/android/app/twlauncher/PageIndicator;)V

    aput-object v2, v1, v0

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 248
    .end local v0           #i:I
    :cond_1
    const/16 v1, 0x9

    if-le p1, v1, :cond_0

    .line 249
    const/16 p1, 0x9

    goto :goto_0

    .line 260
    :cond_2
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPageCount:I

    .line 261
    return-void
.end method

.method public setPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBitmap:Landroid/graphics/Bitmap;

    .line 100
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCanvas:Landroid/graphics/Canvas;

    .line 101
    return-void
.end method

.method public setPageDrawableSmall(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawableSmall:Landroid/graphics/drawable/Drawable;

    .line 105
    return-void
.end method

.method setScrollX(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 231
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mScrollX:I

    .line 232
    return-void
.end method

.method setTextSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 288
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextSize:I

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 290
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->show(Z)V

    .line 130
    return-void
.end method

.method public show(Z)V
    .locals 4
    .parameter "forced"

    .prologue
    .line 133
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsDraw:Z

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    .line 145
    :cond_0
    return-void

    .line 134
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsDraw:Z

    .line 135
    .local v0, draw:Z
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsDraw:Z

    .line 136
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    .line 137
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPageCount:I

    .line 138
    .local v2, pageCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 139
    if-nez v0, :cond_0

    .line 140
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPage:[Lcom/sec/android/app/twlauncher/PageIndicator$Page;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->initDrawState()V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
