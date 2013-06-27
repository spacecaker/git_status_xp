.class public Lcom/sec/android/app/twlauncher/BubbleTextView;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mBadgeRightOffset:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCompoundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCornerRadius:F

.field private mFontSizeDefault:I

.field private mFontSizeSmall:I

.field private mIsPressed:Z

.field private mPaddingH:F

.field private mPaddingV:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

.field private final mRect:Landroid/graphics/RectF;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTempRect2:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->init()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTempRect2:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->init()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTempRect2:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->init()V

    .line 81
    return-void
.end method

.method private drawBadge(Landroid/graphics/Canvas;)V
    .locals 28
    .parameter "canvas"

    .prologue
    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v21

    .line 224
    .local v21, tag:Ljava/lang/Object;
    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    move-object/from16 v0, v21

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v14, v0

    .line 226
    .local v14, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getBadgeCount(Lcom/sec/android/app/twlauncher/ShortcutInfo;)I

    move-result v25

    move/from16 v0, v25

    move-object v1, v14

    iput v0, v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    .line 227
    move-object v0, v14

    iget v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    move/from16 v25, v0

    if-lez v25, :cond_0

    .line 229
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 242
    :goto_1
    move-object v0, v14

    iget v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    move/from16 v25, v0

    const/16 v26, 0x64

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeSmall:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 248
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 249
    .local v15, iwidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 250
    .local v13, iheight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    .line 252
    .local v18, paddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    .line 253
    .local v20, paddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    .line 254
    .local v17, paddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    .line 255
    .local v19, paddingRight:I
    sub-int v25, v15, v18

    sub-int v10, v25, v19

    .line 256
    .local v10, defaultContentsWidth:I
    sub-int v25, v13, v20

    sub-int v9, v25, v17

    .line 258
    .local v9, defaultContentsHeight:I
    move-object v0, v14

    iget v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, badgeText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    .line 260
    .local v6, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v25

    move-object v1, v5

    move/from16 v2, v26

    move/from16 v3, v27

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 262
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 263
    .local v8, contentsWidth:I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 264
    .local v7, contentsHeight:I
    const/4 v12, 0x0

    .line 265
    .local v12, horizontalShift:I
    const/16 v23, 0x0

    .line 266
    .local v23, verticalShift:I
    if-ge v8, v10, :cond_2

    .line 267
    sub-int v25, v10, v8

    div-int/lit8 v12, v25, 0x2

    .line 268
    move v8, v10

    .line 270
    :cond_2
    if-ge v7, v9, :cond_3

    .line 271
    sub-int v25, v9, v7

    div-int/lit8 v23, v25, 0x2

    .line 272
    move v7, v9

    .line 275
    :cond_3
    add-int v25, v8, v18

    add-int v24, v25, v19

    .line 276
    .local v24, width:I
    add-int v25, v7, v20

    add-int v11, v25, v17

    .line 278
    .local v11, height:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollY:I

    move/from16 v22, v0

    .line 279
    .local v22, top:I
    const/16 v16, 0x0

    .line 281
    .local v16, left:I
    move-object v0, v14

    iget v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    move/from16 v25, v0

    const/16 v26, 0x64

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    .line 282
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollX:I

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getWidth()I

    move-result v26

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeRightOffset:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v16, v25, v24

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    add-int v26, v16, v24

    add-int v27, v22, v11

    move-object/from16 v0, v25

    move/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 293
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 295
    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v25, v12, v25

    add-int v25, v25, v16

    add-int v25, v25, v18

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v26, v23, v26

    add-int v26, v26, v22

    add-int v26, v26, v20

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 233
    .end local v5           #badgeText:Ljava/lang/String;
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v7           #contentsHeight:I
    .end local v8           #contentsWidth:I
    .end local v9           #defaultContentsHeight:I
    .end local v10           #defaultContentsWidth:I
    .end local v11           #height:I
    .end local v12           #horizontalShift:I
    .end local v13           #iheight:I
    .end local v15           #iwidth:I
    .end local v16           #left:I
    .end local v17           #paddingBottom:I
    .end local v18           #paddingLeft:I
    .end local v19           #paddingRight:I
    .end local v20           #paddingTop:I
    .end local v22           #top:I
    .end local v23           #verticalShift:I
    .end local v24           #width:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/16 :goto_1

    .line 245
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeDefault:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_2

    .line 286
    .restart local v5       #badgeText:Ljava/lang/String;
    .restart local v6       #bounds:Landroid/graphics/Rect;
    .restart local v7       #contentsHeight:I
    .restart local v8       #contentsWidth:I
    .restart local v9       #defaultContentsHeight:I
    .restart local v10       #defaultContentsWidth:I
    .restart local v11       #height:I
    .restart local v12       #horizontalShift:I
    .restart local v13       #iheight:I
    .restart local v15       #iwidth:I
    .restart local v16       #left:I
    .restart local v17       #paddingBottom:I
    .restart local v18       #paddingLeft:I
    .restart local v19       #paddingRight:I
    .restart local v20       #paddingTop:I
    .restart local v22       #top:I
    .restart local v23       #verticalShift:I
    .restart local v24       #width:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollX:I

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getWidth()I

    move-result v26

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeRightOffset:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v16, v25, v15

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    add-int v26, v16, v15

    add-int v27, v22, v13

    move-object/from16 v0, v25

    move/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 290
    if-le v8, v10, :cond_4

    .line 291
    sub-int v25, v10, v8

    div-int/lit8 v12, v25, 0x2

    goto/16 :goto_3
.end method

.method private getBadgeCount(Lcom/sec/android/app/twlauncher/ShortcutInfo;)I
    .locals 2
    .parameter "info"

    .prologue
    .line 300
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 301
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v0

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 84
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setFocusable(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 86
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 89
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    .local v0, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    const v3, 0x7f070002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 95
    .local v1, scale:F
    const/high16 v2, 0x4100

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    .line 96
    const/high16 v2, 0x40a0

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingH:F

    .line 98
    const/high16 v2, 0x3f80

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingV:F

    .line 100
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, 0x7f00

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 102
    sget-boolean v2, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v2, :cond_0

    .line 103
    const v2, 0x7f020031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    :goto_0
    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeDefault:I

    .line 108
    const v2, 0x7f090022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeSmall:I

    .line 109
    const v2, 0x7f090020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeRightOffset:I

    .line 111
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeDefault:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 114
    sget-boolean v2, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    const v3, 0x7f070012

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 120
    :goto_1
    return-void

    .line 105
    :cond_0
    const v2, 0x7f020030

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    const v3, 0x7f070010

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 188
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 189
    iget v4, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollX:I

    .line 190
    .local v4, scrollX:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollY:I

    .line 192
    .local v5, scrollY:I
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackgroundSizeChanged:Z

    if-eqz v7, :cond_0

    .line 193
    iget v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRight:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBottom:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v0, v12, v12, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 194
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 197
    :cond_0
    or-int v7, v4, v5

    if-nez v7, :cond_2

    .line 198
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 206
    .end local v4           #scrollX:I
    .end local v5           #scrollY:I
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 207
    .local v1, layout:Landroid/text/Layout;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 208
    .local v3, rect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v2

    .line 209
    .local v2, left:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getExtendedPaddingTop()I

    move-result v6

    .line 211
    .local v6, top:I
    int-to-float v7, v2

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingH:F

    sub-float/2addr v7, v8

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    add-int/2addr v8, v6

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingV:F

    sub-float/2addr v8, v9

    int-to-float v9, v2

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingH:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollX:I

    iget v11, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mLeft:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    add-int/2addr v10, v6

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingV:F

    add-float/2addr v10, v11

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 215
    iget v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 217
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->drawBadge(Landroid/graphics/Canvas;)V

    .line 220
    return-void

    .line 200
    .end local v1           #layout:Landroid/text/Layout;
    .end local v2           #left:I
    .end local v3           #rect:Landroid/graphics/RectF;
    .end local v6           #top:I
    .restart local v4       #scrollX:I
    .restart local v5       #scrollY:I
    :cond_2
    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 201
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 202
    neg-int v7, v4

    int-to-float v7, v7

    neg-int v8, v5

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 137
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 138
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getDrawableState()[I

    move-result-object v7

    .line 139
    .local v7, state:[I
    const/4 v6, 0x0

    .line 140
    .local v6, pressed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_0

    .line 141
    aget v8, v7, v3

    const v9, 0x10100a7

    if-ne v8, v9, :cond_4

    .line 142
    const/4 v6, 0x1

    .line 147
    :cond_0
    if-nez v6, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 148
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 151
    :cond_1
    if-eqz v6, :cond_5

    .line 152
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    .line 153
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 154
    .local v4, icon:[Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    aget-object v8, v4, v11

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    if-nez v8, :cond_2

    .line 155
    aget-object v8, v4, v11

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCompoundDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    aget-object v8, v4, v11

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 157
    .local v5, oldRect:Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 159
    .local v1, c:Landroid/graphics/Canvas;
    aget-object v8, v4, v11

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v8, v13, v13, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 160
    aget-object v8, v4, v11

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    aget-object v8, v4, v11

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 162
    new-instance v8, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-direct {v8, v0}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    .line 163
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 164
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-virtual {v8, v12}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 167
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v5           #oldRect:Landroid/graphics/Rect;
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    if-eqz v8, :cond_3

    .line 168
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-virtual {p0, v12, v8, v12, v12}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->invalidate()V

    .line 182
    .end local v4           #icon:[Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_1
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 183
    return-void

    .line 140
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 172
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCompoundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    .line 173
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCompoundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v12, v8, v12, v12}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 176
    :cond_6
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    if-eqz v8, :cond_3

    .line 177
    iput-boolean v13, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->invalidate()V

    goto :goto_1
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 124
    iget v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRight:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTop:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBottom:I

    if-eq v0, p4, :cond_1

    .line 125
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 127
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
