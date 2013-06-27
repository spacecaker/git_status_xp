.class public Lcom/sec/android/app/twlauncher/PageIndicator$Page;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Page"
.end annotation


# instance fields
.field mAnimationDuration:I

.field mAnimationFrom:F

.field mAnimationStartTime:J

.field mAnimationState:I

.field mAnimationTo:F

.field mDrawState:I

.field mPrevDrawState:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/PageIndicator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/PageIndicator;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 355
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mPrevDrawState:I

    .line 345
    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    .line 347
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    .line 348
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationDuration:I

    .line 352
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mTempRect:Landroid/graphics/Rect;

    .line 353
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mTempRect2:Landroid/graphics/Rect;

    .line 357
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;I)Z
    .locals 32
    .parameter "canvas"
    .parameter "index"

    .prologue
    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 388
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationStartTime:J

    .line 389
    const/16 v28, 0x2

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    .line 392
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    .line 393
    .local v19, p:Landroid/graphics/Paint;
    const/16 v25, 0x0

    .line 394
    .local v25, value:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationStartTime:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationDuration:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v18, v28, v29

    .line 396
    .local v18, normalized:F
    const/high16 v28, 0x3f80

    cmpl-float v28, v18, v28

    if-ltz v28, :cond_1

    .line 397
    const/16 v28, 0x3

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    .line 399
    :cond_1
    const/high16 v28, 0x3f80

    move/from16 v0, v18

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 401
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationFrom:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationTo:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationFrom:F

    move/from16 v30, v0

    sub-float v29, v29, v30

    mul-float v29, v29, v18

    add-float v25, v28, v29

    .line 409
    .end local v18           #normalized:F
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    .line 410
    .local v17, iwidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .line 411
    .local v14, iheight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawableSmall:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-nez v28, :cond_b

    const/16 v28, 0x0

    move/from16 v16, v28

    .line 412
    .local v16, iswidth:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawableSmall:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-nez v28, :cond_c

    const/16 v28, 0x0

    move/from16 v15, v28

    .line 414
    .local v15, isheight:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    .line 417
    .local v21, paddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .line 418
    .local v23, paddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    .line 419
    .local v20, paddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    .line 420
    .local v22, paddingRight:I
    sub-int v28, v17, v21

    sub-int v12, v28, v22

    .line 421
    .local v12, defaultContentsWidth:I
    sub-int v28, v14, v23

    sub-int v11, v28, v20

    .line 423
    .local v11, defaultContentsHeight:I
    add-int/lit8 v28, p2, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 424
    .local v5, badgeText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mTempRect2:Landroid/graphics/Rect;

    move-object v7, v0

    .line 426
    .local v7, bounds:Landroid/graphics/Rect;
    const/16 v28, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v29

    move-object/from16 v0, v19

    move-object v1, v5

    move/from16 v2, v28

    move/from16 v3, v29

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 427
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 428
    .local v10, contentsWidth:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 429
    .local v9, contentsHeight:I
    const/16 v26, 0x0

    .line 430
    .local v26, verticalShift:I
    const/16 v24, 0x1

    .line 432
    .local v24, padding_value:I
    const-string v28, "1"

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_3

    const-string v28, "4"

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    :cond_3
    const-string v28, "ro.product.model"

    const-string v29, "Not Available"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "GT-S5830"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 433
    const/16 v24, 0x0

    .line 436
    :cond_4
    if-ge v10, v12, :cond_5

    .line 437
    move v10, v12

    .line 439
    :cond_5
    if-ge v9, v11, :cond_6

    .line 440
    sub-int v28, v11, v9

    div-int/lit8 v26, v28, 0x2

    .line 441
    move v9, v11

    .line 444
    :cond_6
    add-int v28, v10, v21

    add-int v27, v28, v22

    .line 445
    .local v27, width:I
    add-int v28, v9, v23

    add-int v13, v28, v20

    .line 447
    .local v13, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBitmap:Landroid/graphics/Bitmap;

    move-object v6, v0

    .line 448
    .local v6, bitmap:Landroid/graphics/Bitmap;
    const/16 v28, 0x0

    move-object v0, v6

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCanvas:Landroid/graphics/Canvas;

    move-object v8, v0

    .line 451
    .local v8, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v27

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 455
    sub-int v28, v27, v10

    div-int/lit8 v28, v28, 0x2

    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    sub-int v29, v10, v29

    div-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$200()[I

    move-result-object v29

    aget v29, v29, v24

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-int v29, v13, v9

    div-int/lit8 v29, v29, 0x2

    add-int v29, v29, v9

    sub-int v29, v29, v26

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object v0, v8

    move-object v1, v5

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v19

    .line 474
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 476
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3f80

    sub-float v29, v29, v25

    mul-float v28, v28, v29

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x3f80

    sub-float v30, v30, v25

    mul-float v29, v29, v30

    const/high16 v30, 0x4000

    div-float v29, v29, v30

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 477
    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 479
    sget-boolean v28, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v28, :cond_10

    .line 497
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 529
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_17

    .line 530
    const/16 v28, 0x1

    .line 533
    :goto_6
    return v28

    .line 402
    .end local v5           #badgeText:Ljava/lang/String;
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v8           #c:Landroid/graphics/Canvas;
    .end local v9           #contentsHeight:I
    .end local v10           #contentsWidth:I
    .end local v11           #defaultContentsHeight:I
    .end local v12           #defaultContentsWidth:I
    .end local v13           #height:I
    .end local v14           #iheight:I
    .end local v15           #isheight:I
    .end local v16           #iswidth:I
    .end local v17           #iwidth:I
    .end local v20           #paddingBottom:I
    .end local v21           #paddingLeft:I
    .end local v22           #paddingRight:I
    .end local v23           #paddingTop:I
    .end local v24           #padding_value:I
    .end local v26           #verticalShift:I
    .end local v27           #width:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 403
    sget-boolean v28, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v28, :cond_a

    .line 404
    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$000()[F

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    move/from16 v29, v0

    aget v25, v28, v29

    goto/16 :goto_0

    .line 406
    :cond_a
    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$100()[F

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    move/from16 v29, v0

    aget v25, v28, v29

    goto/16 :goto_0

    .line 411
    .restart local v14       #iheight:I
    .restart local v17       #iwidth:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawableSmall:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v28

    move/from16 v16, v28

    goto/16 :goto_1

    .line 412
    .restart local v16       #iswidth:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawableSmall:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v28

    move/from16 v15, v28

    goto/16 :goto_2

    .line 456
    .restart local v5       #badgeText:Ljava/lang/String;
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v8       #c:Landroid/graphics/Canvas;
    .restart local v9       #contentsHeight:I
    .restart local v10       #contentsWidth:I
    .restart local v11       #defaultContentsHeight:I
    .restart local v12       #defaultContentsWidth:I
    .restart local v13       #height:I
    .restart local v15       #isheight:I
    .restart local v20       #paddingBottom:I
    .restart local v21       #paddingLeft:I
    .restart local v22       #paddingRight:I
    .restart local v23       #paddingTop:I
    .restart local v24       #padding_value:I
    .restart local v26       #verticalShift:I
    .restart local v27       #width:I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 457
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_f

    .line 458
    if-lez v16, :cond_e

    if-lez v15, :cond_e

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawableSmall:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v16

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawableSmall:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 470
    :goto_7
    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$100()[F

    move-result-object v28

    const/16 v29, 0x2

    aget v28, v28, v29

    cmpl-float v28, v25, v28

    if-ltz v28, :cond_7

    .line 471
    sub-int v28, v27, v10

    div-int/lit8 v28, v28, 0x2

    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    sub-int v29, v10, v29

    div-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$200()[I

    move-result-object v29

    aget v29, v29, v24

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-int v29, v13, v9

    div-int/lit8 v29, v29, 0x2

    add-int v29, v29, v9

    sub-int v29, v29, v26

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object v0, v8

    move-object v1, v5

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v19

    goto/16 :goto_3

    .line 462
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v17

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 466
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v27

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_7

    .line 493
    :cond_10
    sub-int v28, v17, v27

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-int v29, v14, v13

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 494
    const/16 v28, 0x0

    const/16 v29, 0x0

    new-instance v30, Landroid/graphics/Paint;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p1

    move-object v1, v6

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 498
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 499
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 500
    if-eqz v16, :cond_12

    if-nez v15, :cond_13

    .line 501
    :cond_12
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3f80

    sub-float v29, v29, v25

    mul-float v28, v28, v29

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x3f80

    sub-float v30, v30, v25

    mul-float v29, v29, v30

    const/high16 v30, 0x4000

    div-float v29, v29, v30

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 502
    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 505
    :cond_13
    sget-boolean v28, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v28, :cond_15

    .line 526
    :cond_14
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    .line 519
    :cond_15
    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$100()[F

    move-result-object v28

    const/16 v29, 0x1

    aget v28, v28, v29

    cmpl-float v28, v25, v28

    if-lez v28, :cond_16

    .line 520
    sub-int v28, v17, v27

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-int v29, v14, v13

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 522
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    move/from16 v28, v0

    if-lez v28, :cond_14

    .line 523
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object v1, v6

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 533
    :cond_17
    const/16 v28, 0x0

    goto/16 :goto_6
.end method

.method initDrawState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 360
    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mPrevDrawState:I

    .line 361
    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    .line 362
    return-void
.end method

.method setDrawState(I)V
    .locals 2
    .parameter "drawState"

    .prologue
    .line 365
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mPrevDrawState:I

    .line 366
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    .line 368
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mPrevDrawState:I

    if-eq v0, v1, :cond_0

    .line 369
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    .line 371
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v0, :cond_1

    .line 372
    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$000()[F

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationTo:F

    .line 373
    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$000()[F

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mPrevDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationFrom:F

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$100()[F

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationTo:F

    .line 377
    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$100()[F

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mPrevDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationFrom:F

    goto :goto_0
.end method
