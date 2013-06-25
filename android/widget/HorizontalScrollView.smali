.class public Landroid/widget/HorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "HorizontalScrollView.java"


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static DEBUG_BOUNCE:Z = false

.field static DEBUG_SCROLL:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final TAG:Ljava/lang/String; = "HorizontalScrollView"


# instance fields
.field private mActivePointerId:I

.field mBounceController:Landroid/widget/BounceController;

.field private mBounceEnabled:Z

.field mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowLeft:Landroid/widget/EdgeGlow;

.field private mEdgeGlowRight:Landroid/widget/EdgeGlow;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScrollViewMovedFocus:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    sput-boolean v0, Landroid/widget/HorizontalScrollView;->DEBUG_BOUNCE:Z

    .line 74
    sput-boolean v0, Landroid/widget/HorizontalScrollView;->DEBUG_SCROLL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 167
    const v0, 0x10102d1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 171
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 108
    iput-boolean v4, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 115
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 122
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 138
    iput-boolean v4, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 154
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 172
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initScrollView()V

    .line 174
    sget-object v2, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 177
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 180
    const/16 v2, 0x2d

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    return-void

    .line 182
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 183
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 184
    const-string v2, "HorizontalScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 310
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 311
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 313
    .local v1, childWidth:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    .line 315
    .end local v1           #childWidth:I
    :goto_0
    return v2

    .restart local v1       #childWidth:I
    :cond_0
    move v2, v5

    .line 313
    goto :goto_0

    .end local v1           #childWidth:I
    :cond_1
    move v2, v5

    .line 315
    goto :goto_0
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1767
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_1

    .line 1768
    :cond_0
    const/4 v0, 0x0

    .line 1773
    :goto_0
    return v0

    .line 1770
    :cond_1
    add-int v0, p2, p1

    if-le v0, p3, :cond_2

    .line 1771
    sub-int v0, p3, p2

    goto :goto_0

    :cond_2
    move v0, p1

    .line 1773
    goto :goto_0
.end method

.method private computeScrollBounce()V
    .locals 21

    .prologue
    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1314
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v8

    .line 1315
    .local v8, oldX:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v9

    .line 1316
    .local v9, oldY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v19

    .line 1317
    .local v19, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v20

    .line 1318
    .local v20, y:I
    const/16 v16, 0x0

    .line 1319
    .local v16, tempX:I
    const/16 v17, 0x0

    .line 1321
    .local v17, tempY:I
    move v0, v8

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move v0, v9

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 1328
    :cond_0
    sub-int v6, v19, v8

    sub-int v7, v20, v9

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    move v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1331
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 1333
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 1334
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1335
    .local v15, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result v16

    .line 1337
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result v17

    .line 1342
    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 1344
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/OverScroller;->getCurrVelocity(Z)F

    move-result v18

    .line 1347
    .local v18, velocity:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1349
    sget-boolean v5, Landroid/widget/HorizontalScrollView;->DEBUG_BOUNCE:Z

    if-eqz v5, :cond_2

    .line 1350
    const-string v5, "HorizontalScrollView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "computeScroll:: ActualY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ScrollerVal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/widget/BounceController$BounceRunnable;->start(F)V

    .line 1356
    .end local v15           #child:Landroid/view/View;
    .end local v18           #velocity:F
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    .line 1359
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidate()V

    .line 1361
    .end local v8           #oldX:I
    .end local v9           #oldY:I
    .end local v16           #tempX:I
    .end local v17           #tempY:I
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_4
    return-void
.end method

.method private doScrollX(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1156
    if-eqz p1, :cond_0

    .line 1157
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1158
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "leftFocus"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 890
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 891
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 900
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 902
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 903
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 904
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 905
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 906
    .local v8, viewLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 908
    .local v9, viewRight:I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    .line 914
    if-ge p2, v8, :cond_1

    if-ge v9, p3, :cond_1

    const/4 v10, 0x1

    move v7, v10

    .line 916
    .local v7, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 918
    move-object v1, v5

    .line 919
    move v3, v7

    .line 903
    .end local v7           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 914
    :cond_1
    const/4 v10, 0x0

    move v7, v10

    goto :goto_1

    .line 921
    .restart local v7       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    :cond_4
    const/4 v10, 0x1

    move v6, v10

    .line 925
    .local v6, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 926
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 932
    move-object v1, v5

    goto :goto_2

    .line 921
    .end local v6           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v10, 0x0

    move v6, v10

    goto :goto_3

    .line 935
    .restart local v6       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v7, :cond_7

    .line 940
    move-object v1, v5

    .line 941
    const/4 v3, 0x1

    goto :goto_2

    .line 942
    :cond_7
    if-eqz v6, :cond_0

    .line 947
    move-object v1, v5

    goto :goto_2

    .line 954
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewIsCloserToBoundary:Z
    .end local v7           #viewIsFullyContained:Z
    .end local v8           #viewLeft:I
    .end local v9           #viewRight:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "leftFocus"
    .parameter "left"
    .parameter "preferredFocusable"

    .prologue
    .line 861
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 862
    .local v0, fadingEdgeLength:I
    add-int v1, p2, v0

    .line 863
    .local v1, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 865
    .local v2, rightWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    move-object v3, p3

    .line 870
    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 828
    const/4 v1, 0x0

    .line 829
    .local v1, scrollRange:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 830
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 831
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 834
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 446
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 447
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 448
    .local v1, scrollX:I
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 449
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v1

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    .line 453
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollX:I
    :goto_0
    return v2

    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #scrollX:I
    :cond_0
    move v2, v3

    .line 449
    goto :goto_0

    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollX:I
    :cond_1
    move v2, v3

    .line 453
    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 231
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 232
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 233
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 234
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    .line 235
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    .line 236
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    .line 237
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    .line 238
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    .line 240
    new-instance v1, Landroid/widget/BounceController;

    invoke-direct {v1, p0}, Landroid/widget/BounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    .line 241
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v1, v2}, Landroid/widget/BounceController;->setOrientation(I)V

    .line 242
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v1}, Landroid/widget/BounceController;->makeScroller()Landroid/widget/OverScroller;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 243
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v1, v2}, Landroid/widget/BounceController;->getBounceRunnable(I)Landroid/widget/BounceController$BounceRunnable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    .line 245
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v1, 0x0

    .line 1135
    invoke-direct {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 1624
    if-ne p1, p2, :cond_0

    move v1, v2

    .line 1629
    :goto_0
    return v1

    .line 1628
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1629
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .parameter "descendant"
    .parameter "delta"

    .prologue
    .line 1143
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1144
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1146
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 797
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 798
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 799
    .local v1, pointerId:I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 803
    if-nez v2, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 804
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    .line 805
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 806
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 807
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 810
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 803
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1043
    const/4 v4, 0x1

    .line 1045
    .local v4, handled:Z
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 1046
    .local v6, width:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 1047
    .local v0, containerLeft:I
    add-int v1, v0, v6

    .line 1048
    .local v1, containerRight:I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_2

    move v3, v9

    .line 1050
    .local v3, goLeft:Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1051
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1052
    move-object v5, p0

    .line 1055
    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    .line 1056
    const/4 v4, 0x0

    .line 1062
    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1063
    iput-boolean v9, p0, Landroid/widget/HorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1064
    iput-boolean v8, p0, Landroid/widget/HorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1067
    :cond_1
    return v4

    .end local v3           #goLeft:Z
    .end local v5           #newFocused:Landroid/view/View;
    :cond_2
    move v3, v8

    .line 1048
    goto :goto_0

    .line 1058
    .restart local v3       #goLeft:Z
    .restart local v5       #newFocused:Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v7, p2, v0

    move v2, v7

    .line 1059
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1058
    .end local v2           #delta:I
    :cond_4
    sub-int v7, p3, v1

    move v2, v7

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1425
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1428
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1430
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1432
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1433
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1435
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 4
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v3, 0x0

    .line 1446
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1447
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 1448
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1449
    if-eqz p2, :cond_2

    .line 1450
    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1455
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v3

    .line 1447
    goto :goto_0

    .line 1452
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 277
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 281
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 286
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 304
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x42

    const/4 v9, 0x0

    .line 1079
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1080
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 1081
    const/4 v0, 0x0

    .line 1083
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1085
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1087
    .local v3, maxJump:I
    if-eqz v4, :cond_2

    invoke-direct {p0, v4, v3}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1088
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1089
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1090
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1091
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    .line 1092
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1115
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1122
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1123
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1124
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestFocus()Z

    .line 1125
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1127
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 1095
    .end local v6           #scrollDelta:I
    :cond_2
    move v6, v3

    .line 1097
    .restart local v6       #scrollDelta:I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v7

    if-ge v7, v6, :cond_4

    .line 1098
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    .line 1109
    :cond_3
    :goto_2
    if-nez v6, :cond_5

    move v7, v9

    .line 1110
    goto :goto_1

    .line 1099
    :cond_4
    if-ne p1, v10, :cond_3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1101
    invoke-virtual {p0, v9}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1103
    .local v1, daRight:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    add-int v5, v7, v8

    .line 1105
    .local v5, screenRight:I
    sub-int v7, v1, v5

    if-ge v7, v3, :cond_3

    .line 1106
    sub-int v6, v1, v5

    goto :goto_2

    .line 1112
    .end local v1           #daRight:I
    .end local v5           #screenRight:I
    :cond_5
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_3
    invoke-direct {p0, v7}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_0

    :cond_6
    neg-int v7, v6

    goto :goto_3
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 4

    .prologue
    .line 1232
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    .line 1234
    .local v0, extent:I
    iget-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    if-eqz v2, :cond_1

    .line 1235
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v2, v2, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->computeHorizontalScrollRange()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1236
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v3, v3, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1238
    .local v1, ratio:F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 1240
    .end local v1           #ratio:F
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1242
    :goto_0
    return v2

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1248
    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1250
    .local v2, offset:I
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_0

    .line 1251
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v3, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1252
    .local v3, savedBounceExtent:F
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->computeHorizontalScrollExtent()I

    move-result v4

    .line 1253
    .local v4, shrinkedScrollExtent:I
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iput v7, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1254
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->computeHorizontalScrollExtent()I

    move-result v1

    .line 1255
    .local v1, normalScrollExtent:I
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iput v3, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1257
    sub-int v0, v1, v4

    .line 1259
    .local v0, delta:I
    add-int/2addr v2, v0

    .line 1261
    .end local v0           #delta:I
    .end local v1           #normalScrollExtent:I
    .end local v3           #savedBounceExtent:F
    .end local v4           #shrinkedScrollExtent:I
    :cond_0
    return v2
.end method

.method protected computeHorizontalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1213
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    .line 1214
    .local v1, count:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1215
    .local v0, contentWidth:I
    if-nez v1, :cond_0

    move v5, v0

    .line 1228
    :goto_0
    return v5

    .line 1219
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1220
    .local v3, scrollRange:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 1221
    .local v4, scrollX:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1222
    .local v2, overscrollRight:I
    if-gez v4, :cond_2

    .line 1223
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v5, v3

    .line 1228
    goto :goto_0

    .line 1224
    :cond_2
    if-le v4, v2, :cond_1

    .line 1225
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    .line 1365
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    if-eqz v0, :cond_1

    .line 1366
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->computeScrollBounce()V

    .line 1417
    :cond_0
    :goto_0
    return-void

    .line 1370
    :cond_1
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 1392
    .local v3, oldX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 1393
    .local v4, oldY:I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 1394
    .local v12, x:I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 1396
    .local v13, y:I
    if-ne v3, v12, :cond_2

    if-eq v4, v13, :cond_4

    .line 1397
    :cond_2
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1399
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 1401
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v11

    .line 1402
    .local v11, range:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v10

    .line 1403
    .local v10, overscrollMode:I
    if-eqz v10, :cond_3

    const/4 v0, 0x1

    if-ne v10, v0, :cond_4

    if-lez v11, :cond_4

    .line 1405
    :cond_3
    if-gez v12, :cond_5

    if-ltz v3, :cond_5

    .line 1406
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 1412
    .end local v10           #overscrollMode:I
    .end local v11           #range:I
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    .line 1415
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidate()V

    goto :goto_0

    .line 1407
    .restart local v10       #overscrollMode:I
    .restart local v11       #range:I
    :cond_5
    if-le v12, v11, :cond_4

    if-gt v3, v11, :cond_4

    .line 1408
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v9, 0x0

    .line 1467
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    move v7, v9

    .line 1524
    :goto_0
    return v7

    .line 1470
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 1471
    .local v6, width:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    .line 1472
    .local v3, screenLeft:I
    add-int v4, v3, v6

    .line 1474
    .local v4, screenRight:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1477
    .local v1, fadingEdge:I
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-lez v7, :cond_1

    .line 1478
    add-int/2addr v3, v1

    .line 1482
    :cond_1
    iget v7, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v9}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 1483
    sub-int/2addr v4, v1

    .line 1486
    :cond_2
    const/4 v5, 0x0

    .line 1488
    .local v5, scrollXDelta:I
    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-le v7, v4, :cond_5

    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-le v7, v3, :cond_5

    .line 1493
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_4

    .line 1495
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v3

    add-int/2addr v5, v7

    .line 1502
    :goto_1
    invoke-virtual {p0, v9}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1503
    .local v2, right:I
    sub-int v0, v2, v4

    .line 1504
    .local v0, distanceToRight:I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .end local v0           #distanceToRight:I
    .end local v2           #right:I
    :cond_3
    :goto_2
    move v7, v5

    .line 1524
    goto :goto_0

    .line 1498
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v4

    add-int/2addr v5, v7

    goto :goto_1

    .line 1506
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_3

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_3

    .line 1512
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 1514
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1522
    :goto_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2

    .line 1517
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 392
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 1706
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1708
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_1

    .line 1709
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v6}, Landroid/widget/BounceController;->adjustBounceExtent()F

    move-result v6

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1711
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v1

    .line 1712
    .local v1, overscrollMode:I
    if-eqz v1, :cond_0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    if-lez v5, :cond_1

    .line 1714
    :cond_0
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_8

    .line 1715
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v6}, Landroid/widget/BounceController;->getBounceExtentRatio()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EdgeGlow;->onPull2(F)V

    .line 1722
    .end local v1           #overscrollMode:I
    :cond_1
    :goto_0
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    if-eqz v5, :cond_7

    .line 1723
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 1724
    .local v3, scrollX:I
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1725
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1726
    .local v2, restoreCount:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    .line 1728
    .local v0, height:I
    const/high16 v5, 0x4387

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1730
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_2

    .line 1734
    :cond_2
    neg-int v5, v0

    int-to-float v5, v5

    const/high16 v6, 0x3fc0

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1737
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 1738
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1739
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 1741
    :cond_3
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1743
    .end local v0           #height:I
    .end local v2           #restoreCount:I
    :cond_4
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1744
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1745
    .restart local v2       #restoreCount:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    .line 1746
    .local v4, width:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    .line 1748
    .restart local v0       #height:I
    const/high16 v5, 0x42b4

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1750
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_5

    .line 1755
    :cond_5
    neg-int v5, v0

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v4

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1757
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    mul-int/lit8 v6, v0, 0x2

    invoke-virtual {v5, v6, v4}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 1758
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1759
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 1761
    :cond_6
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1764
    .end local v0           #height:I
    .end local v2           #restoreCount:I
    .end local v3           #scrollX:I
    .end local v4           #width:I
    :cond_7
    return-void

    .line 1716
    .restart local v1       #overscrollMode:I
    :cond_8
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1

    .line 1717
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v6}, Landroid/widget/BounceController;->getBounceExtentRatio()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EdgeGlow;->onPull2(F)V

    goto/16 :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x11

    const/16 v4, 0x42

    .line 404
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 406
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_3

    .line 407
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 408
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 409
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 410
    const/4 v0, 0x0

    .line 411
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 413
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 442
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :goto_0
    return v3

    .restart local v0       #currentFocused:Landroid/view/View;
    .restart local v2       #nextFocused:Landroid/view/View;
    :cond_1
    move v3, v6

    .line 413
    goto :goto_0

    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_2
    move v3, v6

    .line 416
    goto :goto_0

    .line 419
    :cond_3
    const/4 v1, 0x0

    .line 420
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 421
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    :goto_1
    move v3, v1

    .line 442
    goto :goto_0

    .line 423
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 424
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 426
    :cond_5
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 428
    goto :goto_1

    .line 430
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 431
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 433
    :cond_6
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 435
    goto :goto_1

    .line 437
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_7
    move v3, v4

    goto :goto_2

    .line 421
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 15
    .parameter "velocityX"

    .prologue
    .line 1640
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1641
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v14, v0, v1

    .line 1642
    .local v14, width:I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v13

    .line 1644
    .local v13, right:I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    sub-int v6, v13, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    div-int/lit8 v9, v14, 0x2

    const/4 v10, 0x0

    move/from16 v3, p1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1647
    if-lez p1, :cond_3

    const/4 v0, 0x1

    move v11, v0

    .line 1649
    .local v11, movingRight:Z
    :goto_0
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v11, v0, v1}, Landroid/widget/HorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v12

    .line 1652
    .local v12, newFocused:Landroid/view/View;
    if-nez v12, :cond_0

    .line 1653
    move-object v12, p0

    .line 1656
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v12, v0, :cond_1

    if-eqz v11, :cond_4

    const/16 v0, 0x42

    :goto_1
    invoke-virtual {v12, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1658
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1659
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1662
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 1664
    .end local v11           #movingRight:Z
    .end local v12           #newFocused:Landroid/view/View;
    .end local v13           #right:I
    .end local v14           #width:I
    :cond_2
    return-void

    .line 1647
    .restart local v13       #right:I
    .restart local v14       #width:I
    :cond_3
    const/4 v0, 0x0

    move v11, v0

    goto :goto_0

    .line 1656
    .restart local v11       #movingRight:Z
    .restart local v12       #newFocused:Landroid/view/View;
    :cond_4
    const/16 v0, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v5, 0x0

    .line 1009
    const/16 v4, 0x42

    if-ne p1, v4, :cond_1

    const/4 v4, 0x1

    move v1, v4

    .line 1010
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 1012
    .local v3, width:I
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1013
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 1015
    if-eqz v1, :cond_0

    .line 1016
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1017
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1018
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1019
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1020
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1024
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v5

    .line 1009
    goto :goto_0
.end method

.method public getBounce()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 193
    const/4 v1, 0x0

    .line 201
    :goto_0
    return v1

    .line 196
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 197
    .local v0, length:I
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 198
    iget v1, p0, Landroid/view/View;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 201
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 225
    const/high16 v0, 0x3f00

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 207
    const/4 v3, 0x0

    .line 217
    :goto_0
    return v3

    .line 210
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 211
    .local v0, length:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 212
    .local v1, rightEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 213
    .local v2, span:I
    if-ge v2, v0, :cond_1

    .line 214
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .line 217
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1266
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1271
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1274
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1276
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1277
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 1282
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1284
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1286
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1289
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1290
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 469
    .local v7, action:I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 551
    :goto_0
    return v0

    .line 473
    :cond_0
    and-int/lit16 v0, v7, 0xff

    packed-switch v0, :pswitch_data_0

    .line 551
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 485
    :pswitch_1
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 486
    .local v8, activePointerId:I
    if-eq v8, v1, :cond_1

    .line 492
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 496
    .local v9, pointerIndex:I
    if-gez v9, :cond_2

    move v0, v2

    .line 497
    goto :goto_0

    .line 499
    :cond_2
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 500
    .local v10, x:F
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v11, v0

    .line 501
    .local v11, xDiff:I
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    if-le v11, v0, :cond_1

    .line 502
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 503
    iput v10, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    .line 504
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 511
    .end local v8           #activePointerId:I
    .end local v9           #pointerIndex:I
    .end local v10           #x:F
    .end local v11           #xDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 512
    .restart local v10       #x:F
    float-to-int v0, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->inChild(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 513
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 521
    :cond_3
    iput v10, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    .line 522
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 529
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    .line 536
    .end local v10           #x:F
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 537
    iput v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 538
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    goto :goto_1

    .line 543
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1589
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1590
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 1592
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1595
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1598
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 1599
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 361
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 363
    iget-boolean v6, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 368
    .local v5, widthMode:I
    if-eqz v5, :cond_0

    .line 372
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 373
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    .line 375
    .local v4, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 376
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 378
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 380
    .local v1, childHeightMeasureSpec:I
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v4, v6

    .line 381
    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v4, v6

    .line 382
    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 384
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 7
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v3, 0x0

    .line 815
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 816
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 817
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 818
    if-eqz p3, :cond_0

    .line 819
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 824
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    .line 825
    return-void

    .line 822
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x0

    .line 1552
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1553
    const/16 p1, 0x42

    .line 1558
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 1562
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    move v1, v3

    .line 1570
    :goto_2
    return v1

    .line 1554
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1555
    const/16 p1, 0x11

    goto :goto_0

    .line 1558
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 1566
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_3
    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    .line 1567
    goto :goto_2

    .line 1570
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1603
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1605
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1606
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1617
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v3, v4

    .line 1611
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1612
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1613
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1614
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1615
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 38
    .parameter "ev"

    .prologue
    .line 557
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v5

    if-eqz v5, :cond_0

    .line 561
    const/4 v5, 0x0

    .line 793
    :goto_0
    return v5

    .line 564
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 565
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 567
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 569
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    .line 571
    .local v23, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move/from16 v0, v23

    move v1, v5

    if-eq v0, v1, :cond_2

    const/4 v5, 0x3

    move/from16 v0, v23

    move v1, v5

    if-ne v0, v1, :cond_3

    .line 576
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/widget/BounceController$BounceRunnable;->start(F)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 578
    const/4 v5, 0x1

    goto :goto_0

    .line 581
    :cond_3
    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    packed-switch v5, :pswitch_data_0

    .line 793
    :cond_4
    :goto_1
    :pswitch_0
    const/4 v5, 0x1

    goto :goto_0

    .line 583
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 584
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    move v5, v0

    if-nez v5, :cond_6

    .line 585
    const/4 v5, 0x0

    goto :goto_0

    .line 583
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 592
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_7

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 597
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    .line 598
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 603
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    move v5, v0

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v5, v0

    invoke-interface {v5}, Landroid/widget/BounceController$BounceRunnable;->cancel()V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease2()V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease2()V

    goto :goto_1

    .line 616
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    move v5, v0

    if-eqz v5, :cond_4

    .line 618
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    move v5, v0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v24

    .line 619
    .local v24, activePointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v37

    .line 620
    .local v37, x:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    move v5, v0

    sub-float v5, v5, v37

    float-to-int v6, v5

    .line 621
    .local v6, deltaX:I
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    .line 633
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    move v5, v0

    if-eqz v5, :cond_12

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v5, v0

    if-eqz v5, :cond_8

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v5, v0

    invoke-interface {v5}, Landroid/widget/BounceController$BounceRunnable;->cancel()V

    .line 638
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v32, v0

    .line 639
    .local v32, prevBounceExtent:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v35

    .line 640
    .local v35, scrollX:I
    const/16 v27, 0x0

    .line 641
    .local v27, delta:I
    const/16 v34, 0x0

    .line 643
    .local v34, scroll:I
    move/from16 v27, v6

    .line 644
    move/from16 v34, v35

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v0, v27

    int-to-float v0, v0

    move v6, v0

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    .line 649
    .end local v6           #deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_9

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v0, v27

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 651
    const/16 v27, 0x0

    .line 652
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 653
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 655
    :cond_9
    move/from16 v0, v27

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v6, v0

    iget v6, v6, Landroid/widget/BounceController;->mBounceExtent:F

    sub-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v27, v0

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 661
    :cond_a
    if-gez v27, :cond_b

    .line 662
    if-lez v34, :cond_f

    .line 663
    add-int v5, v34, v27

    if-gez v5, :cond_e

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    add-int v6, v34, v27

    neg-int v6, v6

    int-to-float v6, v6

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 666
    move/from16 v0, v34

    neg-int v0, v0

    move v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 679
    :cond_b
    :goto_3
    if-lez v27, :cond_c

    .line 680
    const/16 v26, 0x0

    .line 681
    .local v26, bottomEdge:I
    const/16 v25, 0x0

    .line 683
    .local v25, availableToScroll:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v6

    sub-int v26, v5, v6

    .line 684
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int v5, v5, v34

    sub-int v25, v5, v26

    .line 686
    if-lez v25, :cond_11

    .line 688
    move/from16 v0, v25

    move/from16 v1, v27

    if-le v0, v1, :cond_10

    .line 690
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 704
    .end local v25           #availableToScroll:I
    .end local v26           #bottomEdge:I
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    move v5, v0

    if-nez v5, :cond_d

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 706
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    cmpl-float v5, v5, v32

    if-eqz v5, :cond_4

    .line 707
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 669
    :cond_e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_3

    .line 672
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v0, v27

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    goto :goto_3

    .line 693
    .restart local v25       #availableToScroll:I
    .restart local v26       #bottomEdge:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    sub-int v6, v27, v25

    int-to-float v6, v6

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 695
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_4

    .line 699
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v0, v27

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 701
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    goto :goto_4

    .line 709
    .end local v25           #availableToScroll:I
    .end local v26           #bottomEdge:I
    .end local v27           #delta:I
    .end local v32           #prevBounceExtent:F
    .end local v34           #scroll:I
    .end local v35           #scrollX:I
    .restart local v6       #deltaX:I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v29, v0

    .line 710
    .local v29, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v30, v0

    .line 711
    .local v30, oldY:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v10

    .line 712
    .local v10, range:I
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v8, v0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    move v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 717
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v7, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v7

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 719
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v31

    .line 720
    .local v31, overscrollMode:I
    if-eqz v31, :cond_14

    const/4 v5, 0x1

    move/from16 v0, v31

    move v1, v5

    if-ne v0, v1, :cond_4

    if-lez v10, :cond_4

    .line 722
    :cond_14
    add-int v33, v29, v6

    .line 723
    .local v33, pulledToX:I
    if-gez v33, :cond_17

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    .end local v6           #deltaX:I
    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_15

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 734
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_4

    .line 736
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    goto/16 :goto_1

    .line 728
    .restart local v6       #deltaX:I
    :cond_17
    move/from16 v0, v33

    move v1, v10

    if-le v0, v1, :cond_15

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    move-object v5, v0

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    .end local v6           #deltaX:I
    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_15

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_5

    .line 743
    .end local v10           #range:I
    .end local v24           #activePointerIndex:I
    .end local v29           #oldX:I
    .end local v30           #oldY:I
    .end local v31           #overscrollMode:I
    .end local v33           #pulledToX:I
    .end local v37           #x:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    move v5, v0

    if-eqz v5, :cond_4

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    .line 745
    .local v36, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    move v6, v0

    int-to-float v6, v6

    move-object/from16 v0, v36

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 746
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    move v5, v0

    move-object/from16 v0, v36

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v28, v0

    .line 748
    .local v28, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_18

    .line 749
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    move v6, v0

    if-le v5, v6, :cond_1a

    .line 750
    move/from16 v0, v28

    neg-int v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fling(I)V

    .line 759
    :cond_18
    :goto_6
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 760
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-eqz v5, :cond_19

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 764
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 766
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    goto/16 :goto_1

    .line 752
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v15

    .line 753
    .local v15, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v13, v0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 754
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    goto :goto_6

    .line 773
    .end local v15           #right:I
    .end local v28           #initialVelocity:I
    .end local v36           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    move v5, v0

    if-eqz v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v22}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 775
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 777
    :cond_1b
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 778
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-eqz v5, :cond_1c

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 781
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 783
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    goto/16 :goto_1

    .line 790
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v6, 0x0

    .line 972
    const/16 v4, 0x42

    if-ne p1, v4, :cond_1

    const/4 v4, 0x1

    move v1, v4

    .line 973
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 975
    .local v3, width:I
    if-eqz v1, :cond_2

    .line 976
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v5

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 977
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 978
    .local v0, count:I
    if-lez v0, :cond_0

    .line 979
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 980
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 981
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 990
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 992
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v6

    .line 972
    goto :goto_0

    .line 985
    .restart local v1       #right:Z
    .restart local v3       #width:I
    :cond_2
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 986
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_0

    .line 987
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1529
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1530
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1531
    invoke-direct {p0, p2}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1538
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1539
    return-void

    .line 1535
    :cond_1
    iput-object p2, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1576
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1578
    invoke-direct {p0, p2, p3}, Landroid/widget/HorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1583
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 1584
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1585
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1673
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1674
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1675
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p1

    .line 1676
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p2

    .line 1677
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1678
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1681
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setEnableBounce(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 253
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    .line 254
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v0, p1}, Landroid/widget/BounceController;->setEnableBounce(Z)V

    .line 256
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0, v1, v2}, Landroid/widget/BounceController;->setEdgeGlows(Landroid/widget/EdgeGlow;Landroid/widget/EdgeGlow;)V

    .line 258
    :cond_0
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 336
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 337
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    .line 338
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 340
    :cond_0
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 1685
    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 1686
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    if-nez v3, :cond_0

    .line 1687
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1688
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x1080242

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1689
    .local v0, edge:Landroid/graphics/drawable/Drawable;
    const v3, 0x1080243

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1690
    .local v1, glow:Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    .line 1691
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    .line 1694
    .end local v0           #edge:Landroid/graphics/drawable/Drawable;
    .end local v1           #glow:Landroid/graphics/drawable/Drawable;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setEnableBounce(Z)V

    .line 1701
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 1702
    return-void

    .line 1696
    :cond_1
    iput-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    .line 1697
    iput-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    .line 1699
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setEnableBounce(Z)V

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 356
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 357
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 1172
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1193
    :goto_0
    return-void

    .line 1176
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    sub-long v0, v6, v8

    .line 1177
    .local v0, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 1178
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v5, v6, v7

    .line 1179
    .local v5, width:I
    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1180
    .local v3, right:I
    sub-int v6, v3, v5

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1181
    .local v2, maxX:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 1182
    .local v4, scrollX:I
    add-int v6, v4, p1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p1, v6, v4

    .line 1184
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v6, v4, v7, p1, v10}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1185
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 1192
    .end local v2           #maxX:I
    .end local v3           #right:I
    .end local v4           #scrollX:I
    .end local v5           #width:I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    goto :goto_0

    .line 1187
    :cond_1
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1188
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1190
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1202
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1203
    return-void
.end method
