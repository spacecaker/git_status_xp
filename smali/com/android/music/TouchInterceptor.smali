.class public Lcom/android/music/TouchInterceptor;
.super Landroid/widget/ListView;
.source "TouchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/TouchInterceptor$RemoveListener;,
        Lcom/android/music/TouchInterceptor$DropListener;,
        Lcom/android/music/TouchInterceptor$DragListener;
    }
.end annotation


# static fields
.field public static final MAX_ITEM_IN_LIST:I


# instance fields
.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/android/music/TouchInterceptor$DragListener;

.field private mDragPointX:I

.field private mDragPointY:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightHalf:I

.field private mItemHeightNormal:I

.field private mLowerBound:I

.field private mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

.field private mRemoveMode:I

.field private mRotation:I

.field private mSavedPosition:I

.field private mSrcDragPos:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mTrashcan:Landroid/graphics/drawable/Drawable;

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v1, "GT-S5830"

    .line 203
    const-string v0, "GT-S5830"

    const-string v0, "GT-S5830"

    invoke-virtual {v1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    sput v0, Lcom/android/music/TouchInterceptor;->MAX_ITEM_IN_LIST:I

    return-void

    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, -0x1

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    iput v5, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    .line 91
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 200
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/music/TouchInterceptor;->mSavedPosition:I

    .line 207
    iput v5, p0, Lcom/android/music/TouchInterceptor;->mRotation:I

    .line 102
    const-string v3, "Music"

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v3, "deletemode"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    .line 104
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/music/TouchInterceptor;->mTouchSlop:I

    .line 105
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 106
    .local v1, res:Landroid/content/res/Resources;
    const/high16 v3, 0x7f08

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/music/TouchInterceptor;->mItemHeightNormal:I

    .line 107
    iget v3, p0, Lcom/android/music/TouchInterceptor;->mItemHeightNormal:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/music/TouchInterceptor;->mItemHeightHalf:I

    .line 108
    const v3, 0x7f080001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/music/TouchInterceptor;->mItemHeightExpanded:I

    .line 110
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 111
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    iput v3, p0, Lcom/android/music/TouchInterceptor;->mRotation:I

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/TouchInterceptor;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/TouchInterceptor;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/TouchInterceptor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/music/TouchInterceptor;->stopDragging()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/music/TouchInterceptor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/music/TouchInterceptor;)Lcom/android/music/TouchInterceptor$RemoveListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/music/TouchInterceptor;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/TouchInterceptor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/music/TouchInterceptor;->unExpandViews(Z)V

    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 274
    iget v0, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 275
    iget v0, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/music/TouchInterceptor;->mUpperBound:I

    .line 277
    :cond_0
    iget v0, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 278
    iget v0, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/music/TouchInterceptor;->mLowerBound:I

    .line 280
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 338
    iget v8, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v9

    sub-int v0, v8, v9

    .line 340
    .local v0, childnum:I
    iget v8, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    iget v9, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    if-le v8, v9, :cond_0

    .line 341
    add-int/lit8 v0, v0, 0x1

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getHeaderViewsCount()I

    move-result v4

    .line 347
    .local v4, numheaders:I
    iget v8, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 348
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 349
    .local v3, i:I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 350
    .local v7, vv:Landroid/view/View;
    if-nez v7, :cond_1

    .line 391
    return-void

    .line 354
    :cond_1
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mItemHeightNormal:I

    .line 355
    .local v2, height:I
    const/4 v6, 0x0

    .line 357
    .local v6, visibility:I
    iget v8, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    if-ge v8, v4, :cond_4

    if-ne v3, v4, :cond_4

    .line 360
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 362
    const/4 v6, 0x4

    .line 386
    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 387
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 388
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 348
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 364
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mItemHeightExpanded:I

    goto :goto_1

    .line 366
    :cond_4
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 370
    iget v8, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    iget v9, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    if-eq v8, v9, :cond_5

    invoke-virtual {p0, v7}, Lcom/android/music/TouchInterceptor;->getPositionForView(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getCount()I

    move-result v9

    sub-int/2addr v9, v10

    if-ne v8, v9, :cond_6

    .line 372
    :cond_5
    const/4 v6, 0x4

    goto :goto_1

    .line 378
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 380
    :cond_7
    if-ne v3, v0, :cond_2

    .line 382
    iget v8, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    if-lt v8, v4, :cond_2

    iget v8, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getCount()I

    move-result v9

    sub-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    .line 383
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mItemHeightExpanded:I

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 515
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    if-ne v2, v6, :cond_1

    .line 516
    const/high16 v0, 0x3f80

    .line 517
    .local v0, alpha:F
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 518
    .local v1, width:I
    div-int/lit8 v2, v1, 0x2

    if-le p1, v2, :cond_0

    .line 519
    sub-int v2, v1, p1

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 521
    :cond_0
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 525
    .end local v0           #alpha:F
    .end local v1           #width:I
    :cond_1
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    if-ne v2, v7, :cond_4

    .line 526
    :cond_2
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/music/TouchInterceptor;->mDragPointX:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/music/TouchInterceptor;->mXOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 532
    :goto_0
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/music/TouchInterceptor;->mDragPointY:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/android/music/TouchInterceptor;->mYOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 533
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 537
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 538
    .restart local v1       #width:I
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-le p2, v2, :cond_5

    .line 539
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 547
    .end local v1           #width:I
    :cond_3
    :goto_1
    return-void

    .line 528
    :cond_4
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 540
    .restart local v1       #width:I
    :cond_5
    if-lez v1, :cond_6

    div-int/lit8 v2, v1, 0x4

    if-le p1, v2, :cond_6

    .line 541
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 543
    :cond_6
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1
.end method

.method private getItemForPosition(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 258
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mDragPointY:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/music/TouchInterceptor;->mItemHeightHalf:I

    sub-int v0, v2, v3

    .line 259
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/music/TouchInterceptor;->myPointToPosition(II)I

    move-result v1

    .line 260
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 262
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    if-gt v1, v2, :cond_0

    .line 263
    add-int/lit8 v1, v1, 0x1

    .line 270
    :cond_0
    :goto_0
    return v1

    .line 265
    :cond_1
    if-gez v0, :cond_0

    .line 268
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    .line 216
    if-gez p2, :cond_0

    .line 219
    iget v5, p0, Lcom/android/music/TouchInterceptor;->mItemHeightNormal:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/android/music/TouchInterceptor;->myPointToPosition(II)I

    move-result v4

    .line 220
    .local v4, pos:I
    if-lez v4, :cond_0

    .line 221
    sub-int v5, v4, v6

    .line 253
    .end local v4           #pos:I
    :goto_0
    return v5

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 226
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getChildCount()I

    move-result v1

    .line 227
    .local v1, count:I
    sub-int v3, v1, v6

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_5

    .line 228
    invoke-virtual {p0, v3}, Lcom/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 229
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 230
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 236
    iget v5, p0, Lcom/android/music/TouchInterceptor;->mRotation:I

    if-eq v5, v6, :cond_1

    iget v5, p0, Lcom/android/music/TouchInterceptor;->mRotation:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 237
    :cond_1
    const/4 v5, 0x4

    if-ne v1, v5, :cond_3

    .line 238
    iget v5, p0, Lcom/android/music/TouchInterceptor;->mSavedPosition:I

    goto :goto_0

    .line 242
    :cond_2
    sget v5, Lcom/android/music/TouchInterceptor;->MAX_ITEM_IN_LIST:I

    if-ne v1, v5, :cond_3

    .line 243
    iget v5, p0, Lcom/android/music/TouchInterceptor;->mSavedPosition:I

    goto :goto_0

    .line 248
    :cond_3
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/music/TouchInterceptor;->mSavedPosition:I

    .line 249
    iget v5, p0, Lcom/android/music/TouchInterceptor;->mSavedPosition:I

    goto :goto_0

    .line 227
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 253
    .end local v0           #child:Landroid/view/View;
    :cond_5
    const/4 v5, -0x1

    goto :goto_0
.end method

.method private startDragging(Landroid/graphics/Bitmap;II)V
    .locals 7
    .parameter "bm"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, -0x2

    .line 476
    invoke-direct {p0}, Lcom/android/music/TouchInterceptor;->stopDragging()V

    .line 478
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 480
    iget-object v3, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 481
    iget-object v3, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/music/TouchInterceptor;->mDragPointX:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/android/music/TouchInterceptor;->mXOffset:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 482
    iget-object v3, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/music/TouchInterceptor;->mDragPointY:I

    sub-int v4, p3, v4

    iget v5, p0, Lcom/android/music/TouchInterceptor;->mYOffset:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 486
    iget-object v3, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 487
    iget-object v3, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 488
    iget-object v3, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x398

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 493
    iget-object v3, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 494
    iget-object v3, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 496
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 497
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 500
    .local v2, v:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 501
    .local v0, backGroundColor:I
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 505
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 506
    iput-object p1, p0, Lcom/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 509
    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/music/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    .line 510
    iget-object v3, p0, Lcom/android/music/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    iput-object v2, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    .line 512
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 550
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 555
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 556
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    iput-object v3, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    .line 559
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 561
    iput-object v3, p0, Lcom/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 565
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 568
    :cond_2
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 9
    .parameter "deletion"

    .prologue
    const/4 v8, 0x0

    .line 286
    const/4 v5, 0x0

    .line 287
    .local v5, y:I
    const/4 v1, 0x0

    .line 288
    .local v1, i:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 289
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_1

    .line 290
    if-eqz p1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v3

    .line 294
    .local v3, position:I
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, v6}, Lcom/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 299
    :goto_1
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/music/TouchInterceptor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    invoke-virtual {p0, v3, v5}, Lcom/android/music/TouchInterceptor;->setSelectionFromTop(II)V

    .line 305
    .end local v3           #position:I
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->layoutChildren()V

    .line 306
    invoke-virtual {p0, v1}, Lcom/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 313
    :goto_2
    if-nez v4, :cond_1

    .line 315
    return-void

    .line 296
    .restart local v3       #position:I
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 297
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v6, "TouchInterceptor"

    const-string v7, "NullPointerException for getChildAt()"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 318
    .end local v0           #ex:Ljava/lang/NullPointerException;
    .end local v3           #position:I
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 319
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iget v6, p0, Lcom/android/music/TouchInterceptor;->mItemHeightNormal:I

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 320
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    :catch_1
    move-exception v6

    goto :goto_2
.end method


# virtual methods
.method protected doStopDragging()V
    .locals 4

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 187
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 188
    invoke-direct {p0}, Lcom/android/music/TouchInterceptor;->stopDragging()V

    .line 189
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    iget v2, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    iget v3, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    invoke-interface {v1, v2, v3}, Lcom/android/music/TouchInterceptor$DropListener;->drop(II)V

    .line 192
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/music/TouchInterceptor;->unExpandViews(Z)V

    .line 194
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    .line 117
    iget-object v6, p0, Lcom/android/music/TouchInterceptor;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v6, :cond_0

    .line 118
    iget v6, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    if-nez v6, :cond_0

    .line 119
    new-instance v6, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/android/music/TouchInterceptor$1;

    invoke-direct {v8, p0}, Lcom/android/music/TouchInterceptor$1;-><init>(Lcom/android/music/TouchInterceptor;)V

    invoke-direct {v6, v7, v8}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    .line 143
    :cond_0
    iget-object v6, p0, Lcom/android/music/TouchInterceptor;->mDragListener:Lcom/android/music/TouchInterceptor$DragListener;

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/music/TouchInterceptor;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    if-eqz v6, :cond_2

    .line 144
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 180
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :goto_1
    return v6

    .line 146
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 147
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 148
    .local v5, y:I
    invoke-virtual {p0, v4, v5}, Lcom/android/music/TouchInterceptor;->pointToPosition(II)I

    move-result v2

    .line 149
    .local v2, itemnum:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 154
    .local v1, item:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    sub-int v6, v4, v6

    iput v6, p0, Lcom/android/music/TouchInterceptor;->mDragPointX:I

    .line 155
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    sub-int v6, v5, v6

    iput v6, p0, Lcom/android/music/TouchInterceptor;->mDragPointY:I

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v4

    iput v6, p0, Lcom/android/music/TouchInterceptor;->mXOffset:I

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/android/music/TouchInterceptor;->mYOffset:I

    .line 160
    const/16 v6, 0x40

    if-ge v4, v6, :cond_3

    .line 161
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 164
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v4, v5}, Lcom/android/music/TouchInterceptor;->startDragging(Landroid/graphics/Bitmap;II)V

    .line 167
    iput v2, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    .line 169
    iget v6, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    iput v6, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    .line 170
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    .line 171
    iget v3, p0, Lcom/android/music/TouchInterceptor;->mTouchSlop:I

    .line 172
    .local v3, touchSlop:I
    sub-int v6, v5, v3

    iget v7, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    div-int/lit8 v7, v7, 0x3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/android/music/TouchInterceptor;->mUpperBound:I

    .line 173
    add-int v6, v5, v3

    iget v7, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/music/TouchInterceptor;->mLowerBound:I

    .line 174
    const/4 v6, 0x0

    goto :goto_1

    .line 176
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #touchSlop:I
    :cond_3
    invoke-direct {p0}, Lcom/android/music/TouchInterceptor;->stopDragging()V

    goto/16 :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x1

    .line 395
    iget-object v6, p0, Lcom/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v6, :cond_0

    .line 396
    iget-object v6, p0, Lcom/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 398
    :cond_0
    iget-object v6, p0, Lcom/android/music/TouchInterceptor;->mDragListener:Lcom/android/music/TouchInterceptor$DragListener;

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/music/TouchInterceptor;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    if-eqz v6, :cond_e

    :cond_1
    iget-object v6, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    if-eqz v6, :cond_e

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 400
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    move v6, v9

    .line 471
    .end local v0           #action:I
    :goto_1
    return v6

    .line 403
    .restart local v0       #action:I
    :pswitch_0
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 404
    .local v2, r:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 405
    invoke-direct {p0}, Lcom/android/music/TouchInterceptor;->stopDragging()V

    .line 406
    iget v6, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    if-ne v6, v9, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 407
    iget-object v6, p0, Lcom/android/music/TouchInterceptor;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    if-eqz v6, :cond_3

    .line 409
    iget-object v6, p0, Lcom/android/music/TouchInterceptor;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    iget v7, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    invoke-interface {v6, v7}, Lcom/android/music/TouchInterceptor$RemoveListener;->remove(I)V

    .line 411
    :cond_3
    invoke-direct {p0, v9}, Lcom/android/music/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_0

    .line 413
    :cond_4
    iget-object v6, p0, Lcom/android/music/TouchInterceptor;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    if-ltz v6, :cond_5

    iget v6, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 415
    iget-object v6, p0, Lcom/android/music/TouchInterceptor;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    iget v7, p0, Lcom/android/music/TouchInterceptor;->mSrcDragPos:I

    iget v8, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    invoke-interface {v6, v7, v8}, Lcom/android/music/TouchInterceptor$DropListener;->drop(II)V

    .line 420
    :cond_5
    invoke-direct {p0, v9}, Lcom/android/music/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_0

    .line 428
    .end local v2           #r:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 429
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 430
    .local v5, y:I
    invoke-direct {p0, v4, v5}, Lcom/android/music/TouchInterceptor;->dragView(II)V

    .line 431
    invoke-direct {p0, v5}, Lcom/android/music/TouchInterceptor;->getItemForPosition(I)I

    move-result v1

    .line 432
    .local v1, itemnum:I
    if-ltz v1, :cond_2

    .line 433
    if-eqz v0, :cond_6

    iget v6, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    if-eq v1, v6, :cond_8

    .line 434
    :cond_6
    iget-object v6, p0, Lcom/android/music/TouchInterceptor;->mDragListener:Lcom/android/music/TouchInterceptor$DragListener;

    if-eqz v6, :cond_7

    .line 435
    iget-object v6, p0, Lcom/android/music/TouchInterceptor;->mDragListener:Lcom/android/music/TouchInterceptor$DragListener;

    iget v7, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    invoke-interface {v6, v7, v1}, Lcom/android/music/TouchInterceptor$DragListener;->drag(II)V

    .line 437
    :cond_7
    iput v1, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    .line 438
    invoke-direct {p0}, Lcom/android/music/TouchInterceptor;->doExpansion()V

    .line 440
    :cond_8
    const/4 v3, 0x0

    .line 441
    .local v3, speed:I
    invoke-direct {p0, v5}, Lcom/android/music/TouchInterceptor;->adjustScrollBounds(I)V

    .line 442
    iget v6, p0, Lcom/android/music/TouchInterceptor;->mLowerBound:I

    if-le v5, v6, :cond_c

    .line 445
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getLastVisiblePosition()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getCount()I

    move-result v7

    sub-int/2addr v7, v9

    if-ge v6, v7, :cond_b

    .line 446
    iget v6, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    iget v7, p0, Lcom/android/music/TouchInterceptor;->mLowerBound:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_a

    const/16 v6, 0x10

    move v3, v6

    .line 462
    :cond_9
    :goto_2
    if-eqz v3, :cond_2

    .line 463
    const/16 v6, 0x1e

    invoke-virtual {p0, v3, v6}, Lcom/android/music/TouchInterceptor;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 446
    :cond_a
    const/4 v6, 0x4

    move v3, v6

    goto :goto_2

    .line 448
    :cond_b
    const/4 v3, 0x1

    goto :goto_2

    .line 450
    :cond_c
    iget v6, p0, Lcom/android/music/TouchInterceptor;->mUpperBound:I

    if-ge v5, v6, :cond_9

    .line 452
    iget v6, p0, Lcom/android/music/TouchInterceptor;->mUpperBound:I

    div-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_d

    const/16 v6, -0x10

    move v3, v6

    .line 454
    :goto_3
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v6

    if-nez v6, :cond_9

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getPaddingTop()I

    move-result v7

    if-lt v6, v7, :cond_9

    .line 459
    const/4 v3, 0x0

    goto :goto_2

    .line 452
    :cond_d
    const/4 v6, -0x4

    move v3, v6

    goto :goto_3

    .line 471
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v3           #speed:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_1

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDropListener(Lcom/android/music/TouchInterceptor$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/music/TouchInterceptor;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    .line 582
    return-void
.end method

.method public setRemoveListener(Lcom/android/music/TouchInterceptor$RemoveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/music/TouchInterceptor;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    .line 586
    return-void
.end method
