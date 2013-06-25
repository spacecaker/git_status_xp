.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$1;,
        Landroid/widget/ListView$SavedState;,
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MAX_SCROLL_FACTOR_LQVGA:F = 0.5f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mChoiceMode:I

.field private mClipDivider:Z

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mIsShortcutkeyEnabled:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 187
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 191
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 145
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 160
    iput-boolean v9, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 162
    iput-boolean v8, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 164
    iput-boolean v8, p0, Landroid/widget/ListView;->mIsShortcutkeyEnabled:Z

    .line 166
    iput v8, p0, Landroid/widget/ListView;->mChoiceMode:I

    .line 172
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 177
    new-instance v6, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$1;)V

    iput-object v6, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 193
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 196
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 198
    .local v3, entries:[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 199
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 204
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 209
    :cond_1
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 211
    .local v5, osHeader:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 212
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 215
    :cond_2
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 217
    .local v4, osFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 218
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 222
    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 224
    .local v2, dividerHeight:I
    if-eqz v2, :cond_4

    .line 225
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 228
    :cond_4
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 230
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 231
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 233
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 2977
    const/4 v0, 0x1

    sub-int v2, p2, v0

    .line 2978
    .local v2, abovePosition:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 2979
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 2980
    .local v3, edgeOfNewChild:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2982
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 2986
    add-int/lit8 v2, p2, 0x1

    .line 2987
    .local v2, belowPosition:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 2988
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 2989
    .local v3, edgeOfNewChild:I
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2991
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 255
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 258
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 261
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 264
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 266
    .local v2, delta:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 269
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 271
    :cond_0
    if-gez v2, :cond_1

    .line 273
    const/4 v2, 0x0

    .line 291
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 292
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 295
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 277
    :cond_3
    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 278
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 280
    .restart local v2       #delta:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 283
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 286
    :cond_4
    if-lez v2, :cond_1

    .line 287
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 2592
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2593
    .local v4, listBottom:I
    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2595
    .local v5, listTop:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 2597
    .local v7, numChildren:I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_5

    .line 2598
    const/4 v10, 0x1

    sub-int v3, v7, v10

    .line 2599
    .local v3, indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2600
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2603
    :cond_0
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2604
    .local v8, positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2606
    .local v9, viewToMakeVisible:Landroid/view/View;
    move v1, v4

    .line 2607
    .local v1, goalBottom:I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v8, v10, :cond_1

    .line 2608
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2611
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_2

    .line 2613
    const/4 v10, 0x0

    .line 2659
    .end local v1           #goalBottom:I
    :goto_0
    return v10

    .line 2616
    .restart local v1       #goalBottom:I
    :cond_2
    const/4 v10, -0x1

    if-eq p2, v10, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_3

    .line 2619
    const/4 v10, 0x0

    goto :goto_0

    .line 2622
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2624
    .local v0, amountToScroll:I
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v10, v11, :cond_4

    .line 2626
    const/4 v10, 0x1

    sub-int v10, v7, v10

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2627
    .local v6, max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2630
    .end local v6           #max:I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0

    .line 2632
    .end local v0           #amountToScroll:I
    .end local v1           #goalBottom:I
    .end local v3           #indexToMakeVisible:I
    .end local v8           #positionToMakeVisible:I
    .end local v9           #viewToMakeVisible:Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    .line 2633
    .restart local v3       #indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_6

    .line 2634
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2636
    :cond_6
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2637
    .restart local v8       #positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2638
    .restart local v9       #viewToMakeVisible:Landroid/view/View;
    move v2, v5

    .line 2639
    .local v2, goalTop:I
    if-lez v8, :cond_7

    .line 2640
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2642
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_8

    .line 2644
    const/4 v10, 0x0

    goto :goto_0

    .line 2647
    :cond_8
    const/4 v10, -0x1

    if-eq p2, v10, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_9

    .line 2650
    const/4 v10, 0x0

    goto :goto_0

    .line 2653
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2654
    .restart local v0       #amountToScroll:I
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v10, :cond_a

    .line 2656
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2657
    .restart local v6       #max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2659
    .end local v6           #max:I
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_0
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .parameter "direction"
    .parameter "newFocus"
    .parameter "positionOfNewFocus"

    .prologue
    .line 2851
    const/4 v0, 0x0

    .line 2852
    .local v0, amountToScroll:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2853
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2854
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 2855
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 2856
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 2857
    if-lez p3, :cond_0

    .line 2858
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 2870
    :cond_0
    :goto_0
    return v0

    .line 2862
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2863
    .local v1, listBottom:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 2864
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 2865
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge p3, v2, :cond_0

    .line 2866
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .locals 20
    .parameter "direction"

    .prologue
    .line 2749
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v14

    .line 2751
    .local v14, selectedView:Landroid/view/View;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Landroid/view/View;->hasFocus()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2752
    invoke-virtual {v14}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v11

    .line 2753
    .local v11, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v11

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 2778
    .end local v11           #oldFocus:Landroid/view/View;
    .local v10, newFocus:Landroid/view/View;
    :goto_0
    if-eqz v10, :cond_c

    .line 2779
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v12

    .line 2783
    .local v12, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    move v0, v12

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    .line 2784
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v13

    .line 2785
    .local v13, selectablePosition:I
    const/16 v17, -0x1

    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    const/16 v17, 0x82

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    if-lt v13, v12, :cond_1

    :cond_0
    const/16 v17, 0x21

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    if-le v13, v12, :cond_a

    .line 2788
    :cond_1
    const/16 v17, 0x0

    .line 2810
    .end local v12           #positionOfNewFocus:I
    .end local v13           #selectablePosition:I
    :goto_1
    return-object v17

    .line 2755
    .end local v10           #newFocus:Landroid/view/View;
    :cond_2
    const/16 v17, 0x82

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 2756
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    if-lez v17, :cond_3

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 2757
    .local v15, topFadingEdgeShowing:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    if-eqz v15, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v18

    :goto_3
    add-int v8, v17, v18

    .line 2759
    .local v8, listTop:I
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v0, v17

    move v1, v8

    if-le v0, v1, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v16, v17

    .line 2763
    .local v16, ySearchPoint:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2775
    .end local v8           #listTop:I
    .end local v15           #topFadingEdgeShowing:Z
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v10

    .restart local v10       #newFocus:Landroid/view/View;
    goto/16 :goto_0

    .line 2756
    .end local v10           #newFocus:Landroid/view/View;
    .end local v16           #ySearchPoint:I
    :cond_3
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_2

    .line 2757
    .restart local v15       #topFadingEdgeShowing:Z
    :cond_4
    const/16 v18, 0x0

    goto :goto_3

    .restart local v8       #listTop:I
    :cond_5
    move/from16 v16, v8

    .line 2759
    goto :goto_4

    .line 2765
    .end local v8           #listTop:I
    .end local v15           #topFadingEdgeShowing:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v18

    add-int v17, v17, v18

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    const/16 v17, 0x1

    move/from16 v5, v17

    .line 2767
    .local v5, bottomFadingEdgeShowing:Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    if-eqz v5, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v18

    :goto_7
    sub-int v7, v17, v18

    .line 2769
    .local v7, listBottom:I
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v0, v17

    move v1, v7

    if-ge v0, v1, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v16, v17

    .line 2773
    .restart local v16       #ySearchPoint:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_5

    .line 2765
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v7           #listBottom:I
    .end local v16           #ySearchPoint:I
    :cond_7
    const/16 v17, 0x0

    move/from16 v5, v17

    goto :goto_6

    .line 2767
    .restart local v5       #bottomFadingEdgeShowing:Z
    :cond_8
    const/16 v18, 0x0

    goto :goto_7

    .restart local v7       #listBottom:I
    :cond_9
    move/from16 v16, v7

    .line 2769
    goto :goto_8

    .line 2792
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v7           #listBottom:I
    .restart local v10       #newFocus:Landroid/view/View;
    .restart local v12       #positionOfNewFocus:I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v10

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v6

    .line 2794
    .local v6, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v9

    .line 2795
    .local v9, maxScrollAmount:I
    if-ge v6, v9, :cond_b

    .line 2797
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2798
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 2799
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 2800
    :cond_b
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    move v1, v9

    if-ge v0, v1, :cond_c

    .line 2805
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2806
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 2807
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 2810
    .end local v6           #focusScroll:I
    .end local v9           #maxScrollAmount:I
    .end local v12           #positionOfNewFocus:I
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 2378
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_0

    move v6, v7

    .line 2450
    :goto_0
    return v6

    .line 2382
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2384
    .local v5, selectedView:Landroid/view/View;
    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 2385
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v0

    .line 2388
    .local v0, amountToScroll:I
    iget-boolean v6, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_9

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v6

    move-object v1, v6

    .line 2389
    .local v1, focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_1

    .line 2390
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2391
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2394
    :cond_1
    if-eqz v1, :cond_a

    move v3, v9

    .line 2395
    .local v3, needToRedraw:Z
    :goto_2
    if-eq v4, v8, :cond_3

    .line 2396
    if-eqz v1, :cond_b

    move v6, v9

    :goto_3
    invoke-direct {p0, v5, p1, v4, v6}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2397
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 2398
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2399
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2400
    iget-boolean v6, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_2

    if-nez v1, :cond_2

    .line 2403
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2404
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2405
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2408
    .end local v2           #focused:Landroid/view/View;
    :cond_2
    const/4 v3, 0x1

    .line 2409
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2412
    :cond_3
    if-lez v0, :cond_4

    .line 2413
    const/16 v6, 0x21

    if-ne p1, v6, :cond_c

    move v6, v0

    :goto_4
    invoke-direct {p0, v6}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2414
    const/4 v3, 0x1

    .line 2419
    :cond_4
    iget-boolean v6, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2421
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2422
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-lez v6, :cond_5

    .line 2423
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2428
    .end local v2           #focused:Landroid/view/View;
    :cond_5
    if-ne v4, v8, :cond_6

    if-eqz v5, :cond_6

    invoke-direct {p0, v5, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2430
    const/4 v5, 0x0

    .line 2431
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 2435
    iput v8, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2438
    :cond_6
    if-eqz v3, :cond_d

    .line 2439
    if-eqz v5, :cond_7

    .line 2440
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    .line 2441
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2443
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v6

    if-nez v6, :cond_8

    .line 2444
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2446
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    move v6, v9

    .line 2447
    goto/16 :goto_0

    .line 2388
    .end local v1           #focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    :cond_9
    const/4 v6, 0x0

    move-object v1, v6

    goto/16 :goto_1

    .restart local v1       #focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    :cond_a
    move v3, v7

    .line 2394
    goto :goto_2

    .restart local v3       #needToRedraw:Z
    :cond_b
    move v6, v7

    .line 2396
    goto :goto_3

    .line 2413
    :cond_c
    neg-int v6, v0

    goto :goto_4

    :cond_d
    move v6, v7

    .line 2450
    goto/16 :goto_0
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 566
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 568
    .local v1, count:I
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 569
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v0, p0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 570
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 571
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 572
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 568
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 576
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v4, 0x1

    .line 2100
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    move v2, v7

    .line 2212
    :goto_0
    return v2

    .line 2104
    :cond_0
    iget-boolean v2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 2105
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2108
    :cond_1
    const/4 v1, 0x0

    .line 2109
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2111
    .local v0, action:I
    if-eq v0, v4, :cond_4

    .line 2112
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v2, :cond_2

    .line 2113
    sparse-switch p1, :sswitch_data_0

    .line 2124
    :cond_2
    sparse-switch p1, :sswitch_data_1

    .line 2175
    :cond_3
    :goto_1
    const-string v2, "GT-S5660"

    const-string v3, "GT-B7510"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2176
    sparse-switch p1, :sswitch_data_2

    .line 2194
    :cond_4
    :goto_2
    if-nez v1, :cond_5

    .line 2195
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2198
    :cond_5
    if-eqz v1, :cond_b

    move v2, v4

    .line 2199
    goto :goto_0

    .line 2119
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 2120
    goto :goto_0

    .line 2126
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2127
    :goto_3
    if-lez p2, :cond_3

    .line 2128
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v1

    .line 2129
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 2132
    :cond_6
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v1

    .line 2134
    goto :goto_1

    .line 2137
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2138
    :goto_4
    if-lez p2, :cond_3

    .line 2139
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v1

    .line 2140
    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    .line 2143
    :cond_7
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v1

    .line 2145
    goto :goto_1

    .line 2148
    :sswitch_3
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 2149
    goto :goto_1

    .line 2151
    :sswitch_4
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 2152
    goto :goto_1

    .line 2156
    :sswitch_5
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v2, :cond_8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_8

    .line 2157
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    .line 2159
    :cond_8
    const/4 v1, 0x1

    .line 2160
    goto :goto_1

    .line 2163
    :sswitch_6
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2164
    :cond_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2165
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    .line 2169
    :goto_5
    const/4 v1, 0x1

    goto :goto_1

    .line 2167
    :cond_a
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->pageScroll(I)Z

    goto :goto_5

    .line 2179
    :sswitch_7
    iget-boolean v2, p0, Landroid/widget/ListView;->mIsShortcutkeyEnabled:Z

    if-ne v4, v2, :cond_4

    .line 2180
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v1

    goto :goto_2

    .line 2186
    :sswitch_8
    iget-boolean v2, p0, Landroid/widget/ListView;->mIsShortcutkeyEnabled:Z

    if-ne v4, v2, :cond_4

    .line 2187
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v1

    goto/16 :goto_2

    .line 2201
    :cond_b
    packed-switch v0, :pswitch_data_0

    move v2, v7

    .line 2212
    goto/16 :goto_0

    .line 2203
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2206
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2209
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2113
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 2124
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    .line 2176
    :sswitch_data_2
    .sparse-switch
        0x1e -> :sswitch_8
        0x30 -> :sswitch_7
    .end sparse-switch

    .line 2201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .parameter "childCount"

    .prologue
    const/4 v9, 0x1

    .line 1385
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, p1

    sub-int v6, v7, v9

    .line 1386
    .local v6, lastPosition:I
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v7, v9

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1389
    sub-int v7, p1, v9

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1392
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1395
    .local v4, lastBottom:I
    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1399
    .local v1, end:I
    sub-int v0, v1, v4

    .line 1400
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1401
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1405
    .local v3, firstTop:I
    if-lez v0, :cond_2

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 1406
    :cond_0
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1408
    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1411
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1412
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1415
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v7, v9

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1417
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1422
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .parameter "childCount"

    .prologue
    const/4 v10, 0x1

    .line 1434
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1437
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1440
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1443
    .local v2, firstTop:I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1446
    .local v6, start:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1450
    .local v0, end:I
    sub-int v7, v2, v6

    .line 1451
    .local v7, topOffset:I
    sub-int v8, p1, v10

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1452
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1453
    .local v3, lastBottom:I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, p1

    sub-int v5, v8, v10

    .line 1457
    .local v5, lastPosition:I
    if-lez v7, :cond_2

    .line 1458
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1459
    :cond_0
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_1

    .line 1461
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1464
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1465
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ge v5, v8, :cond_2

    .line 1468
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1470
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1477
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_2
    :goto_0
    return-void

    .line 1472
    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_3
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_2

    .line 1473
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .parameter "descendant"

    .prologue
    .line 2881
    const/4 v0, 0x0

    .line 2882
    .local v0, distance:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2883
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2884
    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2885
    .local v1, listBottom:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 2886
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 2890
    :cond_0
    :goto_0
    return v0

    .line 2887
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 2888
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 4
    .parameter "sel"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 822
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 823
    .local v0, dividerHeight:I
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 824
    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 825
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 826
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 832
    :goto_0
    return-void

    .line 828
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 829
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 830
    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v3, 0x1

    .line 711
    const/4 v8, 0x0

    .line 713
    .local v8, selectedView:Landroid/view/View;
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v1

    .line 715
    .local v7, end:I
    :goto_0
    if-ge p2, v7, :cond_2

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge p1, v0, :cond_2

    .line 717
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 718
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 720
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 721
    if-eqz v5, :cond_0

    .line 722
    move-object v8, v6

    .line 724
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 725
    goto :goto_0

    .line 717
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    move v5, v0

    goto :goto_1

    .line 727
    :cond_2
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 790
    sub-int v6, p2, p1

    .line 792
    .local v6, height:I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 794
    .local v1, position:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 796
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 798
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 799
    .local v8, selHeight:I
    if-gt v8, v6, :cond_0

    .line 800
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 803
    :cond_0
    invoke-direct {p0, v7, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 805
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 806
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 811
    :goto_0
    return-object v7

    .line 808
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 17
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 846
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v11

    .line 847
    .local v11, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v5, v0

    .line 851
    .local v5, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v11

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v16

    .line 853
    .local v16, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v11

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v10

    .line 856
    .local v10, bottomSelectionPixel:I
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v13

    .line 860
    .local v13, sel:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v4, v10, :cond_1

    .line 863
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v14, v4, v16

    .line 867
    .local v14, spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v15, v4, v10

    .line 868
    .local v15, spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 871
    .local v12, offset:I
    neg-int v4, v12

    invoke-virtual {v13, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 887
    .end local v12           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 889
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_2

    .line 890
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 895
    :goto_1
    return-object v13

    .line 872
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 875
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v14, v16, v4

    .line 879
    .restart local v14       #spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v15, v10, v4

    .line 880
    .restart local v15       #spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 883
    .restart local v12       #offset:I
    invoke-virtual {v13, v12}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 892
    .end local v12           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .parameter "nextTop"

    .prologue
    .line 770
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 771
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 772
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 773
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 775
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 1337
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1338
    .local v5, tempIsSelected:Z
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1340
    .local v10, temp:Landroid/view/View;
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1345
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1346
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1347
    sub-int v0, p1, v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1349
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1350
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1351
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1352
    .local v8, childCount:I
    if-lez v8, :cond_0

    .line 1353
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1366
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    move-object v0, v10

    .line 1371
    :goto_2
    return-object v0

    .line 1337
    .end local v5           #tempIsSelected:Z
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    .end local v9           #dividerHeight:I
    .end local v10           #temp:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    .line 1356
    .restart local v5       #tempIsSelected:Z
    .restart local v9       #dividerHeight:I
    .restart local v10       #temp:Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1358
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1359
    sub-int v0, p1, v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1360
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1361
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 1362
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 1368
    :cond_3
    if-eqz v6, :cond_4

    move-object v0, v6

    .line 1369
    goto :goto_2

    :cond_4
    move-object v0, v7

    .line 1371
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v3, 0x0

    .line 741
    const/4 v8, 0x0

    .line 743
    .local v8, selectedView:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 745
    .local v7, end:I
    :goto_0
    if-le p2, v7, :cond_2

    if-ltz p1, :cond_2

    .line 747
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    move v5, v0

    .line 748
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 749
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 750
    if-eqz v5, :cond_0

    .line 751
    move-object v8, v6

    .line 753
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 754
    goto :goto_0

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_1
    move v5, v3

    .line 747
    goto :goto_1

    .line 756
    :cond_2
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 758
    return-object v8
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2576
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 3
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 908
    move v0, p1

    .line 909
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq p3, v1, :cond_0

    .line 910
    sub-int/2addr v0, p2

    .line 912
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 925
    move v0, p1

    .line 926
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 927
    add-int/2addr v0, p2

    .line 929
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 2313
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 2314
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2318
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2319
    .local v3, numChildren:I
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2320
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2321
    .local v4, selectedView:Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2324
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2325
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2327
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2329
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2330
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2331
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2332
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2333
    const/4 v5, 0x1

    .line 2347
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 2340
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2342
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2343
    invoke-direct {p0, v1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 2347
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .parameter "selectedView"
    .parameter "direction"
    .parameter "newSelectedPosition"
    .parameter "newFocusAssigned"

    .prologue
    .line 2468
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2469
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2479
    :cond_0
    const/4 v5, 0x0

    .line 2480
    .local v5, topSelected:Z
    iget v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2481
    .local v4, selectedIndex:I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2482
    .local v2, nextSelectedIndex:I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_3

    .line 2483
    move v7, v2

    .line 2484
    .local v7, topViewIndex:I
    move v1, v4

    .line 2485
    .local v1, bottomViewIndex:I
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2486
    .local v6, topView:Landroid/view/View;
    move-object v0, p1

    .line 2487
    .local v0, bottomView:Landroid/view/View;
    const/4 v5, 0x1

    .line 2495
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2498
    .local v3, numChildren:I
    if-eqz v6, :cond_1

    .line 2499
    if-nez p4, :cond_4

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2500
    invoke-direct {p0, v6, v7, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2504
    :cond_1
    if-eqz v0, :cond_2

    .line 2505
    if-nez p4, :cond_5

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2506
    invoke-direct {p0, v0, v1, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2508
    :cond_2
    return-void

    .line 2489
    .end local v0           #bottomView:Landroid/view/View;
    .end local v1           #bottomViewIndex:I
    .end local v3           #numChildren:I
    .end local v6           #topView:Landroid/view/View;
    .end local v7           #topViewIndex:I
    :cond_3
    move v7, v4

    .line 2490
    .restart local v7       #topViewIndex:I
    move v1, v2

    .line 2491
    .restart local v1       #bottomViewIndex:I
    move-object v6, p1

    .line 2492
    .restart local v6       #topView:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #bottomView:Landroid/view/View;
    goto :goto_0

    .line 2499
    .restart local v3       #numChildren:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2505
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 1742
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1743
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1744
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1745
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 1756
    .end local p0
    :goto_1
    return v5

    .line 1744
    .restart local p0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1749
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1750
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1751
    .local v3, numFooters:I
    const/4 v2, 0x0

    .end local p0
    :goto_2
    if-ge v2, v3, :cond_3

    .line 1752
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, p0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 1753
    goto :goto_1

    .line 1751
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1756
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 2833
    if-ne p1, p2, :cond_0

    move v1, v2

    .line 2838
    :goto_0
    return v1

    .line 2837
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2838
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 9
    .parameter "direction"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 2696
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2697
    .local v1, firstPosition:I
    const/16 v6, 0x82

    if-ne p1, v6, :cond_4

    .line 2698
    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 2701
    .local v5, startPos:I
    :goto_0
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    move v6, v7

    .line 2736
    :goto_1
    return v6

    .end local v5           #startPos:I
    :cond_0
    move v5, v1

    .line 2698
    goto :goto_0

    .line 2704
    .restart local v5       #startPos:I
    :cond_1
    if-ge v5, v1, :cond_2

    .line 2705
    move v5, v1

    .line 2708
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 2709
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2710
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_2
    if-gt v4, v3, :cond_9

    .line 2711
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v4

    .line 2713
    goto :goto_1

    .line 2710
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2717
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    sub-int v2, v6, v8

    .line 2718
    .local v2, last:I
    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v6, v7, :cond_5

    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int/2addr v6, v8

    move v5, v6

    .line 2721
    .restart local v5       #startPos:I
    :goto_3
    if-gez v5, :cond_6

    move v6, v7

    .line 2722
    goto :goto_1

    .line 2718
    .end local v5           #startPos:I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    sub-int/2addr v6, v8

    move v5, v6

    goto :goto_3

    .line 2724
    .restart local v5       #startPos:I
    :cond_6
    if-le v5, v2, :cond_7

    .line 2725
    move v5, v2

    .line 2728
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2729
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_4
    if-lt v4, v1, :cond_9

    .line 2730
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_8

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    move v6, v4

    .line 2732
    goto :goto_1

    .line 2729
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2           #last:I
    :cond_9
    move v6, v7

    .line 2736
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"

    .prologue
    .line 1777
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1779
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1780
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1788
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1800
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_0
    return-object v8

    .line 1795
    .end local v8           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1798
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1800
    .end local v1           #child:Landroid/view/View;
    .restart local v8       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .parameter "child"
    .parameter "childIndex"
    .parameter "numChildren"

    .prologue
    .line 2518
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2519
    .local v2, oldHeight:I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2520
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2522
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2525
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2526
    .local v0, heightDelta:I
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2527
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2526
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2530
    .end local v0           #heightDelta:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    const/4 v7, 0x0

    .line 2538
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2539
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2540
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2545
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2547
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2549
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 2550
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2554
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2555
    return-void

    .line 2552
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 1183
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1184
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1185
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1187
    .restart local v3       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1189
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1190
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1192
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1194
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1196
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 1197
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1201
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1202
    return-void

    .line 1199
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 21
    .parameter "oldSel"
    .parameter "newSel"
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 952
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v12

    .line 953
    .local v12, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 957
    .local v17, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v12

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v20

    .line 959
    .local v20, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v12

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v10

    .line 962
    .local v10, bottomSelectionPixel:I
    if-lez p3, :cond_2

    .line 984
    const/4 v4, 0x1

    sub-int v5, v17, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 987
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mDividerHeight:I

    move v11, v0

    .line 990
    .local v11, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int v6, v4, v11

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 994
    .local v16, sel:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v4, v10, :cond_0

    .line 997
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v18, v4, v20

    .line 1000
    .local v18, spaceAbove:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v19, v4, v10

    .line 1003
    .local v19, spaceBelow:I
    sub-int v4, p5, p4

    div-int/lit8 v13, v4, 0x2

    .line 1004
    .local v13, halfVerticalSpace:I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1005
    .local v15, offset:I
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1008
    neg-int v4, v15

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1010
    neg-int v4, v15

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1014
    .end local v13           #halfVerticalSpace:I
    .end local v15           #offset:I
    .end local v18           #spaceAbove:I
    .end local v19           #spaceBelow:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_1

    .line 1015
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1016
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1017
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1098
    .end local v11           #dividerHeight:I
    :goto_0
    return-object v16

    .line 1019
    .restart local v11       #dividerHeight:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1020
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1021
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1023
    .end local v11           #dividerHeight:I
    .end local v16           #sel:Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1044
    if-eqz p2, :cond_4

    .line 1046
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1056
    .restart local v16       #sel:Landroid/view/View;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 1058
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v18, v20, v4

    .line 1061
    .restart local v18       #spaceAbove:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v19, v10, v4

    .line 1064
    .restart local v19       #spaceBelow:I
    sub-int v4, p5, p4

    div-int/lit8 v13, v4, 0x2

    .line 1065
    .restart local v13       #halfVerticalSpace:I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1066
    .restart local v15       #offset:I
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1069
    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1073
    .end local v13           #halfVerticalSpace:I
    .end local v15           #offset:I
    .end local v18           #spaceAbove:I
    .end local v19           #spaceBelow:I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1051
    .end local v16           #sel:Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16       #sel:Landroid/view/View;
    goto :goto_1

    .line 1076
    .end local v16           #sel:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1081
    .local v6, oldTop:I
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1084
    .restart local v16       #sel:Landroid/view/View;
    move v0, v6

    move/from16 v1, p4

    if-ge v0, v1, :cond_6

    .line 1087
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 1088
    .local v14, newBottom:I
    add-int/lit8 v4, p4, 0x14

    if-ge v14, v4, :cond_6

    .line 1090
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, p4, v4

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1095
    .end local v14           #newBottom:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .parameter "newFocus"

    .prologue
    .line 2818
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 2819
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2820
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2821
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2822
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 2819
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2825
    .end local v0           #child:Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    .line 2563
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2564
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2565
    .local v4, h:I
    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2566
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 2567
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2568
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 2569
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2570
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 380
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 381
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 382
    .local v1, info:Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 383
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 387
    .end local v1           #info:Landroid/widget/ListView$FixedViewInfo;
    :cond_0
    return-void

    .line 380
    .restart local v1       #info:Landroid/widget/ListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 13
    .parameter "amount"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2901
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 2903
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 2904
    .local v5, listBottom:I
    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 2905
    .local v6, listTop:I
    iget-object v8, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 2907
    .local v8, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    if-gez p1, :cond_3

    .line 2911
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 2912
    .local v7, numChildren:I
    sub-int v9, v7, v11

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2913
    .local v1, last:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_0

    .line 2914
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v7

    sub-int v3, v9, v11

    .line 2915
    .local v3, lastVisiblePosition:I
    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v9, v11

    if-ge v3, v9, :cond_0

    .line 2916
    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2917
    add-int/lit8 v7, v7, 0x1

    .line 2921
    goto :goto_0

    .line 2926
    .end local v3           #lastVisiblePosition:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 2927
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 2931
    :cond_1
    invoke-virtual {p0, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2932
    .local v0, first:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_7

    .line 2933
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 2934
    .local v4, layoutParams:Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2935
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 2936
    invoke-virtual {v8, v0}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2940
    :goto_2
    invoke-virtual {p0, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2941
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_1

    .line 2938
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_2

    .line 2945
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    .end local v7           #numChildren:I
    :cond_3
    invoke-virtual {p0, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2948
    .restart local v0       #first:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_4

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 2949
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2950
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v9, v11

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_3

    .line 2955
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_5

    .line 2956
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 2959
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    sub-int v2, v9, v11

    .line 2960
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2963
    .restart local v1       #last:Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 2964
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 2965
    .restart local v4       #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2966
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 2967
    invoke-virtual {v8, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2971
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2972
    goto :goto_4

    .line 2969
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_5

    .line 2974
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    :cond_7
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 23
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 1819
    if-eqz p6, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v20

    if-eqz v20, :cond_8

    const/16 v20, 0x1

    move/from16 v12, v20

    .line 1820
    .local v12, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v20

    move v0, v12

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    const/16 v20, 0x1

    move/from16 v18, v20

    .line 1821
    .local v18, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v14, v0

    .line 1822
    .local v14, mode:I
    if-lez v14, :cond_a

    const/16 v20, 0x3

    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    const/16 v20, 0x1

    move/from16 v11, v20

    .line 1824
    .local v11, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v20

    move v0, v11

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    const/16 v20, 0x1

    move/from16 v17, v20

    .line 1825
    .local v17, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v20

    if-eqz v20, :cond_c

    :cond_0
    const/16 v20, 0x1

    move/from16 v15, v20

    .line 1829
    .local v15, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .line 1830
    .local v16, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v16, :cond_1

    .line 1831
    new-instance v16, Landroid/widget/AbsListView$LayoutParams;

    .end local v16           #p:Landroid/widget/AbsListView$LayoutParams;
    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1834
    .restart local v16       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1836
    if-eqz p7, :cond_2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    :cond_2
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 1838
    :cond_3
    if-eqz p4, :cond_d

    const/16 v20, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1847
    :goto_6
    if-eqz v18, :cond_4

    .line 1848
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1851
    :cond_4
    if-eqz v17, :cond_5

    .line 1852
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1855
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mChoiceMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1856
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1857
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/Checkable;

    move-object/from16 p6, v0

    .end local p6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    move-object/from16 v0, p6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1861
    :cond_6
    if-eqz v15, :cond_12

    .line 1862
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 1864
    .local v9, childWidthSpec:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v13, v0

    .line 1866
    .local v13, lpHeight:I
    if-lez v13, :cond_11

    .line 1867
    const/high16 v20, 0x4000

    move v0, v13

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1871
    .local v6, childHeightSpec:I
    :goto_7
    move-object/from16 v0, p1

    move v1, v9

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1876
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v13           #lpHeight:I
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1877
    .local v19, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1878
    .local v10, h:I
    if-eqz p4, :cond_13

    move/from16 v8, p3

    .line 1880
    .local v8, childTop:I
    :goto_9
    if-eqz v15, :cond_14

    .line 1881
    add-int v7, p5, v19

    .line 1882
    .local v7, childRight:I
    add-int v5, v8, v10

    .line 1883
    .local v5, childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    move v2, v8

    move v3, v7

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1889
    .end local v5           #childBottom:I
    .end local v7           #childRight:I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v20

    if-nez v20, :cond_7

    .line 1890
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1892
    :cond_7
    return-void

    .line 1819
    .end local v8           #childTop:I
    .end local v10           #h:I
    .end local v11           #isPressed:Z
    .end local v12           #isSelected:Z
    .end local v14           #mode:I
    .end local v15           #needToMeasure:Z
    .end local v16           #p:Landroid/widget/AbsListView$LayoutParams;
    .end local v17           #updateChildPressed:Z
    .end local v18           #updateChildSelected:Z
    .end local v19           #w:I
    .restart local p6
    :cond_8
    const/16 v20, 0x0

    move/from16 v12, v20

    goto/16 :goto_0

    .line 1820
    .restart local v12       #isSelected:Z
    :cond_9
    const/16 v20, 0x0

    move/from16 v18, v20

    goto/16 :goto_1

    .line 1822
    .restart local v14       #mode:I
    .restart local v18       #updateChildSelected:Z
    :cond_a
    const/16 v20, 0x0

    move/from16 v11, v20

    goto/16 :goto_2

    .line 1824
    .restart local v11       #isPressed:Z
    :cond_b
    const/16 v20, 0x0

    move/from16 v17, v20

    goto/16 :goto_3

    .line 1825
    .restart local v17       #updateChildPressed:Z
    :cond_c
    const/16 v20, 0x0

    move/from16 v15, v20

    goto/16 :goto_4

    .line 1838
    .restart local v15       #needToMeasure:Z
    .restart local v16       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 1840
    :cond_e
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1841
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 1842
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1844
    :cond_f
    if-eqz p4, :cond_10

    const/16 v20, -0x1

    :goto_b
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v16

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_10
    const/16 v20, 0x0

    goto :goto_b

    .line 1869
    .end local p6
    .restart local v9       #childWidthSpec:I
    .restart local v13       #lpHeight:I
    :cond_11
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .restart local v6       #childHeightSpec:I
    goto/16 :goto_7

    .line 1873
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v13           #lpHeight:I
    :cond_12
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_8

    .line 1878
    .restart local v10       #h:I
    .restart local v19       #w:I
    :cond_13
    sub-int v20, p3, v10

    move/from16 v8, v20

    goto/16 :goto_9

    .line 1885
    .restart local v8       #childTop:I
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v20

    sub-int v20, p5, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1886
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v8, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_a
.end method

.method private showingBottomFadingEdge()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 590
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 591
    .local v1, childCount:I
    sub-int v4, v1, v6

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 592
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v1

    sub-int v2, v4, v6

    .line 594
    .local v2, lastVisiblePosition:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 596
    .local v3, listBottom:I
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v4, v6

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    move v4, v6

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 582
    iget v1, p0, Landroid/view/View;->mScrollY:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v0, v1, v2

    .line 583
    .local v0, listTop:I
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v1, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-le v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 427
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 428
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 403
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 404
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 405
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 406
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 407
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 414
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 350
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 351
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 326
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 327
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    :cond_0
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 332
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 333
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 334
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 335
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    return-void
.end method

.method arrowScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 2359
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2360
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2361
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 2362
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2366
    :cond_0
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2364
    return v0

    .line 2366
    .end local v0           #handled:Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1896
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 3929
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 3930
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3932
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 3933
    iget-object v0, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 3935
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .parameter "canvas"

    .prologue
    .line 3083
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mDividerHeight:I

    move v11, v0

    .line 3084
    .local v11, dividerHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    .line 3085
    .local v27, overscrollHeader:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    .line 3086
    .local v26, overscrollFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v27, :cond_8

    const/16 v32, 0x1

    move/from16 v14, v32

    .line 3087
    .local v14, drawOverscrollHeader:Z
    :goto_0
    if-eqz v26, :cond_9

    const/16 v32, 0x1

    move/from16 v13, v32

    .line 3088
    .local v13, drawOverscrollFooter:Z
    :goto_1
    if-lez v11, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    if-eqz v32, :cond_a

    const/16 v32, 0x1

    move/from16 v12, v32

    .line 3090
    .local v12, drawDividers:Z
    :goto_2
    if-nez v12, :cond_0

    if-nez v14, :cond_0

    if-eqz v13, :cond_f

    .line 3092
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    .line 3093
    .local v8, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3094
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3096
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    .line 3097
    .local v10, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3098
    .local v19, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v22, v0

    .line 3099
    .local v22, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    sub-int v32, v22, v32

    const/16 v33, 0x1

    sub-int v18, v32, v33

    .line 3100
    .local v18, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    move/from16 v20, v0

    .line 3101
    .local v20, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    move/from16 v17, v0

    .line 3102
    .local v17, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v16, v0

    .line 3103
    .local v16, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    move v6, v0

    .line 3104
    .local v6, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    .line 3109
    .local v5, adapter:Landroid/widget/ListAdapter;
    if-eqz v12, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v32

    if-eqz v32, :cond_b

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v32

    if-nez v32, :cond_b

    const/16 v32, 0x1

    move/from16 v15, v32

    .line 3111
    .local v15, fillForMissingDividers:Z
    :goto_3
    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    if-nez v32, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 3112
    new-instance v32, Landroid/graphics/Paint;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3113
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/graphics/Paint;->setColor(I)V

    .line 3115
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    .line 3117
    .local v28, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v33, v0

    add-int v23, v32, v33

    .line 3118
    .local v23, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v32, v0

    if-nez v32, :cond_10

    .line 3119
    const/4 v7, 0x0

    .line 3122
    .local v7, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v29, v0

    .line 3123
    .local v29, scrollY:I
    if-lez v10, :cond_2

    if-gez v29, :cond_2

    .line 3124
    if-eqz v14, :cond_c

    .line 3125
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3126
    move/from16 v0, v29

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3127
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3135
    :cond_2
    :goto_4
    const/16 v21, 0x0

    .local v21, i:I
    :goto_5
    move/from16 v0, v21

    move v1, v10

    if-ge v0, v1, :cond_e

    .line 3136
    if-nez v20, :cond_3

    add-int v32, v16, v21

    move/from16 v0, v32

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    :cond_3
    if-nez v17, :cond_4

    add-int v32, v16, v21

    move/from16 v0, v32

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 3138
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3139
    .local v9, child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 3141
    if-eqz v12, :cond_7

    move v0, v7

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    if-eqz v13, :cond_5

    const/16 v32, 0x1

    sub-int v32, v10, v32

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_7

    .line 3143
    :cond_5
    if-nez v6, :cond_6

    add-int v32, v16, v21

    move-object v0, v5

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_d

    const/16 v32, 0x1

    sub-int v32, v10, v32

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_6

    add-int v32, v16, v21

    add-int/lit8 v32, v32, 0x1

    move-object v0, v5

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 3146
    :cond_6
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3147
    add-int v32, v7, v11

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3148
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3135
    .end local v9           #child:Landroid/view/View;
    :cond_7
    :goto_6
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 3086
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v7           #bottom:I
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v10           #count:I
    .end local v12           #drawDividers:Z
    .end local v13           #drawOverscrollFooter:Z
    .end local v14           #drawOverscrollHeader:Z
    .end local v15           #fillForMissingDividers:Z
    .end local v16           #first:I
    .end local v17           #footerDividers:Z
    .end local v18           #footerLimit:I
    .end local v19           #headerCount:I
    .end local v20           #headerDividers:Z
    .end local v21           #i:I
    .end local v22           #itemCount:I
    .end local v23           #listBottom:I
    .end local v28           #paint:Landroid/graphics/Paint;
    .end local v29           #scrollY:I
    :cond_8
    const/16 v32, 0x0

    move/from16 v14, v32

    goto/16 :goto_0

    .line 3087
    .restart local v14       #drawOverscrollHeader:Z
    :cond_9
    const/16 v32, 0x0

    move/from16 v13, v32

    goto/16 :goto_1

    .line 3088
    .restart local v13       #drawOverscrollFooter:Z
    :cond_a
    const/16 v32, 0x0

    move/from16 v12, v32

    goto/16 :goto_2

    .line 3109
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v6       #areAllItemsSelectable:Z
    .restart local v8       #bounds:Landroid/graphics/Rect;
    .restart local v10       #count:I
    .restart local v12       #drawDividers:Z
    .restart local v16       #first:I
    .restart local v17       #footerDividers:Z
    .restart local v18       #footerLimit:I
    .restart local v19       #headerCount:I
    .restart local v20       #headerDividers:Z
    .restart local v22       #itemCount:I
    :cond_b
    const/16 v32, 0x0

    move/from16 v15, v32

    goto/16 :goto_3

    .line 3128
    .restart local v7       #bottom:I
    .restart local v15       #fillForMissingDividers:Z
    .restart local v23       #listBottom:I
    .restart local v28       #paint:Landroid/graphics/Paint;
    .restart local v29       #scrollY:I
    :cond_c
    if-eqz v12, :cond_2

    .line 3129
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3130
    move v0, v11

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3131
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_4

    .line 3149
    .restart local v9       #child:Landroid/view/View;
    .restart local v21       #i:I
    :cond_d
    if-eqz v15, :cond_7

    .line 3150
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3151
    add-int v32, v7, v11

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3152
    move-object/from16 v0, p1

    move-object v1, v8

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 3158
    .end local v9           #child:Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v33, v0

    add-int v25, v32, v33

    .line 3159
    .local v25, overFooterBottom:I
    if-eqz v13, :cond_f

    add-int v32, v16, v10

    move/from16 v0, v32

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    move/from16 v0, v25

    move v1, v7

    if-le v0, v1, :cond_f

    .line 3161
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3162
    move/from16 v0, v25

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3163
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3220
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v7           #bottom:I
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v10           #count:I
    .end local v15           #fillForMissingDividers:Z
    .end local v16           #first:I
    .end local v17           #footerDividers:Z
    .end local v18           #footerLimit:I
    .end local v19           #headerCount:I
    .end local v20           #headerDividers:Z
    .end local v21           #i:I
    .end local v22           #itemCount:I
    .end local v23           #listBottom:I
    .end local v25           #overFooterBottom:I
    .end local v28           #paint:Landroid/graphics/Paint;
    .end local v29           #scrollY:I
    :cond_f
    :goto_7
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3221
    return-void

    .line 3167
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v6       #areAllItemsSelectable:Z
    .restart local v8       #bounds:Landroid/graphics/Rect;
    .restart local v10       #count:I
    .restart local v15       #fillForMissingDividers:Z
    .restart local v16       #first:I
    .restart local v17       #footerDividers:Z
    .restart local v18       #footerLimit:I
    .restart local v19       #headerCount:I
    .restart local v20       #headerDividers:Z
    .restart local v22       #itemCount:I
    .restart local v23       #listBottom:I
    .restart local v28       #paint:Landroid/graphics/Paint;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    .line 3169
    .local v24, listTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v29, v0

    .line 3171
    .restart local v29       #scrollY:I
    if-lez v10, :cond_11

    if-eqz v14, :cond_11

    .line 3172
    move/from16 v0, v29

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3173
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getTop()I

    move-result v32

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3174
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3177
    :cond_11
    if-eqz v14, :cond_16

    const/16 v32, 0x1

    move/from16 v30, v32

    .line 3178
    .local v30, start:I
    :goto_8
    move/from16 v21, v30

    .restart local v21       #i:I
    :goto_9
    move/from16 v0, v21

    move v1, v10

    if-ge v0, v1, :cond_18

    .line 3179
    if-nez v20, :cond_12

    add-int v32, v16, v21

    move/from16 v0, v32

    move/from16 v1, v19

    if-lt v0, v1, :cond_15

    :cond_12
    if-nez v17, :cond_13

    add-int v32, v16, v21

    move/from16 v0, v32

    move/from16 v1, v18

    if-ge v0, v1, :cond_15

    .line 3181
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3182
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v31

    .line 3184
    .local v31, top:I
    if-eqz v12, :cond_15

    move/from16 v0, v31

    move/from16 v1, v24

    if-le v0, v1, :cond_15

    .line 3185
    if-nez v6, :cond_14

    add-int v32, v16, v21

    move-object v0, v5

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_17

    const/16 v32, 0x1

    sub-int v32, v10, v32

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_14

    add-int v32, v16, v21

    add-int/lit8 v32, v32, 0x1

    move-object v0, v5

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_17

    .line 3188
    :cond_14
    sub-int v32, v31, v11

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3189
    move/from16 v0, v31

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3194
    const/16 v32, 0x1

    sub-int v32, v21, v32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3178
    .end local v9           #child:Landroid/view/View;
    .end local v31           #top:I
    :cond_15
    :goto_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 3177
    .end local v21           #i:I
    .end local v30           #start:I
    :cond_16
    const/16 v32, 0x0

    move/from16 v30, v32

    goto :goto_8

    .line 3195
    .restart local v9       #child:Landroid/view/View;
    .restart local v21       #i:I
    .restart local v30       #start:I
    .restart local v31       #top:I
    :cond_17
    if-eqz v15, :cond_15

    .line 3196
    sub-int v32, v31, v11

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3197
    move/from16 v0, v31

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3198
    move-object/from16 v0, p1

    move-object v1, v8

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 3204
    .end local v9           #child:Landroid/view/View;
    .end local v31           #top:I
    :cond_18
    if-lez v10, :cond_f

    if-lez v29, :cond_f

    .line 3205
    if-eqz v13, :cond_19

    .line 3206
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v4, v0

    .line 3207
    .local v4, absListBottom:I
    iput v4, v8, Landroid/graphics/Rect;->top:I

    .line 3208
    add-int v32, v4, v29

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3209
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 3210
    .end local v4           #absListBottom:I
    :cond_19
    if-eqz v12, :cond_f

    .line 3211
    move/from16 v0, v23

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3212
    add-int v32, v23, v11

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3213
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_7
.end method

.method protected dispatchDrawWithBounce(Landroid/graphics/Canvas;)V
    .locals 30
    .parameter "canvas"

    .prologue
    .line 3227
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x22

    const/16 v29, 0x22

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    const/16 v28, 0x1

    move/from16 v11, v28

    .line 3228
    .local v11, clipToPadding:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/BounceController;->bounce(Landroid/graphics/Canvas;Z)I

    move-result v26

    .line 3230
    .local v26, saveCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v21, v0

    .line 3231
    .local v21, height:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    .line 3234
    .local v10, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mDividerHeight:I

    move v13, v0

    .line 3236
    .local v13, dividerHeight:I
    if-lez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_a

    .line 3238
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    .line 3239
    .local v8, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3240
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3242
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v12

    .line 3243
    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3244
    .local v19, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    sub-int v28, v28, v29

    const/16 v29, 0x1

    sub-int v18, v28, v29

    .line 3245
    .local v18, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    move/from16 v20, v0

    .line 3246
    .local v20, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    move/from16 v17, v0

    .line 3247
    .local v17, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v16, v0

    .line 3248
    .local v16, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    move v6, v0

    .line 3249
    .local v6, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    .line 3251
    .local v5, adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v28, v0

    if-nez v28, :cond_5

    .line 3253
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v24, v28, v29

    .line 3255
    .local v24, listBottom:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    move v1, v12

    if-ge v0, v1, :cond_a

    .line 3256
    if-nez v20, :cond_0

    add-int v28, v16, v22

    move/from16 v0, v28

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    :cond_0
    if-nez v17, :cond_1

    add-int v28, v16, v22

    move/from16 v0, v28

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 3258
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3259
    .local v9, child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 3261
    .local v7, bottom:I
    move v0, v7

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    if-nez v6, :cond_2

    add-int v28, v16, v22

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    add-int v28, v16, v22

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_3

    const/16 v28, 0x1

    sub-int v28, v12, v28

    move/from16 v0, v22

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    add-int v28, v16, v22

    add-int/lit8 v28, v28, 0x1

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 3265
    :cond_2
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3266
    add-int v28, v7, v13

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3267
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3255
    .end local v7           #bottom:I
    .end local v9           #child:Landroid/view/View;
    :cond_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 3227
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v10           #childCount:I
    .end local v11           #clipToPadding:Z
    .end local v12           #count:I
    .end local v13           #dividerHeight:I
    .end local v16           #first:I
    .end local v17           #footerDividers:Z
    .end local v18           #footerLimit:I
    .end local v19           #headerCount:I
    .end local v20           #headerDividers:Z
    .end local v21           #height:F
    .end local v22           #i:I
    .end local v24           #listBottom:I
    .end local v26           #saveCount:I
    :cond_4
    const/16 v28, 0x0

    move/from16 v11, v28

    goto/16 :goto_0

    .line 3273
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v6       #areAllItemsSelectable:Z
    .restart local v8       #bounds:Landroid/graphics/Rect;
    .restart local v10       #childCount:I
    .restart local v11       #clipToPadding:Z
    .restart local v12       #count:I
    .restart local v13       #dividerHeight:I
    .restart local v16       #first:I
    .restart local v17       #footerDividers:Z
    .restart local v18       #footerLimit:I
    .restart local v19       #headerCount:I
    .restart local v20       #headerDividers:Z
    .restart local v21       #height:F
    .restart local v26       #saveCount:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    .line 3275
    .local v25, listTop:I
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_2
    move/from16 v0, v22

    move v1, v12

    if-ge v0, v1, :cond_a

    .line 3276
    if-nez v20, :cond_6

    add-int v28, v16, v22

    move/from16 v0, v28

    move/from16 v1, v19

    if-lt v0, v1, :cond_9

    :cond_6
    if-nez v17, :cond_7

    add-int v28, v16, v22

    move/from16 v0, v28

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 3278
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3279
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v27

    .line 3281
    .local v27, top:I
    move/from16 v0, v27

    move/from16 v1, v25

    if-le v0, v1, :cond_9

    if-nez v6, :cond_8

    add-int v28, v16, v22

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    add-int v28, v16, v22

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_9

    add-int v28, v16, v22

    if-eqz v28, :cond_8

    add-int v28, v16, v22

    const/16 v29, 0x1

    sub-int v28, v28, v29

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 3287
    :cond_8
    sub-int v28, v27, v13

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3288
    move/from16 v0, v27

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3293
    const/16 v28, 0x1

    sub-int v28, v22, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3275
    .end local v9           #child:Landroid/view/View;
    .end local v27           #top:I
    :cond_9
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 3301
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v12           #count:I
    .end local v16           #first:I
    .end local v17           #footerDividers:Z
    .end local v18           #footerLimit:I
    .end local v19           #headerCount:I
    .end local v20           #headerDividers:Z
    .end local v22           #i:I
    .end local v25           #listTop:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getDrawingTime()J

    move-result-wide v14

    .line 3303
    .local v14, drawingTime:J
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_3
    move/from16 v0, v22

    move v1, v10

    if-ge v0, v1, :cond_c

    .line 3304
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3305
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v28

    if-nez v28, :cond_b

    .line 3306
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 3303
    :cond_b
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 3310
    .end local v9           #child:Landroid/view/View;
    :cond_c
    if-lez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_e

    .line 3312
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    .line 3313
    .restart local v8       #bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3314
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3316
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v12

    .line 3317
    .restart local v12       #count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    .line 3318
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v16, v0

    .line 3320
    .restart local v16       #first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v28, v0

    if-nez v28, :cond_10

    .line 3323
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_d

    if-lez v12, :cond_d

    const/16 v28, 0x0

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 3324
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v28

    sub-int v28, v28, v13

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3325
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v13

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3326
    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3329
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_e

    if-lez v12, :cond_e

    add-int v28, v16, v12

    const/16 v29, 0x1

    sub-int v28, v28, v29

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 3331
    const/16 v28, 0x1

    sub-int v28, v12, v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getBottom()I

    move-result v23

    .line 3333
    .local v23, itemBottom:I
    move/from16 v0, v23

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3334
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v13

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3335
    const/16 v28, 0x1

    sub-int v28, v12, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3357
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v12           #count:I
    .end local v16           #first:I
    .end local v23           #itemBottom:I
    :cond_e
    :goto_4
    if-ltz v26, :cond_f

    .line 3358
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3359
    if-eqz v11, :cond_f

    .line 3360
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v28, v0

    or-int/lit8 v28, v28, 0x22

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3362
    :cond_f
    return-void

    .line 3340
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v8       #bounds:Landroid/graphics/Rect;
    .restart local v12       #count:I
    .restart local v16       #first:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_11

    if-lez v12, :cond_11

    const/16 v28, 0x0

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 3341
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v28

    const/16 v29, 0x1

    sub-int v28, v28, v29

    sub-int v28, v28, v13

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3342
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v13

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3343
    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3346
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_e

    if-lez v12, :cond_e

    add-int v28, v16, v12

    const/16 v29, 0x1

    sub-int v28, v28, v29

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 3348
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v24, v28, v29

    .line 3350
    .restart local v24       #listBottom:I
    move/from16 v0, v24

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3351
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v13

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3352
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_4
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 2071
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2072
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 2074
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2075
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2078
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2081
    .end local v0           #focused:Landroid/view/View;
    :cond_0
    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 2017
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    .line 2021
    .local v5, populated:Z
    if-nez v5, :cond_4

    .line 2022
    const/4 v4, 0x0

    .line 2023
    .local v4, itemCount:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    .line 2025
    .local v2, currentItemIndex:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2026
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_3

    .line 2027
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2028
    .local v1, count:I
    const/16 v6, 0xf

    if-ge v1, v6, :cond_2

    .line 2029
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2030
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2031
    add-int/lit8 v4, v4, 0x1

    .line 2029
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2032
    :cond_1
    if-gt v3, v2, :cond_0

    .line 2033
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2037
    .end local v3           #i:I
    :cond_2
    move v4, v1

    .line 2041
    .end local v1           #count:I
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2042
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 2045
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #currentItemIndex:I
    .end local v4           #itemCount:I
    :cond_4
    return v5
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 3375
    iget-object v1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3376
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Landroid/widget/ListView;->mClipDivider:Z

    .line 3378
    .local v0, clipDivider:Z
    if-nez v0, :cond_1

    .line 3379
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3385
    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3387
    if-eqz v0, :cond_0

    .line 3388
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3390
    :cond_0
    return-void

    .line 3381
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3382
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3055
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3057
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3058
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3060
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3061
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 3062
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3065
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3066
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3068
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3069
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3038
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3040
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3041
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3043
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3044
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 3045
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3048
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3049
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3051
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3052
    return-void
.end method

.method fillGap(Z)V
    .locals 5
    .parameter "down"

    .prologue
    const/4 v4, 0x1

    .line 685
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 686
    .local v0, count:I
    if-eqz p1, :cond_1

    .line 687
    if-lez v0, :cond_0

    sub-int v2, v0, v4

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    move v1, v2

    .line 689
    .local v1, startOffset:I
    :goto_0
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 690
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 697
    :goto_1
    return-void

    .line 687
    .end local v1           #startOffset:I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 692
    :cond_1
    if-lez v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    move v1, v2

    .line 694
    .restart local v1       #startOffset:I
    :goto_2
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v4

    invoke-direct {p0, v2, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 695
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 692
    .end local v1           #startOffset:I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 1304
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1305
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 1306
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1307
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1308
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1309
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1310
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1322
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 1307
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1314
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v3, 0x1

    sub-int v1, v0, v3

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 1315
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1316
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1317
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1314
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1322
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3610
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3611
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3614
    .local v1, len:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3615
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, p0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3617
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3618
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3620
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 3626
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v3

    .line 3614
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3626
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3656
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3657
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3660
    .local v1, len:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3661
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, p0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3663
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3664
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3666
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 3672
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v3

    .line 3660
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3672
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .parameter "id"

    .prologue
    .line 3591
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3592
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3593
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3594
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3602
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3597
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3598
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3599
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3602
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    .line 3636
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3637
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3638
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3639
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3648
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3643
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3644
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3645
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3648
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2270
    const/4 v0, 0x0

    .line 2271
    .local v0, moved:Z
    const/16 v2, 0x21

    if-ne p1, v2, :cond_3

    .line 2272
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 2273
    invoke-virtual {p0, v5, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2274
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 2275
    iput v4, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2276
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2277
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2279
    :cond_0
    const/4 v0, 0x1

    .line 2297
    .end local v1           #position:I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2298
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2299
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2302
    :cond_2
    return v0

    .line 2281
    :cond_3
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 2282
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 2284
    const-string v2, "GT-S5660"

    const-string v3, "GT-B7510"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2285
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2, v5}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2288
    .restart local v1       #position:I
    :goto_1
    if-ltz v1, :cond_4

    .line 2289
    const/4 v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2290
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2291
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2293
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 2287
    .end local v1           #position:I
    :cond_5
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .restart local v1       #position:I
    goto :goto_1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3868
    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3869
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v8

    .line 3898
    :goto_0
    return-object v8

    .line 3874
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 3875
    iget-object v7, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3876
    .local v7, states:Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3877
    .local v3, count:I
    new-array v5, v3, [J

    .line 3878
    .local v5, ids:[J
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3880
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3881
    .local v1, checkedCount:I
    const/4 v4, 0x0

    .local v4, i:I
    move v2, v1

    .end local v1           #checkedCount:I
    .local v2, checkedCount:I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 3882
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3883
    add-int/lit8 v1, v2, 0x1

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3881
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #checkedCount:I
    .restart local v2       #checkedCount:I
    goto :goto_1

    .line 3889
    :cond_1
    if-ne v2, v3, :cond_2

    move-object v8, v5

    .line 3890
    goto :goto_0

    .line 3892
    :cond_2
    new-array v6, v2, [J

    .line 3893
    .local v6, result:[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v6

    .line 3895
    goto :goto_0

    .line 3898
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #checkedCount:I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #ids:[J
    .end local v6           #result:[J
    .end local v7           #states:Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v8, v10, [J

    goto :goto_0

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #checkedCount:I
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v5       #ids:[J
    .restart local v7       #states:Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    goto :goto_2
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 3910
    iget v4, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_1

    .line 3911
    :cond_0
    const/4 v4, 0x0

    new-array v4, v4, [J

    .line 3922
    :goto_0
    return-object v4

    .line 3914
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 3915
    .local v2, idStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 3916
    .local v0, count:I
    new-array v3, v0, [J

    .line 3918
    .local v3, ids:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 3919
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 3918
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v4, v3

    .line 3922
    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3833
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3834
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 3837
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 3850
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 3851
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3853
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 3691
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3398
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3424
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3012
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 242
    const-string v0, "GT-S5660"

    const-string v1, "GT-B7510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/high16 v0, 0x3f00

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 245
    :goto_0
    return v0

    :cond_0
    const v0, 0x3ea8f5c3

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3500
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3481
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 3816
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 3817
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 3820
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 3020
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 26

    .prologue
    .line 1481
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    move v10, v0

    .line 1482
    .local v10, blockLayoutRequests:Z
    if-nez v10, :cond_0

    .line 1483
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1489
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1491
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    if-nez v4, :cond_1

    .line 1494
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1495
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1730
    if-nez v10, :cond_0

    .line 1731
    :goto_0
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1734
    :cond_0
    return-void

    .line 1499
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 1500
    .local v8, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v4, v5

    .line 1502
    .local v9, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v12

    .line 1503
    .local v12, childCount:I
    const/16 v21, 0x0

    .line 1504
    .local v21, index:I
    const/4 v7, 0x0

    .line 1507
    .local v7, delta:I
    const/4 v5, 0x0

    .line 1508
    .local v5, oldSel:Landroid/view/View;
    const/16 v22, 0x0

    .line 1509
    .local v22, oldFirst:Landroid/view/View;
    const/4 v6, 0x0

    .line 1511
    .local v6, newSel:Landroid/view/View;
    const/16 v16, 0x0

    .line 1514
    .local v16, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_0

    .line 1529
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v6, v0

    .end local v6           #newSel:Landroid/view/View;
    sub-int v21, v4, v6

    .line 1530
    if-ltz v21, :cond_2

    move/from16 v0, v21

    move v1, v12

    if-ge v0, v1, :cond_2

    .line 1531
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1535
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 1537
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move v4, v0

    if-ltz v4, :cond_3

    .line 1538
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v6, v0

    sub-int v7, v4, v6

    .line 1542
    :cond_3
    add-int v4, v21, v7

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1546
    .restart local v6       #newSel:Landroid/view/View;
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move v13, v0

    .line 1547
    .local v13, dataChanged:Z
    if-eqz v13, :cond_5

    .line 1548
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1553
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v4, v0

    if-nez v4, :cond_6

    .line 1554
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1555
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 1730
    if-nez v10, :cond_0

    goto/16 :goto_0

    .line 1516
    .end local v13           #dataChanged:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v11, v0

    sub-int v21, v4, v11

    .line 1517
    if-ltz v21, :cond_4

    move/from16 v0, v21

    move v1, v12

    if-ge v0, v1, :cond_4

    .line 1518
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    .line 1557
    .restart local v13       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v11, v0

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    if-eq v4, v11, :cond_8

    .line 1558
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #oldSel:Landroid/view/View;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    .end local v6           #newSel:Landroid/view/View;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") with Adapter("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1730
    .end local v7           #delta:I
    .end local v8           #childrenTop:I
    .end local v9           #childrenBottom:I
    .end local v12           #childCount:I
    .end local v13           #dataChanged:Z
    .end local v16           #focusLayoutRestoreView:Landroid/view/View;
    .end local v21           #index:I
    .end local v22           #oldFirst:Landroid/view/View;
    :catchall_0
    move-exception v4

    if-nez v10, :cond_7

    .line 1731
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1730
    :cond_7
    throw v4

    .line 1565
    .restart local v5       #oldSel:Landroid/view/View;
    .restart local v6       #newSel:Landroid/view/View;
    .restart local v7       #delta:I
    .restart local v8       #childrenTop:I
    .restart local v9       #childrenBottom:I
    .restart local v12       #childCount:I
    .restart local v13       #dataChanged:Z
    .restart local v16       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v21       #index:I
    .restart local v22       #oldFirst:Landroid/view/View;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1569
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v14, v0

    .line 1570
    .local v14, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v24, v0

    .line 1573
    .local v24, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    const/4 v15, 0x0

    .line 1578
    .local v15, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v13, :cond_9

    .line 1579
    const/16 v20, 0x0

    .local v20, i:I
    :goto_2
    move/from16 v0, v20

    move v1, v12

    if-ge v0, v1, :cond_a

    .line 1580
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1579
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1587
    .end local v20           #i:I
    :cond_9
    move-object/from16 v0, v24

    move v1, v12

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1594
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v19

    .line 1595
    .local v19, focusedChild:Landroid/view/View;
    if-eqz v19, :cond_d

    .line 1600
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1601
    :cond_b
    move-object/from16 v15, v19

    .line 1603
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v16

    .line 1604
    if-eqz v16, :cond_c

    .line 1606
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1609
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1613
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1615
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_1

    .line 1642
    if-nez v12, :cond_16

    .line 1643
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_15

    .line 1644
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    .end local v5           #oldSel:Landroid/view/View;
    move-result v23

    .line 1645
    .local v23, position:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1646
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v25

    .line 1667
    .end local v6           #newSel:Landroid/view/View;
    .end local v23           #position:I
    .local v25, sel:Landroid/view/View;
    :goto_3
    invoke-virtual/range {v24 .. v24}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1669
    if-eqz v25, :cond_1e

    .line 1672
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mItemsCanFocus:Z

    move v4, v0

    if-eqz v4, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1673
    move-object/from16 v0, v25

    move-object v1, v15

    if-ne v0, v1, :cond_e

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_f
    const/4 v4, 0x1

    move/from16 v17, v4

    .line 1675
    .local v17, focusWasTaken:Z
    :goto_4
    if-nez v17, :cond_1c

    .line 1679
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v18

    .line 1680
    .local v18, focused:Landroid/view/View;
    if-eqz v18, :cond_10

    .line 1681
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->clearFocus()V

    .line 1683
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    .line 1691
    .end local v17           #focusWasTaken:Z
    .end local v18           #focused:Landroid/view/View;
    :goto_5
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1712
    :cond_11
    :goto_6
    if-eqz v16, :cond_12

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 1714
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1717
    :cond_12
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1718
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1719
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1720
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1722
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 1724
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v4, v0

    if-lez v4, :cond_13

    .line 1725
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 1728
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 1730
    if-nez v10, :cond_0

    goto/16 :goto_0

    .line 1617
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    .restart local v6       #newSel:Landroid/view/View;
    :pswitch_2
    if-eqz v6, :cond_14

    .line 1618
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    move v2, v8

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1620
    .end local v25           #sel:Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v25

    .line 1622
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1624
    .end local v25           #sel:Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .line 1625
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1627
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .end local v5           #oldSel:Landroid/view/View;
    move-result-object v25

    .line 1628
    .restart local v25       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1631
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_5
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1632
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v25

    .line 1633
    .restart local v25       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1636
    .end local v25           #sel:Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .line 1637
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v4, p0

    .line 1639
    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v25

    .line 1640
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1648
    .end local v25           #sel:Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    .end local v5           #oldSel:Landroid/view/View;
    move-result v23

    .line 1649
    .restart local v23       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1650
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v25

    .line 1651
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1653
    .end local v23           #position:I
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    if-ltz v4, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v6, v0

    .end local v6           #newSel:Landroid/view/View;
    if-ge v4, v6, :cond_18

    .line 1654
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    if-nez v5, :cond_17

    move v5, v8

    .end local v5           #oldSel:Landroid/view/View;
    :goto_7
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :cond_17
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_7

    .line 1656
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    if-ge v4, v5, :cond_1a

    .line 1657
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    if-nez v22, :cond_19

    move v5, v8

    :goto_8
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v25           #sel:Landroid/view/View;
    :cond_19
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_8

    .line 1660
    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1673
    :cond_1b
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_4

    .line 1685
    .restart local v17       #focusWasTaken:Z
    :cond_1c
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 1689
    .end local v17           #focusWasTaken:Z
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_5

    .line 1693
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    if-lez v4, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x3

    if-ge v4, v5, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v5, v0

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1696
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1697
    .local v11, child:Landroid/view/View;
    if-eqz v11, :cond_1f

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    .line 1705
    .end local v11           #child:Landroid/view/View;
    :cond_1f
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v16, :cond_11

    .line 1706
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_6

    .line 1699
    :cond_20
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    .line 1514
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1615
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v3, -0x1

    .line 1984
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1985
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 2011
    :goto_0
    return v2

    .line 1989
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1990
    .local v1, count:I
    iget-boolean v2, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v2, :cond_6

    .line 1991
    if-eqz p2, :cond_2

    .line 1992
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1993
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1994
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1997
    :cond_2
    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1998
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1999
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2003
    :cond_3
    if-ltz p1, :cond_4

    if-lt p1, v1, :cond_5

    :cond_4
    move v2, v3

    .line 2004
    goto :goto_0

    :cond_5
    move v2, p1

    .line 2006
    goto :goto_0

    .line 2008
    :cond_6
    if-ltz p1, :cond_7

    if-lt p1, v1, :cond_8

    :cond_7
    move v2, v3

    .line 2009
    goto :goto_0

    :cond_8
    move v2, p1

    .line 2011
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1243
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1244
    .local v2, adapter:Landroid/widget/ListAdapter;
    if-nez v2, :cond_0

    .line 1245
    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    .line 1299
    .end local p2
    :goto_0
    return v11

    .line 1249
    .restart local p2
    :cond_0
    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int v10, v11, v12

    .line 1250
    .local v10, returnedHeight:I
    iget v11, p0, Landroid/widget/ListView;->mDividerHeight:I

    if-lez v11, :cond_4

    iget-object v11, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_4

    iget v11, p0, Landroid/widget/ListView;->mDividerHeight:I

    move v4, v11

    .line 1253
    .local v4, dividerHeight:I
    :goto_1
    const/4 v7, 0x0

    .line 1258
    .local v7, prevHeightWithoutPartialChild:I
    const/4 v11, -0x1

    move/from16 v0, p3

    move v1, v11

    if-ne v0, v1, :cond_1

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    move/from16 p3, v11

    .line 1259
    :cond_1
    iget-object v8, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1260
    .local v8, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v9

    .line 1261
    .local v9, recyle:Z
    iget-object v6, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 1263
    .local v6, isScrap:[Z
    move v5, p2

    .end local p2
    .local v5, i:I
    :goto_2
    move v0, v5

    move/from16 v1, p3

    if-gt v0, v1, :cond_8

    .line 1264
    invoke-virtual {p0, v5, v6}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 1266
    .local v3, child:Landroid/view/View;
    invoke-direct {p0, v3, v5, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1268
    if-lez v5, :cond_2

    .line 1270
    add-int/2addr v10, v4

    .line 1274
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/AbsListView$LayoutParams;

    iget v11, p2, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v11}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1276
    invoke-virtual {v8, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1279
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v10, v11

    .line 1281
    move v0, v10

    move/from16 v1, p4

    if-lt v0, v1, :cond_6

    .line 1284
    if-ltz p5, :cond_5

    move v0, v5

    move/from16 v1, p5

    if-le v0, v1, :cond_5

    if-lez v7, :cond_5

    move v0, v10

    move/from16 v1, p4

    if-eq v0, v1, :cond_5

    move v11, v7

    goto :goto_0

    .line 1250
    .end local v3           #child:Landroid/view/View;
    .end local v4           #dividerHeight:I
    .end local v5           #i:I
    .end local v6           #isScrap:[Z
    .end local v7           #prevHeightWithoutPartialChild:I
    .end local v8           #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .end local v9           #recyle:Z
    .restart local p2
    :cond_4
    const/4 v11, 0x0

    move v4, v11

    goto :goto_1

    .end local p2
    .restart local v3       #child:Landroid/view/View;
    .restart local v4       #dividerHeight:I
    .restart local v5       #i:I
    .restart local v6       #isScrap:[Z
    .restart local v7       #prevHeightWithoutPartialChild:I
    .restart local v8       #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .restart local v9       #recyle:Z
    :cond_5
    move/from16 v11, p4

    .line 1284
    goto :goto_0

    .line 1292
    :cond_6
    if-ltz p5, :cond_7

    move v0, v5

    move/from16 v1, p5

    if-lt v0, v1, :cond_7

    .line 1293
    move v7, v10

    .line 1263
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v3           #child:Landroid/view/View;
    :cond_8
    move v11, v10

    .line 1299
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3573
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 3575
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3576
    .local v0, count:I
    if-lez v0, :cond_1

    .line 3577
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3578
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3577
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3580
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    .line 3582
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 12
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3505
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3507
    const/4 v2, -0x1

    .line 3508
    .local v2, closetChildIndex:I
    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 3509
    iget v9, p0, Landroid/view/View;->mScrollX:I

    iget v10, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 3511
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3520
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 3521
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3562
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :goto_0
    return-void

    .line 3527
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    iget v11, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_1

    .line 3528
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3529
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 3534
    :cond_1
    iget-object v8, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3535
    .local v8, otherRect:Landroid/graphics/Rect;
    const v6, 0x7fffffff

    .line 3536
    .local v6, minDistance:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 3537
    .local v1, childCount:I
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3539
    .local v4, firstPosition:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v1, :cond_4

    .line 3541
    add-int v9, v4, v5

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 3539
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3545
    :cond_3
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3546
    .local v7, other:Landroid/view/View;
    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3547
    invoke-virtual {p0, v7, v8}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3548
    invoke-static {p3, v8, p2}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    .line 3550
    .local v3, distance:I
    if-ge v3, v6, :cond_2

    .line 3551
    move v6, v3

    .line 3552
    move v2, v5

    goto :goto_2

    .line 3557
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #childCount:I
    .end local v3           #distance:I
    .end local v4           #firstPosition:I
    .end local v5           #i:I
    .end local v6           #minDistance:I
    .end local v7           #other:Landroid/view/View;
    .end local v8           #otherRect:Landroid/graphics/Rect;
    :cond_4
    if-ltz v2, :cond_5

    .line 3558
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 3560
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2086
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 2091
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2096
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1137
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1139
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1140
    .local v10, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1141
    .local v9, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1142
    .local v11, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1144
    .local v4, heightSize:I
    const/4 v8, 0x0

    .line 1145
    .local v8, childWidth:I
    const/4 v7, 0x0

    .line 1147
    .local v7, childHeight:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    move v0, v2

    :goto_0
    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1148
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v10, :cond_0

    if-nez v9, :cond_1

    .line 1150
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1152
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1154
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1155
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1157
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1163
    .end local v6           #child:Landroid/view/View;
    :cond_1
    if-nez v10, :cond_2

    .line 1164
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v11, v0, v1

    .line 1168
    :cond_2
    if-nez v9, :cond_3

    .line 1169
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1173
    :cond_3
    const/high16 v0, -0x8000

    if-ne v9, v0, :cond_4

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1175
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1178
    :cond_4
    invoke-virtual {p0, v11, v4}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1179
    iput p1, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 1180
    return-void

    .line 1147
    :cond_5
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 3999
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView$SavedState;

    move-object v1, v0

    .line 4001
    .local v1, ss:Landroid/widget/ListView$SavedState;
    invoke-virtual {v1}, Landroid/widget/ListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4003
    iget-object v2, v1, Landroid/widget/ListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_0

    .line 4004
    iget-object v2, v1, Landroid/widget/ListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4007
    :cond_0
    iget-object v2, v1, Landroid/widget/ListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_1

    .line 4008
    iget-object v2, v1, Landroid/widget/ListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 4010
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 3993
    invoke-super {p0}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 3994
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/ListView$SavedState;

    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/ListView$SavedState;-><init>(Landroid/os/Parcelable;Landroid/util/SparseBooleanArray;Landroid/util/LongSparseArray;)V

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1118
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1119
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1120
    .local v2, focusedChild:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1121
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1122
    .local v1, childPosition:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1123
    .local v0, childBottom:I
    const/4 v5, 0x0

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1124
    .local v3, offset:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1125
    .local v4, top:I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1126
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1128
    :cond_0
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setup(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1131
    .end local v0           #childBottom:I
    .end local v1           #childPosition:I
    .end local v2           #focusedChild:Landroid/view/View;
    .end local v3           #offset:I
    .end local v4           #top:I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1132
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 3677
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3680
    const/4 v0, 0x0

    .line 3682
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2224
    const/4 v1, -0x1

    .line 2225
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 2227
    .local v0, down:Z
    const/16 v3, 0x21

    if-ne p1, v3, :cond_4

    .line 2228
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2234
    :cond_0
    :goto_0
    if-ltz v1, :cond_5

    .line 2235
    invoke-virtual {p0, v1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2236
    .local v2, position:I
    if-ltz v2, :cond_5

    .line 2237
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2238
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2240
    if-eqz v0, :cond_1

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 2241
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2244
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2245
    iput v6, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2248
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2249
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2250
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2251
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_3
    move v3, v6

    .line 2258
    .end local v2           #position:I
    :goto_1
    return v3

    .line 2229
    :cond_4
    const/16 v3, 0x82

    if-ne p1, v3, :cond_0

    .line 2230
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v3, v6

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2231
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v3, v7

    .line 2258
    goto :goto_1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 3717
    const/4 v0, 0x0

    .line 3719
    .local v0, handled:Z
    iget v2, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v2, :cond_1

    .line 3720
    const/4 v0, 0x1

    .line 3722
    iget v2, p0, Landroid/widget/ListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 3723
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v6

    .line 3724
    .local v1, newValue:Z
    :goto_0
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3725
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3726
    if-eqz v1, :cond_3

    .line 3727
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3744
    :cond_0
    :goto_1
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 3745
    invoke-virtual {p0}, Landroid/widget/ListView;->rememberSyncState()V

    .line 3746
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3749
    .end local v1           #newValue:Z
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 3751
    return v0

    :cond_2
    move v1, v4

    .line 3723
    goto :goto_0

    .line 3729
    .restart local v1       #newValue:Z
    :cond_3
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 3733
    .end local v1           #newValue:Z
    :cond_4
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_5

    move v1, v6

    .line 3734
    .restart local v1       #newValue:Z
    :goto_2
    if-eqz v1, :cond_0

    .line 3735
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3736
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3737
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3738
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 3739
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .end local v1           #newValue:Z
    :cond_5
    move v1, v4

    .line 3733
    goto :goto_2
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1211
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 443
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 447
    const/4 v0, 0x1

    .line 449
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    move v1, v0

    .line 452
    .end local v0           #result:Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 366
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 370
    const/4 v0, 0x1

    .line 372
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    move v1, v0

    .line 375
    .end local v0           #result:Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 18
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 604
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v11, v0

    .line 607
    .local v11, rectTopWithinChild:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 608
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v15

    neg-int v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v16

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 610
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v8

    .line 611
    .local v8, height:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v10

    .line 612
    .local v10, listUnfadedTop:I
    add-int v9, v10, v8

    .line 613
    .local v9, listUnfadedBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v7

    .line 615
    .local v7, fadingEdge:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 617
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v15, v0

    if-gtz v15, :cond_0

    if-le v11, v7, :cond_1

    .line 618
    :cond_0
    add-int/2addr v10, v7

    .line 622
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    .line 623
    .local v4, childCount:I
    const/4 v15, 0x1

    sub-int v15, v4, v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 625
    .local v3, bottomOfBottomChild:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 627
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int v16, v3, v7

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 629
    :cond_2
    sub-int/2addr v9, v7

    .line 633
    :cond_3
    const/4 v13, 0x0

    .line 635
    .local v13, scrollYDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-le v15, v9, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-le v15, v10, :cond_7

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v8, :cond_6

    .line 642
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int/2addr v15, v10

    add-int/2addr v13, v15

    .line 649
    :goto_0
    sub-int v6, v3, v9

    .line 650
    .local v6, distanceToBottom:I
    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 670
    .end local v6           #distanceToBottom:I
    :cond_4
    :goto_1
    if-eqz v13, :cond_9

    const/4 v15, 0x1

    move v12, v15

    .line 671
    .local v12, scroll:Z
    :goto_2
    if-eqz v12, :cond_5

    .line 672
    neg-int v15, v13

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 673
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    .line 674
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 675
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 677
    :cond_5
    return v12

    .line 645
    .end local v12           #scroll:Z
    :cond_6
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int/2addr v15, v9

    add-int/2addr v13, v15

    goto :goto_0

    .line 651
    :cond_7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-ge v15, v10, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-ge v15, v9, :cond_4

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v8, :cond_8

    .line 658
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int v15, v9, v15

    sub-int/2addr v13, v15

    .line 665
    :goto_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v14

    .line 666
    .local v14, top:I
    sub-int v5, v14, v10

    .line 667
    .local v5, deltaToTop:I
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_1

    .line 661
    .end local v5           #deltaToTop:I
    .end local v14           #top:I
    :cond_8
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v15, v10, v15

    sub-int/2addr v13, v15

    goto :goto_3

    .line 670
    :cond_9
    const/4 v15, 0x0

    move v12, v15

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 557
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 559
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 561
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 562
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter "adapter"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 484
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 488
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 489
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 491
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 492
    :cond_1
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 497
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 498
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 499
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_8

    .line 500
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 501
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 502
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 503
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 505
    new-instance v1, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    .line 506
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 508
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 511
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_7

    .line 512
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1, v5}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 516
    .local v0, position:I
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 517
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 519
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v1, :cond_2

    .line 521
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 524
    :cond_2
    iget v1, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v1, :cond_3

    .line 527
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 537
    .end local v0           #position:I
    :cond_3
    :goto_2
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_4

    .line 538
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 541
    :cond_4
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_5

    .line 542
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 545
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 546
    return-void

    .line 494
    :cond_6
    iput-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    goto/16 :goto_0

    .line 514
    :cond_7
    invoke-virtual {p0, v5, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_1

    .line 531
    .end local v0           #position:I
    :cond_8
    iput-boolean v4, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 532
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 534
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 3026
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 3027
    .local v0, opaque:Z
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3028
    if-eqz v0, :cond_1

    .line 3029
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3030
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3032
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3034
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3035
    return-void

    .line 3026
    .end local v0           #opaque:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public setChoiceMode(I)V
    .locals 1
    .parameter "choiceMode"

    .prologue
    .line 3704
    iput p1, p0, Landroid/widget/ListView;->mChoiceMode:I

    .line 3705
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v0, :cond_1

    .line 3706
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 3707
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3709
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3710
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 3713
    :cond_1
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "divider"

    .prologue
    const/4 v2, 0x0

    .line 3408
    if-eqz p1, :cond_1

    .line 3409
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3410
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v0, p0, Landroid/widget/ListView;->mClipDivider:Z

    .line 3415
    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3416
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3417
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayoutIfNecessary()V

    .line 3418
    return-void

    .line 3412
    :cond_1
    iput v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3413
    iput-boolean v2, p0, Landroid/widget/ListView;->mClipDivider:Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3416
    goto :goto_1
.end method

.method public setDividerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 3434
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3435
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayoutIfNecessary()V

    .line 3436
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .parameter "footerDividersEnabled"

    .prologue
    .line 3460
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3461
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3462
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .parameter "headerDividersEnabled"

    .prologue
    .line 3447
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3448
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3449
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 6
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 3763
    iget v1, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 3802
    :cond_0
    :goto_0
    return-void

    .line 3767
    :cond_1
    iget v1, p0, Landroid/widget/ListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 3768
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3769
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3770
    if-eqz p2, :cond_3

    .line 3771
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3797
    :cond_2
    :goto_1
    iget-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v1, :cond_0

    .line 3798
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 3799
    invoke-virtual {p0}, Landroid/widget/ListView;->rememberSyncState()V

    .line 3800
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_0

    .line 3773
    :cond_3
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 3777
    :cond_4
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v5

    .line 3780
    .local v0, updateIds:Z
    :goto_2
    if-nez p2, :cond_5

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3781
    :cond_5
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3782
    if-eqz v0, :cond_6

    .line 3783
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 3788
    :cond_6
    if-eqz p2, :cond_2

    .line 3789
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3790
    if-eqz v0, :cond_2

    .line 3791
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 3777
    .end local v0           #updateIds:Z
    :cond_7
    const/4 v1, 0x0

    move v0, v1

    goto :goto_2
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .parameter "itemsCanFocus"

    .prologue
    .line 3001
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 3002
    if-nez p1, :cond_0

    .line 3003
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 3005
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 3492
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3493
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3494
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 3471
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3472
    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-gez v0, :cond_0

    .line 3473
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3475
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1908
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1909
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2053
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2054
    .local v0, count:I
    if-lez v0, :cond_0

    .line 2055
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 2066
    :goto_0
    return-void

    .line 2059
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2060
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 2062
    :cond_1
    iput v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 2063
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .parameter "position"
    .parameter "y"

    .prologue
    .line 1921
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 1945
    :cond_0
    :goto_0
    return-void

    .line 1925
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1926
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 1927
    if-ltz p1, :cond_2

    .line 1928
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1934
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 1935
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1936
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1938
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 1939
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1940
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1943
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_0

    .line 1931
    :cond_4
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1954
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1955
    const/4 v0, 0x0

    .line 1957
    .local v0, awakeScrollbars:Z
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1959
    .local v1, selectedPosition:I
    if-ltz v1, :cond_0

    .line 1960
    const/4 v2, 0x1

    sub-int v2, v1, v2

    if-ne p1, v2, :cond_2

    .line 1961
    const/4 v0, 0x1

    .line 1967
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 1969
    if-eqz v0, :cond_1

    .line 1970
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 1972
    :cond_1
    return-void

    .line 1962
    :cond_2
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 1963
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setShortCutKey(Z)V
    .locals 0
    .parameter "isEnable"

    .prologue
    .line 307
    iput-boolean p1, p0, Landroid/widget/ListView;->mIsShortcutkeyEnabled:Z

    .line 308
    return-void
.end method
