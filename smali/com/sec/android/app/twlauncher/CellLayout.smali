.class public Lcom/sec/android/app/twlauncher/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;,
        Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mActualCellHeight:I

.field private mActualCellWidth:I

.field private mCellHeight:I

.field private final mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mCellWidth:I

.field mCellXY:[I

.field private mDimPaint:Landroid/graphics/Paint;

.field private mDirtyTag:Z

.field private mDragRect:Landroid/graphics/RectF;

.field private mHeightGap:I

.field private mIspadding:Z

.field private mLastDownOnOccupiedCell:Z

.field private mLongAxisCells:I

.field private mLongAxisEndPadding:I

.field private mLongAxisStartPadding:I

.field mOccupied:[[Z

.field private mPortrait:Z

.field private final mRect:Landroid/graphics/Rect;

.field private mShortAxisCells:I

.field private mShortAxisEndPadding:I

.field private mShortAxisStartPadding:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v2, 0xa

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 58
    new-instance v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 60
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellXY:[I

    .line 64
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    .line 67
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 86
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    .line 89
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    .line 91
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisStartPadding:I

    .line 93
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisEndPadding:I

    .line 95
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisStartPadding:I

    .line 97
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisEndPadding:I

    .line 100
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    .line 101
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    if-nez v1, :cond_0

    .line 108
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 109
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    .line 115
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellWidth:I

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellHeight:I

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mIspadding:Z

    .line 121
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDimPaint:Landroid/graphics/Paint;

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDimPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, 0x7fff

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 123
    return-void

    .line 111
    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;IIII[[Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 37
    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/twlauncher/CellLayout;->findIntersectingVacantCells(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;IIII[[Z)V

    return-void
.end method

.method private static addVacantCell(Landroid/graphics/Rect;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 3
    .parameter "current"
    .parameter "cellInfo"

    .prologue
    .line 348
    invoke-static {}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->acquire()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    move-result-object v0

    .line 349
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    .line 350
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    .line 351
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    .line 352
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    .line 353
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    iget v2, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanX:I

    if-le v1, v2, :cond_0

    .line 354
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 355
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 357
    :cond_0
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    iget v2, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanY:I

    if-le v1, v2, :cond_1

    .line 358
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 359
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 361
    :cond_1
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

.method private static findIntersectingVacantCells(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;IIII[[Z)V
    .locals 1
    .parameter "cellInfo"
    .parameter "x"
    .parameter "y"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/high16 v0, -0x8000

    .line 294
    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 295
    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 296
    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 297
    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 298
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->clearVacantCells()V

    .line 300
    aget-object v0, p5, p1

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-static {v0, p3, p4, p5, p0}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_0
.end method

.method private findOccupiedCells(II[[ZLandroid/view/View;)V
    .locals 8
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "ignoreView"

    .prologue
    .line 810
    const/4 v4, 0x0

    .local v4, x:I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 811
    const/4 v5, 0x0

    .local v5, y:I
    :goto_1
    if-ge v5, p2, :cond_0

    .line 812
    aget-object v6, p3, v4

    const/4 v7, 0x0

    aput-boolean v7, v6, v5

    .line 811
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 810
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 816
    .end local v5           #y:I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 817
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 818
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 819
    .local v0, child:Landroid/view/View;
    instance-of v6, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-nez v6, :cond_2

    if-ne v0, p4, :cond_3

    .line 817
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 822
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 823
    .local v3, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v4, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    :goto_3
    iget v6, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_2

    if-ge v4, p1, :cond_2

    .line 824
    iget v5, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    .restart local v5       #y:I
    :goto_4
    iget v6, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    iget v7, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_4

    if-ge v5, p2, :cond_4

    .line 825
    aget-object v6, p3, v4

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 824
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 823
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 829
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    .end local v5           #y:I
    :cond_5
    return-void
.end method

.method private static findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 4
    .parameter "current"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "cellInfo"

    .prologue
    const/4 v3, 0x1

    .line 312
    invoke-static {p0, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->addVacantCell(Landroid/graphics/Rect;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 314
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    .line 315
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/sec/android/app/twlauncher/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 317
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 318
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 322
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p1, v3

    if-ge v0, v1, :cond_1

    .line 323
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/sec/android/app/twlauncher/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 325
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 326
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 330
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_2

    .line 331
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/sec/android/app/twlauncher/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 333
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 334
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 338
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v3

    if-ge v0, v1, :cond_3

    .line 339
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/sec/android/app/twlauncher/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 341
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 342
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 345
    :cond_3
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 8
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 770
    const/4 v3, 0x0

    .local v3, x:I
    :goto_0
    if-ge v3, p3, :cond_7

    .line 771
    const/4 v4, 0x0

    .local v4, y:I
    :goto_1
    if-ge v4, p4, :cond_6

    .line 772
    aget-object v5, p5, v3

    aget-boolean v5, v5, v4

    if-nez v5, :cond_1

    move v0, v6

    .line 773
    .local v0, available:Z
    :goto_2
    move v1, v3

    .local v1, i:I
    :goto_3
    add-int v5, v3, p1

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_0

    if-ge v3, p3, :cond_0

    .line 774
    move v2, v4

    .local v2, j:I
    :goto_4
    add-int v5, v4, p2

    sub-int/2addr v5, v6

    if-ge v2, v5, :cond_4

    if-ge v4, p4, :cond_4

    .line 775
    if-eqz v0, :cond_2

    aget-object v5, p5, v1

    aget-boolean v5, v5, v2

    if-nez v5, :cond_2

    move v0, v6

    .line 776
    :goto_5
    if-nez v0, :cond_3

    .line 780
    .end local v2           #j:I
    :cond_0
    if-eqz v0, :cond_5

    .line 781
    aput v3, p0, v7

    .line 782
    aput v4, p0, v6

    move v5, v6

    .line 788
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v4           #y:I
    :goto_6
    return v5

    .restart local v4       #y:I
    :cond_1
    move v0, v7

    .line 772
    goto :goto_2

    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_2
    move v0, v7

    .line 775
    goto :goto_5

    .line 774
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 773
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 771
    .end local v2           #j:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 770
    .end local v0           #available:Z
    .end local v1           #i:I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4           #y:I
    :cond_7
    move v5, v7

    .line 788
    goto :goto_6
.end method

.method private static isColumnEmpty(III[[Z)Z
    .locals 2
    .parameter "x"
    .parameter "top"
    .parameter "bottom"
    .parameter "occupied"

    .prologue
    .line 365
    move v0, p1

    .local v0, y:I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 366
    aget-object v1, p3, p0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 367
    const/4 v1, 0x0

    .line 370
    :goto_1
    return v1

    .line 365
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isRowEmpty(III[[Z)Z
    .locals 2
    .parameter "y"
    .parameter "left"
    .parameter "right"
    .parameter "occupied"

    .prologue
    .line 374
    move v0, p1

    .local v0, x:I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 375
    aget-object v1, p3, v0

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_0

    .line 376
    const/4 v1, 0x0

    .line 379
    :goto_1
    return v1

    .line 374
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 178
    move-object v0, p3

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    move-object v1, v0

    .line 179
    .local v1, cellParams:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->regenerateId:Z

    .line 181
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 182
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 156
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 159
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 160
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 161
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 6
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 473
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    .line 475
    .local v1, portrait:Z
    if-eqz v1, :cond_0

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisStartPadding:I

    move v0, v3

    .line 476
    .local v0, hStartPadding:I
    :goto_0
    if-eqz v1, :cond_1

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisStartPadding:I

    move v2, v3

    .line 479
    .local v2, vStartPadding:I
    :goto_1
    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    aput v4, p3, v3

    .line 480
    const/4 v3, 0x1

    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int/2addr v4, v2

    aput v4, p3, v3

    .line 481
    return-void

    .line 475
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    :cond_0
    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisStartPadding:I

    move v0, v3

    goto :goto_0

    .line 476
    .restart local v0       #hStartPadding:I
    :cond_1
    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisStartPadding:I

    move v2, v3

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 838
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "view"
    .parameter "arg0"

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 8
    .parameter "occupiedCells"
    .parameter "ignoreView"

    .prologue
    .line 383
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    .line 384
    .local v1, portrait:Z
    if-eqz v1, :cond_0

    iget v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move v3, v6

    .line 385
    .local v3, xCount:I
    :goto_0
    if-eqz v1, :cond_1

    iget v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move v5, v6

    .line 387
    .local v5, yCount:I
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    .line 389
    .local v0, occupied:[[Z
    if-eqz p1, :cond_3

    .line 390
    const/4 v4, 0x0

    .local v4, y:I
    :goto_2
    if-ge v4, v5, :cond_4

    .line 391
    const/4 v2, 0x0

    .local v2, x:I
    :goto_3
    if-ge v2, v3, :cond_2

    .line 392
    aget-object v6, v0, v2

    mul-int v7, v4, v3

    add-int/2addr v7, v2

    aget-boolean v7, p1, v7

    aput-boolean v7, v6, v4

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 384
    .end local v0           #occupied:[[Z
    .end local v2           #x:I
    .end local v3           #xCount:I
    .end local v4           #y:I
    .end local v5           #yCount:I
    :cond_0
    iget v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move v3, v6

    goto :goto_0

    .line 385
    .restart local v3       #xCount:I
    :cond_1
    iget v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move v5, v6

    goto :goto_1

    .line 390
    .restart local v0       #occupied:[[Z
    .restart local v2       #x:I
    .restart local v4       #y:I
    .restart local v5       #yCount:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 396
    .end local v2           #x:I
    .end local v4           #y:I
    :cond_3
    invoke-direct {p0, v3, v5, v0, p2}, Lcom/sec/android/app/twlauncher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 399
    :cond_4
    invoke-virtual {p0, v0, v3, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCellsFromOccupied([[ZII)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v6

    return-object v6
.end method

.method findAllVacantCellsFromOccupied([[ZII)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 8
    .parameter "occupied"
    .parameter "xCount"
    .parameter "yCount"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/high16 v4, -0x8000

    .line 408
    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    .line 410
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    iput v6, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 411
    iput v6, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 412
    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 413
    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 414
    iput v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 415
    iput v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 416
    iput v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 417
    iput v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 418
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iput v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 420
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    .line 422
    .local v1, current:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    if-ge v2, p2, :cond_2

    .line 423
    const/4 v3, 0x0

    .local v3, y:I
    :goto_1
    if-ge v3, p3, :cond_1

    .line 424
    aget-object v4, p1, v2

    aget-boolean v4, v4, v3

    if-nez v4, :cond_0

    .line 425
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 426
    invoke-static {v1, p2, p3, p1, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 427
    aget-object v4, p1, v2

    aput-boolean v7, v4, v3

    .line 423
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 422
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 432
    .end local v3           #y:I
    :cond_2
    iget-object v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v7

    :goto_2
    iput-boolean v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 437
    return-object v0

    :cond_3
    move v4, v5

    .line 432
    goto :goto_2
.end method

.method findNearestVacantArea(IIIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;[I)[I
    .locals 19
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "vacantCells"
    .parameter "recycle"

    .prologue
    .line 631
    if-eqz p6, :cond_0

    move-object/from16 v6, p6

    .line 632
    .local v6, bestXY:[I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellXY:[I

    move-object v8, v0

    .line 633
    .local v8, cellXY:[I
    const-wide v4, 0x7fefffffffffffffL

    .line 636
    .local v4, bestDistance:D
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    move v13, v0

    if-nez v13, :cond_1

    .line 637
    const/4 v13, 0x0

    .line 666
    :goto_1
    return-object v13

    .line 631
    .end local v4           #bestDistance:D
    .end local v6           #bestXY:[I
    .end local v8           #cellXY:[I
    :cond_0
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object v6, v13

    goto :goto_0

    .line 641
    .restart local v4       #bestDistance:D
    .restart local v6       #bestXY:[I
    .restart local v8       #cellXY:[I
    :cond_1
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 642
    .local v12, size:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v12, :cond_4

    .line 643
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    .line 646
    .local v7, cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    iget v13, v7, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    move v0, v13

    move/from16 v1, p3

    if-ne v0, v1, :cond_2

    iget v13, v7, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    move v0, v13

    move/from16 v1, p4

    if-eq v0, v1, :cond_3

    .line 642
    :cond_2
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 651
    :cond_3
    iget v13, v7, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    iget v14, v7, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 653
    const/4 v13, 0x0

    aget v13, v8, v13

    sub-int v13, v13, p1

    int-to-double v13, v13

    const-wide/high16 v15, 0x4000

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    const/4 v15, 0x1

    aget v15, v8, v15

    sub-int v15, v15, p2

    int-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 655
    .local v9, distance:D
    cmpg-double v13, v9, v4

    if-gtz v13, :cond_2

    .line 656
    move-wide v4, v9

    .line 657
    const/4 v13, 0x0

    iget v14, v7, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v14, v6, v13

    .line 658
    const/4 v13, 0x1

    iget v14, v7, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v14, v6, v13

    goto :goto_3

    .line 663
    .end local v7           #cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    .end local v9           #distance:D
    :cond_4
    const-wide v13, 0x7fefffffffffffffL

    cmpg-double v13, v4, v13

    if-gez v13, :cond_5

    move-object v13, v6

    .line 664
    goto :goto_1

    .line 666
    :cond_5
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 833
    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 843
    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getCountX()I
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    goto :goto_0
.end method

.method getCountY()I
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    goto :goto_0
.end method

.method getLongAxisCells()I
    .locals 1

    .prologue
    .line 1096
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    return v0
.end method

.method getOccupiedCells()[Z
    .locals 9

    .prologue
    .line 792
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    .line 793
    .local v2, portrait:Z
    if-eqz v2, :cond_0

    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move v4, v7

    .line 794
    .local v4, xCount:I
    :goto_0
    if-eqz v2, :cond_1

    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move v6, v7

    .line 795
    .local v6, yCount:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    .line 797
    .local v1, occupied:[[Z
    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v1, v7}, Lcom/sec/android/app/twlauncher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 799
    mul-int v7, v4, v6

    new-array v0, v7, [Z

    .line 800
    .local v0, flat:[Z
    const/4 v5, 0x0

    .local v5, y:I
    :goto_2
    if-ge v5, v6, :cond_3

    .line 801
    const/4 v3, 0x0

    .local v3, x:I
    :goto_3
    if-ge v3, v4, :cond_2

    .line 802
    mul-int v7, v5, v4

    add-int/2addr v7, v3

    aget-object v8, v1, v3

    aget-boolean v8, v8, v5

    aput-boolean v8, v0, v7

    .line 801
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 793
    .end local v0           #flat:[Z
    .end local v1           #occupied:[[Z
    .end local v3           #x:I
    .end local v4           #xCount:I
    .end local v5           #y:I
    .end local v6           #yCount:I
    :cond_0
    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move v4, v7

    goto :goto_0

    .line 794
    .restart local v4       #xCount:I
    :cond_1
    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move v6, v7

    goto :goto_1

    .line 800
    .restart local v0       #flat:[Z
    .restart local v1       #occupied:[[Z
    .restart local v3       #x:I
    .restart local v5       #y:I
    .restart local v6       #yCount:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 806
    .end local v3           #x:I
    :cond_3
    return-object v0
.end method

.method getShortAxisCells()I
    .locals 1

    .prologue
    .line 1092
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    return v0
.end method

.method public getTag()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 7

    .prologue
    .line 275
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 276
    .local v0, info:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v1, :cond_0

    .line 277
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    .line 278
    .local v6, portrait:Z
    if-eqz v6, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move v3, v1

    .line 279
    .local v3, xCount:I
    :goto_0
    if-eqz v6, :cond_2

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move v4, v1

    .line 281
    .local v4, yCount:I
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    .line 282
    .local v5, occupied:[[Z
    const/4 v1, 0x0

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 284
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CellLayout;->findIntersectingVacantCells(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;IIII[[Z)V

    .line 286
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    .line 288
    .end local v3           #xCount:I
    .end local v4           #yCount:I
    .end local v5           #occupied:[[Z
    .end local v6           #portrait:Z
    :cond_0
    return-object v0

    .line 278
    .restart local v6       #portrait:Z
    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move v3, v1

    goto :goto_0

    .line 279
    .restart local v3       #xCount:I
    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move v4, v1

    goto :goto_1
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getTag()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 1088
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 198
    return-void
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 703
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 704
    .local v0, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->isDragging:Z

    .line 705
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 706
    return-void
.end method

.method onDropAborted(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 690
    if-eqz p1, :cond_0

    .line 691
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->isDragging:Z

    .line 692
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 695
    return-void
.end method

.method onDropChild(Landroid/view/View;[I)V
    .locals 4
    .parameter "child"
    .parameter "targetXY"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 677
    if-eqz p1, :cond_0

    .line 678
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 679
    .local v0, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    aget v1, p2, v2

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    .line 680
    aget v1, p2, v3

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    .line 681
    iput-boolean v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->isDragging:Z

    .line 682
    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->dropped:Z

    .line 683
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 684
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 685
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    .line 687
    .end local v0           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "ev"

    .prologue
    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 203
    .local v5, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v6, v0

    .line 205
    .local v6, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-nez v5, :cond_8

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mRect:Landroid/graphics/Rect;

    move-object v11, v0

    .line 207
    .local v11, frame:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mScrollX:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 208
    .local v16, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mScrollY:I

    move/from16 v21, v0

    add-int v18, v20, v21

    .line 209
    .local v18, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v9

    .line 211
    .local v9, count:I
    const/4 v10, 0x0

    .line 212
    .local v10, found:Z
    const/16 v20, 0x1

    sub-int v12, v9, v20

    .local v12, i:I
    :goto_0
    if-ltz v12, :cond_1

    .line 213
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 215
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-eqz v20, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 216
    :cond_0
    invoke-virtual {v8, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 217
    move-object v0, v11

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 218
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 219
    .local v13, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iput-object v8, v6, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 220
    move-object v0, v13

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 221
    move-object v0, v13

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 222
    move-object v0, v13

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 223
    move-object v0, v13

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 224
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object v1, v6

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 225
    const/4 v10, 0x1

    .line 226
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    .line 232
    .end local v8           #child:Landroid/view/View;
    .end local v13           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_1
    if-nez v10, :cond_2

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellXY:[I

    move-object v7, v0

    .line 234
    .local v7, cellXY:[I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->pointToCellExact(II[I)V

    .line 236
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    move v15, v0

    .line 237
    .local v15, portrait:Z
    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move/from16 v20, v0

    move/from16 v17, v20

    .line 238
    .local v17, xCount:I
    :goto_1
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move/from16 v20, v0

    move/from16 v19, v20

    .line 240
    .local v19, yCount:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    move-object v14, v0

    .line 241
    .local v14, occupied:[[Z
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    move-object v3, v14

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 243
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v6

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 244
    const/16 v20, 0x0

    aget v20, v7, v20

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 245
    const/16 v20, 0x1

    aget v20, v7, v20

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 246
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 247
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 248
    const/16 v20, 0x0

    aget v20, v7, v20

    if-ltz v20, :cond_7

    const/16 v20, 0x1

    aget v20, v7, v20

    if-ltz v20, :cond_7

    const/16 v20, 0x0

    aget v20, v7, v20

    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    const/16 v20, 0x1

    aget v20, v7, v20

    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    const/16 v20, 0x0

    aget v20, v7, v20

    aget-object v20, v14, v20

    const/16 v21, 0x1

    aget v21, v7, v21

    aget-boolean v20, v20, v21

    if-nez v20, :cond_7

    const/16 v20, 0x1

    :goto_3
    move/from16 v0, v20

    move-object v1, v6

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 256
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    .line 258
    .end local v7           #cellXY:[I
    .end local v14           #occupied:[[Z
    .end local v15           #portrait:Z
    .end local v17           #xCount:I
    .end local v19           #yCount:I
    :cond_2
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 270
    .end local v9           #count:I
    .end local v10           #found:Z
    .end local v11           #frame:Landroid/graphics/Rect;
    .end local v12           #i:I
    .end local v16           #x:I
    .end local v18           #y:I
    :cond_3
    :goto_4
    const/16 v20, 0x0

    return v20

    .line 212
    .restart local v8       #child:Landroid/view/View;
    .restart local v9       #count:I
    .restart local v10       #found:Z
    .restart local v11       #frame:Landroid/graphics/Rect;
    .restart local v12       #i:I
    .restart local v16       #x:I
    .restart local v18       #y:I
    :cond_4
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_0

    .line 237
    .end local v8           #child:Landroid/view/View;
    .restart local v7       #cellXY:[I
    .restart local v15       #portrait:Z
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move/from16 v20, v0

    move/from16 v17, v20

    goto/16 :goto_1

    .line 238
    .restart local v17       #xCount:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move/from16 v20, v0

    move/from16 v19, v20

    goto/16 :goto_2

    .line 248
    .restart local v14       #occupied:[[Z
    .restart local v19       #yCount:I
    :cond_7
    const/16 v20, 0x0

    goto :goto_3

    .line 259
    .end local v7           #cellXY:[I
    .end local v9           #count:I
    .end local v10           #found:Z
    .end local v11           #frame:Landroid/graphics/Rect;
    .end local v12           #i:I
    .end local v14           #occupied:[[Z
    .end local v15           #portrait:Z
    .end local v16           #x:I
    .end local v17           #xCount:I
    .end local v18           #y:I
    .end local v19           #yCount:I
    :cond_8
    const/16 v20, 0x1

    move v0, v5

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 260
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v6

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 261
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 262
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 263
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 264
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 265
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object v1, v6

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 266
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    .line 267
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v10

    .line 578
    .local v10, count:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v10, :cond_1

    .line 579
    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 580
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 582
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 584
    .local v12, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v8, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->x:I

    .line 585
    .local v8, childLeft:I
    iget v9, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->y:I

    .line 586
    .local v9, childTop:I
    iget v0, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v8

    iget v1, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->height:I

    add-int/2addr v1, v9

    invoke-virtual {v7, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 588
    iget-boolean v0, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_0

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->dropped:Z

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    iget v3, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v8

    iget v4, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 578
    .end local v8           #childLeft:I
    .end local v9           #childTop:I
    .end local v12           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 596
    .end local v7           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 34
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 490
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v32

    .line 491
    .local v32, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v33

    .line 493
    .local v33, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 494
    .local v22, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 496
    .local v23, heightSpecSize:I
    if-eqz v32, :cond_0

    if-nez v22, :cond_1

    .line 497
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 500
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move/from16 v29, v0

    .line 501
    .local v29, shortAxisCells:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move/from16 v25, v0

    .line 502
    .local v25, longAxisCells:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisStartPadding:I

    move v9, v0

    .line 503
    .local v9, longAxisStartPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisEndPadding:I

    move/from16 v26, v0

    .line 504
    .local v26, longAxisEndPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisStartPadding:I

    move v8, v0

    .line 505
    .local v8, shortAxisStartPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisEndPadding:I

    move/from16 v30, v0

    .line 506
    .local v30, shortAxisEndPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    move v4, v0

    .line 507
    .local v4, cellWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    move v5, v0

    .line 509
    .local v5, cellHeight:I
    move/from16 v0, v23

    move/from16 v1, v33

    if-le v0, v1, :cond_5

    const/4 v6, 0x1

    :goto_0
    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    .line 511
    const/4 v6, 0x1

    sub-int v28, v29, v6

    .line 512
    .local v28, numShortGaps:I
    const/4 v6, 0x1

    sub-int v27, v25, v6

    .line 514
    .local v27, numLongGaps:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    move v6, v0

    if-eqz v6, :cond_7

    .line 515
    sub-int v6, v23, v9

    sub-int v6, v6, v26

    mul-int v7, v5, v25

    sub-int v31, v6, v7

    .line 517
    .local v31, vSpaceLeft:I
    div-int v6, v31, v27

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    .line 519
    sub-int v6, v33, v8

    sub-int v6, v6, v30

    mul-int v7, v4, v29

    sub-int v21, v6, v7

    .line 521
    .local v21, hSpaceLeft:I
    if-lez v28, :cond_6

    .line 522
    div-int v6, v21, v28

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    .line 540
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 541
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    .line 543
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mIspadding:Z

    move v6, v0

    if-nez v6, :cond_3

    .line 544
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    .line 546
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v20

    .line 548
    .local v20, count:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    .line 549
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 550
    .local v17, child:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 552
    .local v3, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    move v6, v0

    if-eqz v6, :cond_9

    .line 553
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    move v7, v0

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->setup(IIIIII)V

    .line 560
    :goto_3
    iget-boolean v6, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->regenerateId:Z

    if-eqz v6, :cond_4

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getId()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    iget v7, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iget v7, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 562
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->regenerateId:Z

    .line 565
    :cond_4
    iget v6, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->width:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 566
    .local v18, childWidthMeasureSpec:I
    iget v6, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->height:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 568
    .local v19, childheightMeasureSpec:I
    invoke-virtual/range {v17 .. v19}, Landroid/view/View;->measure(II)V

    .line 548
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 509
    .end local v3           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    .end local v17           #child:Landroid/view/View;
    .end local v18           #childWidthMeasureSpec:I
    .end local v19           #childheightMeasureSpec:I
    .end local v20           #count:I
    .end local v21           #hSpaceLeft:I
    .end local v24           #i:I
    .end local v27           #numLongGaps:I
    .end local v28           #numShortGaps:I
    .end local v31           #vSpaceLeft:I
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 524
    .restart local v21       #hSpaceLeft:I
    .restart local v27       #numLongGaps:I
    .restart local v28       #numShortGaps:I
    .restart local v31       #vSpaceLeft:I
    :cond_6
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    goto/16 :goto_1

    .line 527
    .end local v21           #hSpaceLeft:I
    .end local v31           #vSpaceLeft:I
    :cond_7
    sub-int v6, v33, v9

    sub-int v6, v6, v26

    mul-int v7, v4, v25

    sub-int v21, v6, v7

    .line 529
    .restart local v21       #hSpaceLeft:I
    div-int v6, v21, v27

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    .line 531
    sub-int v6, v23, v8

    sub-int v6, v6, v30

    mul-int v7, v5, v29

    sub-int v31, v6, v7

    .line 533
    .restart local v31       #vSpaceLeft:I
    if-lez v28, :cond_8

    .line 534
    div-int v6, v31, v28

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    goto/16 :goto_1

    .line 536
    :cond_8
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    goto/16 :goto_1

    .line 556
    .restart local v3       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    .restart local v17       #child:Landroid/view/View;
    .restart local v20       #count:I
    .restart local v24       #i:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    move v14, v0

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v15, v9

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->setup(IIIIII)V

    goto :goto_3

    .line 571
    .end local v3           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    .end local v17           #child:Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->setMeasuredDimension(II)V

    .line 572
    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 447
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    .line 449
    .local v1, portrait:Z
    if-eqz v1, :cond_4

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisStartPadding:I

    move v0, v5

    .line 450
    .local v0, hStartPadding:I
    :goto_0
    if-eqz v1, :cond_5

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisStartPadding:I

    move v2, v5

    .line 452
    .local v2, vStartPadding:I
    :goto_1
    sub-int v5, p1, v0

    iget v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v8

    .line 453
    sub-int v5, p2, v2

    iget v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v9

    .line 455
    if-eqz v1, :cond_6

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move v3, v5

    .line 456
    .local v3, xAxis:I
    :goto_2
    if-eqz v1, :cond_7

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move v4, v5

    .line 458
    .local v4, yAxis:I
    :goto_3
    aget v5, p3, v8

    if-gez v5, :cond_0

    aput v8, p3, v8

    .line 459
    :cond_0
    aget v5, p3, v8

    if-lt v5, v3, :cond_1

    sub-int v5, v3, v9

    aput v5, p3, v8

    .line 460
    :cond_1
    aget v5, p3, v9

    if-gez v5, :cond_2

    aput v8, p3, v9

    .line 461
    :cond_2
    aget v5, p3, v9

    if-lt v5, v4, :cond_3

    sub-int v5, v4, v9

    aput v5, p3, v9

    .line 462
    :cond_3
    return-void

    .line 449
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    .end local v3           #xAxis:I
    .end local v4           #yAxis:I
    :cond_4
    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisStartPadding:I

    move v0, v5

    goto :goto_0

    .line 450
    .restart local v0       #hStartPadding:I
    :cond_5
    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisStartPadding:I

    move v2, v5

    goto :goto_1

    .line 455
    .restart local v2       #vStartPadding:I
    :cond_6
    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move v3, v5

    goto :goto_2

    .line 456
    .restart local v3       #xAxis:I
    :cond_7
    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move v4, v5

    goto :goto_3
.end method

.method public rectToCell(II)[I
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 718
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellWidth:I

    .line 719
    .local v1, actualWidth:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellHeight:I

    .line 720
    .local v0, actualHeight:I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 723
    .local v2, smallerSize:I
    add-int v5, p1, v2

    div-int v3, v5, v2

    .line 724
    .local v3, spanX:I
    add-int v5, p2, v2

    div-int v4, v5, v2

    .line 726
    .local v4, spanY:I
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    return-object v5
.end method

.method public rectToCell2(II)[I
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 730
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellWidth:I

    .line 731
    .local v1, actualWidth:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellHeight:I

    .line 733
    .local v0, actualHeight:I
    rem-int v4, p1, v1

    if-eqz v4, :cond_2

    div-int v4, p1, v1

    add-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 734
    .local v2, spanX:I
    :goto_0
    rem-int v4, p2, v0

    if-eqz v4, :cond_3

    div-int v4, p2, v0

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 736
    .local v3, spanY:I
    :goto_1
    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    if-le v2, v4, :cond_0

    .line 737
    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    .line 740
    :cond_0
    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    if-le v3, v4, :cond_1

    .line 741
    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    .line 744
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    return-object v4

    .line 733
    .end local v2           #spanX:I
    .end local v3           #spanY:I
    :cond_2
    div-int v4, p1, v1

    move v2, v4

    goto :goto_0

    .line 734
    .restart local v2       #spanX:I
    :cond_3
    div-int v4, p2, v0

    move v3, v4

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 186
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 187
    if-eqz p1, :cond_0

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 189
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 192
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v0

    .line 601
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 602
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 603
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 605
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 601
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 611
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 612
    return-void
.end method
