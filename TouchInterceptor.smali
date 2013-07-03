.class public Lcom/lidroid/widgets/TouchInterceptor;
.super Landroid/widget/ListView;
.source "TouchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/widgets/TouchInterceptor$DropListener;,
        Lcom/lidroid/widgets/TouchInterceptor$DragListener;
    }
.end annotation


# instance fields
.field private mCoordOffset:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/lidroid/widgets/TouchInterceptor$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/lidroid/widgets/TouchInterceptor$DropListener;

.field private mFirstDragPos:I

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightHalf:I

.field private mItemHeightNormal:I

.field private mLowerBound:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lidroid/widgets/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 60
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/lidroid/widgets/TouchInterceptor;->mTouchSlop:I

    .line 61
    invoke-virtual {p0}, Lcom/lidroid/widgets/TouchInterceptor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lidroid/widgets/TouchInterceptor;->mItemHeightNormal:I

    .line 63
    iget v1, p0, Lcom/lidroid/widgets/TouchInterceptor;->mItemHeightNormal:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lidroid/widgets/TouchInterceptor;->mItemHeightHalf:I

    .line 64
    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lidroid/widgets/TouchInterceptor;->mItemHeightExpanded:I

    .line 65
    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 149
    iget v0, p0, Lcom/lidroid/widgets/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 150
    iget v0, p0, Lcom/lidroid/widgets/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/lidroid/widgets/TouchInterceptor;->mUpperBound:I

    .line 152
    :cond_0
    iget v0, p0, Lcom/lidroid/widgets/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 153
    iget v0, p0, Lcom/lidroid/widgets/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/lidroid/widgets/TouchInterceptor;->mLowerBound:I

    .line 155
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 9

    .prologue
    .line 198
    iget v7, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/lidroid/widgets/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v8

    sub-int v0, v7, v8

    .line 199
    .local v0, childnum:I
    iget v7, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragPos:I

    iget v8, p0, Lcom/lidroid/widgets/TouchInterceptor;->mFirstDragPos:I

    if-le v7, v8, :cond_0

    .line 200
    add-int/lit8 v0, v0, 0x1

    .line 203
    :cond_0
    iget v7, p0, Lcom/lidroid/widgets/TouchInterceptor;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/lidroid/widgets/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/lidroid/widgets/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 205
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 206
    .local v3, i:I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/lidroid/widgets/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 207
    .local v6, vv:Landroid/view/View;
    if-nez v6, :cond_1

    .line 231
    return-void

    .line 210
    :cond_1
    iget v2, p0, Lcom/lidroid/widgets/TouchInterceptor;->mItemHeightNormal:I

    .line 211
    .local v2, height:I
    const/4 v5, 0x0

    .line 212
    .local v5, visibility:I
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 214
    iget v7, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragPos:I

    iget v8, p0, Lcom/lidroid/widgets/TouchInterceptor;->mFirstDragPos:I

    if-ne v7, v8, :cond_3

    .line 216
    const/4 v5, 0x4

    .line 226
    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 227
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 228
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    .end local v4           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 221
    :cond_4
    if-ne v3, v0, :cond_2

    .line 222
    iget v7, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/lidroid/widgets/TouchInterceptor;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_2

    .line 223
    iget v2, p0, Lcom/lidroid/widgets/TouchInterceptor;->mItemHeightExpanded:I

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/lidroid/widgets/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragPoint:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/lidroid/widgets/TouchInterceptor;->mCoordOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 324
    iget-object v0, p0, Lcom/lidroid/widgets/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lidroid/widgets/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    return-void
.end method

.method private getItemForPosition(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 134
    iget v2, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragPoint:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/lidroid/widgets/TouchInterceptor;->mItemHeightHalf:I

    sub-int v0, v2, v3

    .line 135
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/lidroid/widgets/TouchInterceptor;->myPointToPosition(II)I

    move-result v1

    .line 136
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 137
    iget v2, p0, Lcom/lidroid/widgets/TouchInterceptor;->mFirstDragPos:I

    if-gt v1, v2, :cond_0

    .line 138
    add-int/lit8 v1, v1, 0x1

    .line 145
    :cond_0
    :goto_0
    return v1

    .line 140
    :cond_1
    if-gez v0, :cond_0

    .line 143
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 112
    if-gez p2, :cond_0

    .line 115
    iget v5, p0, Lcom/lidroid/widgets/TouchInterceptor;->mItemHeightNormal:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/lidroid/widgets/TouchInterceptor;->myPointToPosition(II)I

    move-result v4

    .line 116
    .local v4, pos:I
    if-lez v4, :cond_0

    .line 117
    add-int/lit8 v5, v4, -0x1

    .line 130
    .end local v4           #pos:I
    :goto_0
    return v5

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/lidroid/widgets/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 122
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/lidroid/widgets/TouchInterceptor;->getChildCount()I

    move-result v1

    .line 123
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_2

    .line 124
    invoke-virtual {p0, v3}, Lcom/lidroid/widgets/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 126
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/lidroid/widgets/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_0

    .line 123
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 130
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v5, -0x1

    goto :goto_0
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .locals 8
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 293
    invoke-direct {p0}, Lcom/lidroid/widgets/TouchInterceptor;->stopDragging()V

    .line 295
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/lidroid/widgets/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 296
    iget-object v3, p0, Lcom/lidroid/widgets/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x30

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 297
    iget-object v3, p0, Lcom/lidroid/widgets/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 298
    iget-object v3, p0, Lcom/lidroid/widgets/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragPoint:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/lidroid/widgets/TouchInterceptor;->mCoordOffset:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 300
    iget-object v3, p0, Lcom/lidroid/widgets/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 301
    iget-object v3, p0, Lcom/lidroid/widgets/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 302
    iget-object v3, p0, Lcom/lidroid/widgets/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x398

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 307
    iget-object v3, p0, Lcom/lidroid/widgets/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 308
    iget-object v3, p0, Lcom/lidroid/widgets/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 310
    invoke-virtual {p0}, Lcom/lidroid/widgets/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 311
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 312
    .local v2, v:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 313
    .local v0, backGroundColor:I
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 314
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 315
    iput-object p1, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 317
    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/lidroid/widgets/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    .line 318
    iget-object v3, p0, Lcom/lidroid/widgets/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/lidroid/widgets/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    iput-object v2, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    .line 320
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 328
    iget-object v1, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/lidroid/widgets/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 330
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 331
    iget-object v1, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iput-object v3, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    .line 334
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 336
    iput-object v3, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 338
    :cond_1
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 7
    .parameter "deletion"

    .prologue
    const/4 v6, 0x0

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lidroid/widgets/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 163
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    .line 164
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/lidroid/widgets/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v2

    .line 167
    .local v2, position:I
    invoke-virtual {p0, v6}, Lcom/lidroid/widgets/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 168
    .local v4, y:I
    invoke-virtual {p0}, Lcom/lidroid/widgets/TouchInterceptor;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lidroid/widgets/TouchInterceptor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    invoke-virtual {p0, v2, v4}, Lcom/lidroid/widgets/TouchInterceptor;->setSelectionFromTop(II)V

    .line 172
    .end local v2           #position:I
    .end local v4           #y:I
    :cond_0
    invoke-virtual {p0}, Lcom/lidroid/widgets/TouchInterceptor;->layoutChildren()V

    .line 173
    invoke-virtual {p0, v0}, Lcom/lidroid/widgets/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 174
    if-nez v3, :cond_1

    .line 183
    return-void

    .line 178
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 179
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/lidroid/widgets/TouchInterceptor;->mItemHeightNormal:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 180
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    .line 69
    iget-object v8, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragListener:Lcom/lidroid/widgets/TouchInterceptor$DragListener;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDropListener:Lcom/lidroid/widgets/TouchInterceptor$DropListener;

    if-eqz v8, :cond_1

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 103
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_1
    return v8

    .line 72
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 73
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 74
    .local v7, y:I
    invoke-virtual {p0, v6, v7}, Lcom/lidroid/widgets/TouchInterceptor;->pointToPosition(II)I

    move-result v3

    .line 75
    .local v3, itemnum:I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/lidroid/widgets/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {p0, v8}, Lcom/lidroid/widgets/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 79
    .local v2, item:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    sub-int v8, v7, v8

    iput v8, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragPoint:I

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v8, v7

    iput v8, p0, Lcom/lidroid/widgets/TouchInterceptor;->mCoordOffset:I

    .line 81
    const v8, 0x7f090008

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, dragger:Landroid/view/View;
    iget-object v4, p0, Lcom/lidroid/widgets/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 83
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 85
    iget v8, v4, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v6, v8, :cond_2

    .line 86
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 89
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v7}, Lcom/lidroid/widgets/TouchInterceptor;->startDragging(Landroid/graphics/Bitmap;I)V

    .line 91
    iput v3, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragPos:I

    .line 92
    iget v8, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragPos:I

    iput v8, p0, Lcom/lidroid/widgets/TouchInterceptor;->mFirstDragPos:I

    .line 93
    invoke-virtual {p0}, Lcom/lidroid/widgets/TouchInterceptor;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/lidroid/widgets/TouchInterceptor;->mHeight:I

    .line 94
    iget v5, p0, Lcom/lidroid/widgets/TouchInterceptor;->mTouchSlop:I

    .line 95
    .local v5, touchSlop:I
    sub-int v8, v7, v5

    iget v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mHeight:I

    div-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/lidroid/widgets/TouchInterceptor;->mUpperBound:I

    .line 96
    add-int v8, v7, v5

    iget v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mHeight:I

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/lidroid/widgets/TouchInterceptor;->mLowerBound:I

    .line 97
    const/4 v8, 0x0

    goto :goto_1

    .line 99
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #touchSlop:I
    :cond_2
    invoke-direct {p0}, Lcom/lidroid/widgets/TouchInterceptor;->stopDragging()V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x0

    .line 235
    iget-object v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragListener:Lcom/lidroid/widgets/TouchInterceptor$DragListener;

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDropListener:Lcom/lidroid/widgets/TouchInterceptor$DropListener;

    if-eqz v9, :cond_b

    :cond_0
    iget-object v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    if-eqz v9, :cond_b

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 237
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 287
    :cond_1
    :goto_0
    const/4 v9, 0x1

    .line 289
    .end local v0           #action:I
    :goto_1
    return v9

    .line 240
    .restart local v0       #action:I
    :pswitch_0
    iget-object v3, p0, Lcom/lidroid/widgets/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 241
    .local v3, r:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 242
    invoke-direct {p0}, Lcom/lidroid/widgets/TouchInterceptor;->stopDragging()V

    .line 243
    iget-object v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDropListener:Lcom/lidroid/widgets/TouchInterceptor$DropListener;

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragPos:I

    if-ltz v9, :cond_2

    iget v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/lidroid/widgets/TouchInterceptor;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 244
    iget-object v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDropListener:Lcom/lidroid/widgets/TouchInterceptor$DropListener;

    iget v10, p0, Lcom/lidroid/widgets/TouchInterceptor;->mFirstDragPos:I

    iget v11, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragPos:I

    invoke-interface {v9, v10, v11}, Lcom/lidroid/widgets/TouchInterceptor$DropListener;->drop(II)V

    .line 246
    :cond_2
    invoke-direct {p0, v12}, Lcom/lidroid/widgets/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_0

    .line 251
    .end local v3           #r:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 252
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 253
    .local v8, y:I
    invoke-direct {p0, v7, v8}, Lcom/lidroid/widgets/TouchInterceptor;->dragView(II)V

    .line 254
    invoke-direct {p0, v8}, Lcom/lidroid/widgets/TouchInterceptor;->getItemForPosition(I)I

    move-result v1

    .line 255
    .local v1, itemnum:I
    if-ltz v1, :cond_1

    .line 256
    if-eqz v0, :cond_3

    iget v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragPos:I

    if-eq v1, v9, :cond_5

    .line 257
    :cond_3
    iget-object v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragListener:Lcom/lidroid/widgets/TouchInterceptor$DragListener;

    if-eqz v9, :cond_4

    .line 258
    iget-object v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragListener:Lcom/lidroid/widgets/TouchInterceptor$DragListener;

    iget v10, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragPos:I

    invoke-interface {v9, v10, v1}, Lcom/lidroid/widgets/TouchInterceptor$DragListener;->drag(II)V

    .line 260
    :cond_4
    iput v1, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragPos:I

    .line 261
    invoke-direct {p0}, Lcom/lidroid/widgets/TouchInterceptor;->doExpansion()V

    .line 263
    :cond_5
    const/4 v5, 0x0

    .line 264
    .local v5, speed:I
    invoke-direct {p0, v8}, Lcom/lidroid/widgets/TouchInterceptor;->adjustScrollBounds(I)V

    .line 265
    iget v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mLowerBound:I

    if-le v8, v9, :cond_9

    .line 267
    iget v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mHeight:I

    iget v10, p0, Lcom/lidroid/widgets/TouchInterceptor;->mLowerBound:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_8

    const/16 v5, 0x10

    .line 272
    :cond_6
    :goto_2
    if-eqz v5, :cond_1

    .line 273
    iget v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v12, v9}, Lcom/lidroid/widgets/TouchInterceptor;->pointToPosition(II)I

    move-result v4

    .line 274
    .local v4, ref:I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_7

    .line 276
    iget v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/lidroid/widgets/TouchInterceptor;->getDividerHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x40

    invoke-virtual {p0, v12, v9}, Lcom/lidroid/widgets/TouchInterceptor;->pointToPosition(II)I

    move-result v4

    .line 278
    :cond_7
    invoke-virtual {p0}, Lcom/lidroid/widgets/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Lcom/lidroid/widgets/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 279
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 280
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 281
    .local v2, pos:I
    sub-int v9, v2, v5

    invoke-virtual {p0, v4, v9}, Lcom/lidroid/widgets/TouchInterceptor;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 267
    .end local v2           #pos:I
    .end local v4           #ref:I
    .end local v6           #v:Landroid/view/View;
    :cond_8
    const/4 v5, 0x4

    goto :goto_2

    .line 268
    :cond_9
    iget v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mUpperBound:I

    if-ge v8, v9, :cond_6

    .line 270
    iget v9, p0, Lcom/lidroid/widgets/TouchInterceptor;->mUpperBound:I

    div-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_a

    const/16 v5, -0x10

    :goto_3
    goto :goto_2

    :cond_a
    const/4 v5, -0x4

    goto :goto_3

    .line 289
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v5           #speed:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_1

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDragListener(Lcom/lidroid/widgets/TouchInterceptor$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDragListener:Lcom/lidroid/widgets/TouchInterceptor$DragListener;

    .line 342
    return-void
.end method

.method public setDropListener(Lcom/lidroid/widgets/TouchInterceptor$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/lidroid/widgets/TouchInterceptor;->mDropListener:Lcom/lidroid/widgets/TouchInterceptor$DropListener;

    .line 346
    return-void
.end method
