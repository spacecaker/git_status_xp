.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$TwFlingRunnable;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_BOUNCE:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final MAX_NUM_POINTERS:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field protected mBounceBlocked:Z

.field protected mBounceController:Landroid/widget/BounceController;

.field protected mBounceEnabled:Z

.field protected mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDensityScale:F

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeGlow;

.field private mEdgeGlowTop:Landroid/widget/EdgeGlow;

.field mFastScrollEnabled:Z

.field private mFastScroller:Landroid/widget/FastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field private mPointerDownY:[F

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field private mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 671
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 212
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 227
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 237
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 243
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 248
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 253
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 258
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 263
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 268
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 273
    iput v2, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 320
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 351
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 389
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 409
    iput v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 411
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 430
    iput v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 433
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 436
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 478
    iput v2, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 497
    new-array v1, v4, [Z

    iput-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 507
    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 555
    iput v2, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 632
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    .line 638
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    .line 2280
    const/4 v1, 0x6

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/widget/AbsListView;->mPointerDownY:[F

    .line 672
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 674
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 675
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 676
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 677
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 678
    return-void

    .line 2280
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 681
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 682
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 685
    invoke-direct/range {p0 .. p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 212
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 227
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 237
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 243
    new-instance v15, Landroid/widget/AbsListView$RecycleBin;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 248
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 253
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 258
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 263
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 268
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 273
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 320
    const/4 v15, -0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 351
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 389
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 409
    const/4 v15, -0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 411
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 430
    const/4 v15, -0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 433
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 436
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 478
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 497
    const/4 v15, 0x1

    new-array v15, v15, [Z

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 507
    const/4 v15, -0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 555
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 632
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBounceEnabled:Z

    .line 638
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBounceBlocked:Z

    .line 2280
    const/4 v15, 0x6

    new-array v15, v15, [F

    fill-array-data v15, :array_0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPointerDownY:[F

    .line 686
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 688
    sget-object v15, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v15

    move/from16 v3, p3

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 691
    .local v5, a:Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 692
    .local v7, d:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_0

    .line 693
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 696
    :cond_0
    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 699
    const/4 v15, 0x2

    const/16 v16, 0x0

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 700
    .local v12, stackFromBottom:Z
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 702
    const/4 v15, 0x3

    const/16 v16, 0x1

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 703
    .local v10, scrollingCacheEnabled:Z
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 705
    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 706
    .local v14, useTextFilter:Z
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 708
    const/4 v15, 0x5

    const/16 v16, 0x0

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 710
    .local v13, transcriptMode:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 712
    const/4 v15, 0x6

    const/16 v16, 0x0

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 713
    .local v6, color:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 715
    const/4 v15, 0x7

    const/16 v16, 0x0

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 716
    .local v9, enableFastScroll:Z
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 718
    const/16 v15, 0x8

    const/16 v16, 0x1

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 719
    .local v11, smoothScrollbar:Z
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 722
    const/16 v15, 0x2d

    const/16 v16, 0x1

    :try_start_0
    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOverScrollMode(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 730
    return-void

    .line 724
    :catch_0
    move-exception v15

    move-object v8, v15

    .line 725
    .local v8, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v8}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 726
    const-string v15, "AbsListView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "IndexOutOfBoundsException occured: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2280
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1160
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Filterable;

    invoke-interface {p0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/AbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/AbsListView;)Landroid/widget/EdgeGlow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/AbsListView;)Landroid/widget/EdgeGlow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 98
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 98
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/AbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3500(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3700(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4300(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4400(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4500(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4600(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/AbsListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$702(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const-string v7, "ViewConsistency"

    const-string v6, "AbsListView "

    .line 5010
    if-nez p1, :cond_0

    const/4 v4, 0x1

    .line 5028
    :goto_0
    return v4

    .line 5011
    :cond_0
    const/4 v2, 0x1

    .line 5013
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5014
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 5015
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 5016
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5017
    const/4 v2, 0x0

    .line 5018
    const-string v4, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsListView "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5021
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 5022
    const/4 v2, 0x0

    .line 5023
    const-string v4, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsListView "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5014
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #view:Landroid/view/View;
    :cond_3
    move v4, v2

    .line 5028
    goto :goto_0
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 3969
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 3970
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 3985
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3986
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 780
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 781
    .local v0, childCount:I
    if-nez v0, :cond_0

    move v1, v5

    .line 786
    :goto_0
    return v1

    .line 782
    :cond_0
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eq v0, v1, :cond_1

    move v1, v4

    .line 783
    goto :goto_0

    .line 786
    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-lt v1, v2, :cond_2

    sub-int v1, v0, v5

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3961
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 3962
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 3963
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3964
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 3966
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 8
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 4756
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 4757
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4758
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 4759
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 4761
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x109006e

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 4766
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 4768
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 4769
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4770
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4771
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 4772
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 4773
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4774
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4775
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4776
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4777
    iput-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 4778
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4779
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 4781
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 4782
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x1030071

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 4786
    :goto_0
    return-void

    .line 4784
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x1030072

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 4532
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 4533
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4535
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1711
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1712
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1713
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1714
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1716
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 5032
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_0

    .line 5033
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->finish()V

    .line 5034
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->finish()V

    .line 5036
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 4578
    sparse-switch p2, :sswitch_data_0

    .line 4604
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4580
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 4581
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 4582
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 4583
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 4607
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 4608
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 4609
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 4586
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 4587
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 4588
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 4589
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 4590
    .restart local v1       #dY:I
    goto :goto_0

    .line 4592
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 4593
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 4594
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 4595
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 4596
    .restart local v1       #dY:I
    goto :goto_0

    .line 4598
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 4599
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 4600
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 4601
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 4602
    .restart local v1       #dY:I
    goto :goto_0

    .line 4578
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 734
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 735
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 736
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 737
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 738
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 740
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 741
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 742
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 743
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 744
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 745
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 747
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 748
    new-instance v1, Landroid/widget/BounceController;

    invoke-direct {v1, p0}, Landroid/widget/BounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    .line 749
    iget-object v1, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v1, v2}, Landroid/widget/BounceController;->getBounceRunnable(I)Landroid/widget/BounceController$BounceRunnable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    .line 751
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 3207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 3209
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3210
    .local v1, pointerId:I
    iget v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v3, :cond_1

    .line 3214
    if-nez v2, :cond_2

    const/4 v3, 0x1

    move v0, v3

    .line 3215
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3216
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3217
    iput v5, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3218
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3219
    iget-object v3, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 3220
    iget-object v3, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3229
    :cond_0
    iget v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v3, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 3231
    .end local v0           #newPointerIndex:I
    :cond_1
    return-void

    :cond_2
    move v0, v5

    .line 3214
    goto :goto_0
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 2046
    const/4 v6, 0x0

    .line 2048
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2049
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2052
    :cond_0
    if-nez v6, :cond_1

    .line 2053
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2054
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2056
    :cond_1
    if-eqz v6, :cond_2

    .line 2057
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 2059
    :cond_2
    return v6
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 4551
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 4552
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 4553
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 4556
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 4557
    .local v0, bottomGap:I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4558
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4563
    :goto_0
    return-void

    .line 4561
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1637
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1639
    return-void
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 4542
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4543
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 4544
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 4546
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 4548
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 8
    .parameter "deltaY"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2219
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2220
    .local v0, distance:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-eqz v4, :cond_3

    move v3, v7

    .line 2221
    .local v3, overscroll:Z
    :goto_0
    if-nez v3, :cond_0

    iget v4, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v0, v4, :cond_5

    .line 2222
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 2223
    if-eqz v3, :cond_4

    const/4 v4, 0x5

    :goto_1
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2224
    iput p1, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2225
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2229
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_1

    .line 2230
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2232
    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2233
    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2234
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2235
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 2237
    :cond_2
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2240
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    move v4, v7

    .line 2244
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #motionView:Landroid/view/View;
    :goto_2
    return v4

    .end local v3           #overscroll:Z
    :cond_3
    move v3, v6

    .line 2220
    goto :goto_0

    .line 2223
    .restart local v3       #overscroll:Z
    :cond_4
    const/4 v4, 0x3

    goto :goto_1

    :cond_5
    move v4, v6

    .line 2244
    goto :goto_2
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 964
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 966
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3238
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 3239
    .local v2, count:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3240
    .local v3, firstPosition:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3242
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 3253
    :cond_0
    return-void

    .line 3246
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 3247
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3248
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3249
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3251
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 3246
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 4866
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 4828
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 4747
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 4887
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 4792
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 4793
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4794
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 4795
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4796
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 4799
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1237
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1238
    .local v1, count:I
    if-lez v1, :cond_5

    .line 1239
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_4

    .line 1240
    mul-int/lit8 v2, v1, 0x64

    .line 1242
    .local v2, extent:I
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1243
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1244
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1245
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1246
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 1249
    :cond_0
    sub-int v8, v1, v10

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1250
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1251
    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1252
    if-lez v3, :cond_1

    .line 1253
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 1261
    :cond_1
    move v5, v2

    .line 1264
    .local v5, retVal:I
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v8, :cond_3

    .line 1265
    iget-object v8, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v8, v8, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->computeVerticalScrollRange()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 1268
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v9, v9, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 1270
    .local v4, ratio:F
    int-to-float v8, v5

    mul-float/2addr v8, v4

    float-to-int v5, v8

    .line 1273
    .end local v4           #ratio:F
    :cond_2
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1281
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v5           #retVal:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :goto_0
    return v8

    .restart local v0       #bottom:I
    .restart local v2       #extent:I
    .restart local v3       #height:I
    .restart local v5       #retVal:I
    .restart local v6       #top:I
    .restart local v7       #view:Landroid/view/View;
    :cond_3
    move v8, v5

    .line 1276
    goto :goto_0

    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v5           #retVal:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :cond_4
    move v8, v10

    .line 1278
    goto :goto_0

    :cond_5
    move v8, v9

    .line 1281
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 18

    .prologue
    .line 1286
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    .line 1287
    .local v5, firstPosition:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 1288
    .local v2, childCount:I
    if-ltz v5, :cond_5

    if-lez v2, :cond_5

    .line 1293
    const/4 v9, 0x0

    .line 1294
    .local v9, retVal:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    move v14, v0

    if-eqz v14, :cond_2

    .line 1295
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1296
    .local v13, view:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1297
    .local v12, top:I
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1298
    .local v6, height:I
    if-lez v6, :cond_0

    .line 1301
    mul-int/lit8 v14, v5, 0x64

    mul-int/lit8 v15, v12, 0x64

    div-int/2addr v15, v6

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v15, v0

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x42c8

    mul-float v15, v15, v16

    float-to-int v15, v15

    add-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1305
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v14, v0

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v14, v0

    iget v14, v14, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v14, v0

    iget v10, v14, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1307
    .local v10, savedBounceExtent:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->computeVerticalScrollExtent()I

    move-result v11

    .line 1308
    .local v11, shrinkedScrollExtent:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v14, v0

    const/4 v15, 0x0

    iput v15, v14, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1309
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->computeVerticalScrollExtent()I

    move-result v8

    .line 1310
    .local v8, normalScrollExtent:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v14, v0

    iput v10, v14, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1312
    sub-int v4, v8, v11

    .line 1314
    .local v4, delta:I
    add-int/2addr v9, v4

    .end local v4           #delta:I
    .end local v8           #normalScrollExtent:I
    .end local v10           #savedBounceExtent:F
    .end local v11           #shrinkedScrollExtent:I
    :cond_1
    move v14, v9

    .line 1335
    .end local v6           #height:I
    .end local v9           #retVal:I
    .end local v12           #top:I
    .end local v13           #view:Landroid/view/View;
    :goto_0
    return v14

    .line 1324
    .restart local v9       #retVal:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v3, v0

    .line 1325
    .local v3, count:I
    if-nez v5, :cond_3

    .line 1326
    const/4 v7, 0x0

    .line 1332
    .local v7, index:I
    :goto_1
    int-to-float v14, v5

    int-to-float v15, v2

    move v0, v7

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v14, v14

    goto :goto_0

    .line 1327
    .end local v7           #index:I
    :cond_3
    add-int v14, v5, v2

    if-ne v14, v3, :cond_4

    .line 1328
    move v7, v3

    .restart local v7       #index:I
    goto :goto_1

    .line 1330
    .end local v7           #index:I
    :cond_4
    div-int/lit8 v14, v2, 0x2

    add-int v7, v5, v14

    .restart local v7       #index:I
    goto :goto_1

    .line 1335
    .end local v3           #count:I
    .end local v7           #index:I
    .end local v9           #retVal:I
    :cond_5
    const/4 v14, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 1341
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 1342
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1343
    .local v0, result:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_0

    .line 1345
    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1350
    :cond_0
    :goto_0
    return v0

    .line 1348
    .end local v0           #result:I
    :cond_1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .restart local v0       #result:I
    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1958
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 1643
    const/4 v2, 0x0

    .line 1644
    .local v2, saveCount:I
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    move v0, v5

    .line 1645
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1646
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1647
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 1648
    .local v3, scrollX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 1649
    .local v4, scrollY:I
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/view/View;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1652
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1655
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1656
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 1657
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1660
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1662
    if-eqz v1, :cond_2

    .line 1663
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1666
    :cond_2
    if-eqz v0, :cond_3

    .line 1667
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1668
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1670
    :cond_3
    return-void

    .line 1644
    .end local v0           #clipToPadding:Z
    .end local v1           #drawSelectorOnTop:Z
    :cond_4
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 2124
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x0

    .line 3038
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 3041
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v7, :cond_1

    .line 3042
    iget-object v7, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget-object v8, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v8}, Landroid/widget/BounceController;->adjustBounceExtent()F

    move-result v8

    iput v8, v7, Landroid/widget/BounceController;->mBounceExtent:F

    .line 3044
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v2

    .line 3045
    .local v2, overscrollMode:I
    if-eqz v2, :cond_0

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3047
    :cond_0
    iget-object v7, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v7, v7, Landroid/widget/BounceController;->mBounceExtent:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_9

    .line 3048
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget-object v8, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v8}, Landroid/widget/BounceController;->getBounceExtentRatio()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EdgeGlow;->onPull2(F)V

    .line 3055
    .end local v2           #overscrollMode:I
    :cond_1
    :goto_0
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v7, :cond_7

    .line 3056
    iget v5, p0, Landroid/view/View;->mScrollY:I

    .line 3057
    .local v5, scrollY:I
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v7}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v7

    if-nez v7, :cond_4

    .line 3058
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3063
    .local v3, restoreCount:I
    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 3064
    .local v1, leftPadding:I
    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->right:I

    .line 3065
    .local v4, rightPadding:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int v6, v7, v4

    .line 3067
    .local v6, width:I
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v7, :cond_2

    .line 3072
    :cond_2
    int-to-float v7, v1

    const/4 v8, 0x0

    iget v9, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3077
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 3078
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3079
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3081
    :cond_3
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3083
    .end local v1           #leftPadding:I
    .end local v3           #restoreCount:I
    .end local v4           #rightPadding:I
    .end local v6           #width:I
    :cond_4
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v7}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v7

    if-nez v7, :cond_7

    .line 3084
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3085
    .restart local v3       #restoreCount:I
    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 3086
    .restart local v1       #leftPadding:I
    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->right:I

    .line 3087
    .restart local v4       #rightPadding:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int v6, v7, v4

    .line 3088
    .restart local v6       #width:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    .line 3094
    .local v0, height:I
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v7, :cond_5

    .line 3099
    :cond_5
    neg-int v7, v6

    add-int/2addr v7, v1

    int-to-float v7, v7

    iget v8, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v8, v5

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3102
    const/high16 v7, 0x4334

    int-to-float v8, v6

    invoke-virtual {p1, v7, v8, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3106
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v7, v6, v0}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 3107
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3108
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3110
    :cond_6
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3113
    .end local v0           #height:I
    .end local v1           #leftPadding:I
    .end local v3           #restoreCount:I
    .end local v4           #rightPadding:I
    .end local v5           #scrollY:I
    .end local v6           #width:I
    :cond_7
    iget-object v7, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v7, :cond_8

    .line 3114
    iget v5, p0, Landroid/view/View;->mScrollY:I

    .line 3115
    .restart local v5       #scrollY:I
    if-eqz v5, :cond_a

    .line 3117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3118
    .restart local v3       #restoreCount:I
    int-to-float v7, v5

    invoke-virtual {p1, v10, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3119
    iget-object v7, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v7, p1}, Landroid/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 3120
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3125
    .end local v3           #restoreCount:I
    .end local v5           #scrollY:I
    :cond_8
    :goto_1
    return-void

    .line 3049
    .restart local v2       #overscrollMode:I
    :cond_9
    iget-object v7, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v7, v7, Landroid/widget/BounceController;->mBounceExtent:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_1

    .line 3050
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget-object v8, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v8}, Landroid/widget/BounceController;->getBounceExtentRatio()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EdgeGlow;->onPull2(F)V

    goto/16 :goto_0

    .line 3122
    .end local v2           #overscrollMode:I
    .restart local v5       #scrollY:I
    :cond_a
    iget-object v7, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v7, p1}, Landroid/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1817
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 1818
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1821
    :cond_0
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 4266
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4267
    .local v0, childCount:I
    if-nez v0, :cond_0

    .line 4272
    :goto_0
    return v2

    .line 4271
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 4272
    .local v1, motionRow:I
    if-eq v1, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 4877
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 4882
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1385
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1386
    .local v1, count:I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1387
    .local v2, fadeEdge:F
    if-nez v1, :cond_0

    move v5, v2

    .line 1407
    :goto_0
    return v5

    .line 1390
    :cond_0
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v7

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_1

    .line 1391
    const/high16 v5, 0x3f80

    goto :goto_0

    .line 1398
    :cond_1
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1405
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 1406
    .local v4, height:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1407
    .local v3, fadeLength:F
    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_2

    sub-int v5, v0, v4

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_0
.end method

.method public getBounceController()Landroid/widget/BounceController;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    return-object v0
.end method

.method public getCacheColorHint()I
    .locals 1

    .prologue
    .line 4943
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 951
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 952
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 955
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 956
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 961
    :goto_0
    return-void

    .line 959
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 4208
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 4198
    const/4 v0, 0x0

    return v0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1509
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1510
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1512
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1765
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 4916
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1197
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1200
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1355
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1356
    .local v0, count:I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1357
    .local v1, fadeEdge:F
    if-nez v0, :cond_0

    move v4, v1

    .line 1379
    :goto_0
    return v4

    .line 1360
    :cond_0
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_1

    .line 1361
    const/high16 v4, 0x3f80

    goto :goto_0

    .line 1368
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1378
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1379
    .local v2, fadeLength:F
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    if-ge v3, v4, :cond_2

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 4911
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4397
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 4398
    .local v0, count:I
    if-lez v0, :cond_a

    .line 4405
    iget-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v3, :cond_3

    .line 4407
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 4409
    iget v3, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-eq v3, v9, :cond_0

    iget v3, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v3, v5, :cond_2

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    if-lt v3, v4, :cond_2

    .line 4412
    :cond_0
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4508
    :cond_1
    :goto_0
    return-void

    .line 4416
    :cond_2
    iget v3, p0, Landroid/widget/AdapterView;->mSyncMode:I

    packed-switch v3, :pswitch_data_0

    .line 4464
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_9

    .line 4466
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v1

    .line 4469
    .local v1, newPos:I
    if-lt v1, v0, :cond_4

    .line 4470
    sub-int v1, v0, v5

    .line 4472
    :cond_4
    if-gez v1, :cond_5

    .line 4473
    const/4 v1, 0x0

    .line 4477
    :cond_5
    invoke-virtual {p0, v1, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 4479
    .local v2, selectablePos:I
    if-ltz v2, :cond_8

    .line 4480
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 4418
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4423
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4424
    iget v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto :goto_0

    .line 4430
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v1

    .line 4431
    .restart local v1       #newPos:I
    if-ltz v1, :cond_3

    .line 4433
    invoke-virtual {p0, v1, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 4434
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_3

    .line 4436
    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 4438
    iget-wide v3, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 4441
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4449
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 4445
    :cond_7
    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_1

    .line 4457
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_1
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4458
    iget v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto :goto_0

    .line 4484
    .restart local v1       #newPos:I
    .restart local v2       #selectablePos:I
    :cond_8
    invoke-virtual {p0, v1, v6}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 4485
    if-ltz v2, :cond_a

    .line 4486
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 4493
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_9
    iget v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-gez v3, :cond_1

    .line 4501
    :cond_a
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_b

    const/4 v3, 0x3

    :goto_2
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4502
    iput v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 4503
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 4504
    iput v8, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 4505
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 4506
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 4507
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_b
    move v3, v5

    .line 4501
    goto :goto_2

    .line 4416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 4805
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 4222
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 4223
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 4224
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4226
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 4227
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4229
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 4230
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 4231
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 4232
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 4234
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 4279
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 4280
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 4281
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 4282
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4283
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 880
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(Landroid/widget/AbsListView;III)V

    .line 883
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 886
    :cond_1
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 820
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 4614
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 899
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 863
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 976
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 946
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1773
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1808
    :cond_0
    :goto_0
    return-void

    .line 1777
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1778
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1779
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1782
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1784
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 1785
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1786
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1788
    :cond_3
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 1790
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    .line 1791
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1792
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 1793
    if-eqz v1, :cond_6

    .line 1794
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1800
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 1801
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 1802
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 1804
    :cond_5
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1805
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1797
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 1470
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v3, 0x0

    .line 1577
    aput-boolean v3, p2, v3

    .line 1580
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1583
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1589
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1596
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_1

    .line 1597
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1598
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 1599
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1620
    :cond_0
    :goto_0
    return-object v0

    .line 1606
    :cond_1
    const/4 v2, 0x1

    aput-boolean v2, p2, v3

    .line 1607
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_0

    .line 1610
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1611
    .restart local v0       #child:Landroid/view/View;
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 1612
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1864
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 1866
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1867
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1868
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1869
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 1870
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1873
    :cond_0
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 10
    .parameter "consistency"

    .prologue
    .line 4979
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onConsistencyCheck(I)Z

    move-result v4

    .line 4981
    .local v4, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    move v1, v7

    .line 4983
    .local v1, checkLayout:Z
    :goto_0
    if-eqz v1, :cond_5

    .line 4985
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$3900(Landroid/widget/AbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v0

    .line 4986
    .local v0, activeViews:[Landroid/view/View;
    array-length v2, v0

    .line 4987
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 4988
    aget-object v7, v0, v3

    if-eqz v7, :cond_0

    .line 4989
    const/4 v4, 0x0

    .line 4990
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AbsListView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has a view in its active recycler: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4987
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4981
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v1           #checkLayout:Z
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_1
    const/4 v7, 0x0

    move v1, v7

    goto :goto_0

    .line 4997
    .restart local v0       #activeViews:[Landroid/view/View;
    .restart local v1       #checkLayout:Z
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_2
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$4000(Landroid/widget/AbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4998
    .local v5, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v5}, Landroid/widget/AbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v4, 0x0

    .line 4999
    :cond_3
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$4100(Landroid/widget/AbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v6

    .line 5000
    .local v6, scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v2, v6

    .line 5001
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    .line 5002
    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v4, 0x0

    .line 5001
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5006
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    return v4
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .parameter "extraSpace"

    .prologue
    const/4 v6, 0x1

    .line 1826
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_0

    .line 1828
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 1854
    :goto_0
    return-object v4

    .line 1834
    :cond_0
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1839
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1840
    .local v3, state:[I
    const/4 v0, -0x1

    .line 1841
    .local v0, enabledPos:I
    array-length v4, v3

    sub-int v2, v4, v6

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_1

    .line 1842
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 1843
    move v0, v2

    .line 1849
    :cond_1
    if-ltz v0, :cond_2

    .line 1850
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v4, v3

    .line 1854
    goto :goto_0

    .line 1841
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 4692
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4696
    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 4697
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 4698
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 4699
    new-instance v0, Landroid/widget/AbsListView$3;

    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 4733
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 4735
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4736
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 4738
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1877
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 1880
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1883
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 1885
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1886
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1887
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1888
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 1889
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1890
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 1893
    :cond_0
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 4512
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 4513
    sparse-switch p1, :sswitch_data_0

    .line 4525
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 4526
    return-void

    .line 4515
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4516
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    .line 4520
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4521
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 4525
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 4513
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 4869
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 4870
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4871
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 4873
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1205
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1206
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1207
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 1209
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 4809
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4811
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 4812
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 4821
    :cond_0
    :goto_0
    return-void

    .line 4816
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4817
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3132
    .local v0, action:I
    iget-object v8, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v8, :cond_0

    .line 3133
    iget-object v8, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v8, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 3134
    .local v1, intercepted:Z
    if-eqz v1, :cond_0

    move v8, v10

    .line 3203
    .end local v1           #intercepted:Z
    :goto_0
    return v8

    .line 3139
    :cond_0
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v8, v9

    .line 3203
    goto :goto_0

    .line 3141
    :pswitch_1
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3142
    .local v4, touchMode:I
    const/4 v8, 0x6

    if-eq v4, v8, :cond_2

    const/4 v8, 0x5

    if-ne v4, v8, :cond_3

    .line 3143
    :cond_2
    iput v9, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move v8, v10

    .line 3144
    goto :goto_0

    .line 3147
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 3148
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 3149
    .local v7, y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3151
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v2

    .line 3152
    .local v2, motionPosition:I
    if-eq v4, v12, :cond_4

    if-ltz v2, :cond_4

    .line 3155
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v8, v2, v8

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3156
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3157
    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3158
    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3159
    iput v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3160
    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3161
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 3163
    .end local v5           #v:Landroid/view/View;
    :cond_4
    const/high16 v8, -0x8000

    iput v8, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 3164
    if-ne v4, v12, :cond_1

    move v8, v10

    .line 3165
    goto :goto_0

    .line 3171
    .end local v2           #motionPosition:I
    .end local v4           #touchMode:I
    .end local v6           #x:I
    .end local v7           #y:I
    :pswitch_2
    iget v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v8, :pswitch_data_1

    goto :goto_1

    .line 3173
    :pswitch_3
    iget v8, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 3179
    .local v3, pointerIndex:I
    if-gez v3, :cond_5

    move v8, v10

    goto :goto_0

    .line 3181
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 3182
    .restart local v7       #y:I
    iget v8, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v8, v7, v8

    invoke-direct {p0, v8}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v10

    .line 3183
    goto :goto_0

    .line 3191
    .end local v3           #pointerIndex:I
    .end local v7           #y:I
    :pswitch_4
    iput v11, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3192
    iput v11, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3193
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_1

    .line 3198
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 3139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 3171
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2092
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2097
    sparse-switch p1, :sswitch_data_0

    .line 2117
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 2100
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v5

    .line 2101
    goto :goto_0

    .line 2103
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2107
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2108
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2109
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v2, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2110
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2112
    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    move v1, v5

    .line 2113
    goto :goto_0

    .line 2097
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1430
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 1431
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 1432
    if-eqz p1, :cond_1

    .line 1433
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1434
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1435
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 1434
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1437
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 1440
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1441
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 1443
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 1444
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1414
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1415
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 1417
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 1418
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1419
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1420
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1421
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1422
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 3024
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 3026
    if-eqz p4, :cond_0

    .line 3028
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 3029
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 3032
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 3033
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .parameter "state"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1130
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    move-object v1, v0

    .line 1132
    .local v1, ss:Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v1}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1133
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1135
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 1137
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    .line 1138
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1139
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1140
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1141
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1142
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1154
    :cond_0
    :goto_0
    iget-object v2, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1157
    return-void

    .line 1143
    :cond_1
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 1144
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1146
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1147
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1148
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1149
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1150
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1151
    iput v4, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    const-wide/16 v13, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1072
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1074
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v6

    .line 1076
    .local v6, superState:Landroid/os/Parcelable;
    new-instance v5, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v5, v6}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1078
    .local v5, ss:Landroid/widget/AbsListView$SavedState;
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v9, :cond_1

    move v2, v12

    .line 1079
    .local v2, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v3

    .line 1080
    .local v3, selectedId:J
    iput-wide v3, v5, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1081
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iput v9, v5, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1083
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-ltz v9, :cond_2

    .line 1085
    iget v9, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v9, v5, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1086
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v9

    iput v9, v5, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1087
    iput-wide v13, v5, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1114
    :goto_1
    const/4 v9, 0x0

    iput-object v9, v5, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1115
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v9, :cond_0

    .line 1116
    iget-object v7, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1117
    .local v7, textFilter:Landroid/widget/EditText;
    if-eqz v7, :cond_0

    .line 1118
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1119
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1125
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v7           #textFilter:Landroid/widget/EditText;
    :cond_0
    return-object v5

    .end local v2           #haveChildren:Z
    .end local v3           #selectedId:J
    :cond_1
    move v2, v11

    .line 1078
    goto :goto_0

    .line 1089
    .restart local v2       #haveChildren:Z
    .restart local v3       #selectedId:J
    :cond_2
    if-eqz v2, :cond_4

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 1099
    invoke-virtual {p0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1100
    .local v8, v:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v5, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1101
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1102
    .local v1, firstPos:I
    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v1, v9, :cond_3

    .line 1103
    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int v1, v9, v12

    .line 1105
    :cond_3
    iput v1, v5, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1106
    iget-object v9, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    iput-wide v9, v5, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 1108
    .end local v1           #firstPos:I
    .end local v8           #v:Landroid/view/View;
    :cond_4
    iput v11, v5, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1109
    iput-wide v13, v5, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1110
    iput v11, v5, Landroid/widget/AbsListView$SavedState;->position:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1674
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1675
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1676
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1679
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 1680
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 1682
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 4836
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4837
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4838
    .local v1, length:I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 4839
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 4841
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 4842
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 4848
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 4849
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 4851
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 4852
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 4859
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 4843
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 4845
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 4846
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    .line 4854
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 61
    .parameter "ev"

    .prologue
    .line 2284
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2287
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 3018
    :goto_0
    return v4

    .line 2287
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2290
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object v4, v0

    if-eqz v4, :cond_3

    .line 2291
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    .line 2292
    .local v36, intercepted:Z
    if-eqz v36, :cond_3

    .line 2293
    const/4 v4, 0x1

    goto :goto_0

    .line 2297
    .end local v36           #intercepted:Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    .line 2302
    .local v17, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    if-nez v4, :cond_4

    .line 2303
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2305
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2311
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move v4, v0

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    iget v4, v4, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 2316
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/widget/BounceController$BounceRunnable;->start(F)V

    .line 2319
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 2320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 2327
    :cond_6
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    packed-switch v4, :pswitch_data_0

    .line 3018
    :cond_7
    :goto_1
    :pswitch_0
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2329
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_1

    .line 2343
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 2344
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v59, v0

    .line 2345
    .local v59, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v60, v0

    .line 2351
    .local v60, y:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v4, v0

    const/4 v5, 0x5

    if-ge v4, v5, :cond_8

    .line 2352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPointerDownY:[F

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v5, v0

    move/from16 v0, v60

    int-to-float v0, v0

    move v6, v0

    aput v6, v4, v5

    .line 2361
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v41

    .line 2367
    .local v41, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_9

    .line 2368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v4, v0

    invoke-interface {v4}, Landroid/widget/BounceController$BounceRunnable;->cancel()V

    .line 2369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    .line 2371
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    if-eqz v4, :cond_9

    .line 2372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease2()V

    .line 2373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease2()V

    .line 2376
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move v4, v0

    if-nez v4, :cond_d

    .line 2381
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_12

    .line 2382
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_f

    if-ltz v41, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    iget v4, v4, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_f

    .line 2387
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2389
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    if-nez v4, :cond_a

    .line 2390
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2392
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2469
    :cond_b
    :goto_2
    if-ltz v41, :cond_c

    .line 2471
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    sub-int v4, v41, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v57

    .line 2472
    .local v57, v:Landroid/view/View;
    invoke-virtual/range {v57 .. v57}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2474
    .end local v57           #v:Landroid/view/View;
    :cond_c
    move/from16 v0, v59

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionX:I

    .line 2475
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2476
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2477
    const/high16 v4, -0x8000

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 2492
    .end local v41           #motionPosition:I
    .end local v59           #x:I
    .end local v60           #y:I
    :cond_d
    :goto_3
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v54

    .line 2493
    .local v54, pointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v53

    .line 2495
    .local v53, pointerId:I
    if-ltz v54, :cond_7

    const/4 v4, 0x5

    move/from16 v0, v54

    move v1, v4

    if-ge v0, v1, :cond_7

    if-ltz v53, :cond_7

    const/4 v4, 0x5

    move/from16 v0, v53

    move v1, v4

    if-ge v0, v1, :cond_7

    .line 2497
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPointerDownY:[F

    move-object v4, v0

    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    aput v5, v4, v53

    goto/16 :goto_1

    .line 2331
    .end local v53           #pointerId:I
    .end local v54           #pointerIndex:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v4}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 2332
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object v4, v0

    if-eqz v4, :cond_e

    .line 2333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 2335
    :cond_e
    const/4 v4, 0x5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2336
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2337
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2338
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto :goto_3

    .line 2394
    .restart local v41       #motionPosition:I
    .restart local v59       #x:I
    .restart local v60       #y:I
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    if-eqz v4, :cond_10

    if-gez v41, :cond_10

    .line 2398
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2401
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    .line 2403
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    iget v4, v4, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_11

    .line 2404
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 2406
    :cond_11
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2407
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2408
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v41

    .line 2409
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_2

    .line 2413
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_14

    if-ltz v41, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2417
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2419
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    if-nez v4, :cond_13

    .line 2420
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2422
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 2424
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    if-eqz v4, :cond_15

    if-gez v41, :cond_15

    .line 2428
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2431
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    .line 2433
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 2434
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2435
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2436
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v41

    .line 2437
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_2

    .line 2504
    .end local v41           #motionPosition:I
    .end local v59           #x:I
    .end local v60           #y:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v4, v0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v54

    .line 2510
    .restart local v54       #pointerIndex:I
    if-gez v54, :cond_16

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2511
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v4, v0

    if-eqz v4, :cond_17

    .line 2512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v4, v0

    invoke-interface {v4}, Landroid/widget/BounceController$BounceRunnable;->cancel()V

    .line 2515
    :cond_17
    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v60, v0

    .line 2516
    .restart local v60       #y:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionY:I

    move v4, v0

    sub-int v25, v60, v4

    .line 2517
    .local v25, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_2

    :pswitch_5
    goto/16 :goto_1

    .line 2523
    :pswitch_6
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    .line 2529
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move v4, v0

    if-nez v4, :cond_7

    .line 2530
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 2532
    move/from16 v56, v25

    .line 2533
    .local v56, tempY:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v20

    .line 2534
    .local v20, childCount:I
    if-lez v20, :cond_7

    .line 2535
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v5, v0

    sub-int v32, v4, v5

    .line 2536
    .local v32, height:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v30

    .line 2537
    .local v30, firstTop:I
    const/4 v4, 0x1

    sub-int v4, v20, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v37

    .line 2538
    .local v37, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    .line 2539
    .local v39, listPadding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    sub-int v27, v4, v5

    .line 2541
    .local v27, end:I
    if-gez v56, :cond_19

    .line 2542
    const/4 v4, 0x1

    sub-int v4, v32, v4

    neg-int v4, v4

    move v0, v4

    move/from16 v1, v56

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v56

    .line 2547
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v29, v0

    .line 2549
    .local v29, firstPosition:I
    if-nez v29, :cond_18

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v0

    move/from16 v0, v30

    move v1, v4

    if-lt v0, v1, :cond_18

    if-ltz v25, :cond_18

    .line 2551
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move v4, v0

    if-nez v4, :cond_1a

    .line 2552
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    iget v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v0, v56

    int-to-float v0, v0

    move v6, v0

    add-float/2addr v5, v6

    iput v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    .line 2558
    :cond_18
    :goto_5
    add-int v4, v29, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v5, v0

    if-ne v4, v5, :cond_7

    move/from16 v0, v37

    move/from16 v1, v27

    if-gt v0, v1, :cond_7

    if-gtz v25, :cond_7

    .line 2560
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move v4, v0

    if-nez v4, :cond_1b

    .line 2561
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    iget v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v0, v56

    int-to-float v0, v0

    move v6, v0

    add-float/2addr v5, v6

    iput v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    goto/16 :goto_1

    .line 2544
    .end local v29           #firstPosition:I
    :cond_19
    const/4 v4, 0x1

    sub-int v4, v32, v4

    move v0, v4

    move/from16 v1, v56

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v56

    goto :goto_4

    .line 2554
    .restart local v29       #firstPosition:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    goto :goto_5

    .line 2563
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/BounceController;->mBounceExtent:F

    goto/16 :goto_1

    .line 2579
    .end local v20           #childCount:I
    .end local v27           #end:I
    .end local v29           #firstPosition:I
    .end local v30           #firstTop:I
    .end local v32           #height:I
    .end local v37           #lastBottom:I
    .end local v39           #listPadding:Landroid/graphics/Rect;
    .end local v56           #tempY:I
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    move/from16 v0, v60

    move v1, v4

    if-eq v0, v1, :cond_7

    .line 2583
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v4, v0

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    if-nez v4, :cond_1c

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    move v5, v0

    if-le v4, v5, :cond_1c

    .line 2585
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 2588
    :cond_1c
    move/from16 v55, v25

    .line 2589
    .local v55, rawDeltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move v4, v0

    sub-int v25, v25, v4

    .line 2590
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    const/high16 v5, -0x8000

    if-eq v4, v5, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    sub-int v4, v60, v4

    move/from16 v34, v4

    .line 2593
    .local v34, incrementalDeltaY:I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    if-ltz v4, :cond_24

    .line 2594
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    sub-int v40, v4, v5

    .line 2601
    .local v40, motionIndex:I
    :goto_7
    const/16 v43, 0x0

    .line 2602
    .local v43, motionViewPrevTop:I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2603
    .local v42, motionView:Landroid/view/View;
    if-eqz v42, :cond_1d

    .line 2604
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTop()I

    move-result v43

    .line 2608
    :cond_1d
    const/16 v18, 0x0

    .line 2609
    .local v18, atEdge:Z
    if-eqz v34, :cond_1e

    .line 2610
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v18

    .line 2614
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2615
    if-eqz v42, :cond_22

    .line 2618
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTop()I

    move-result v44

    .line 2619
    .local v44, motionViewRealTop:I
    if-eqz v18, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-nez v4, :cond_21

    .line 2622
    move/from16 v0, v34

    neg-int v0, v0

    move v4, v0

    sub-int v5, v44, v43

    sub-int v6, v4, v5

    .line 2624
    .local v6, overscroll:I
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v12, v0

    const/4 v13, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v13}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2626
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v4, v5, :cond_1f

    .line 2628
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 2631
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v49

    .line 2632
    .local v49, overscrollMode:I
    if-eqz v49, :cond_20

    const/4 v4, 0x1

    move/from16 v0, v49

    move v1, v4

    if-ne v0, v1, :cond_21

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v4

    if-nez v4, :cond_21

    .line 2635
    :cond_20
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 2636
    const/4 v4, 0x5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2637
    if-lez v55, :cond_25

    .line 2638
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    .end local v6           #overscroll:I
    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2639
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_21

    .line 2640
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2650
    .end local v49           #overscrollMode:I
    :cond_21
    :goto_8
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2651
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2653
    .end local v44           #motionViewRealTop:I
    :cond_22
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_1

    .end local v18           #atEdge:Z
    .end local v34           #incrementalDeltaY:I
    .end local v40           #motionIndex:I
    .end local v42           #motionView:Landroid/view/View;
    .end local v43           #motionViewPrevTop:I
    :cond_23
    move/from16 v34, v25

    .line 2590
    goto/16 :goto_6

    .line 2598
    .restart local v34       #incrementalDeltaY:I
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    div-int/lit8 v40, v4, 0x2

    .restart local v40       #motionIndex:I
    goto/16 :goto_7

    .line 2642
    .restart local v6       #overscroll:I
    .restart local v18       #atEdge:Z
    .restart local v42       #motionView:Landroid/view/View;
    .restart local v43       #motionViewPrevTop:I
    .restart local v44       #motionViewRealTop:I
    .restart local v49       #overscrollMode:I
    :cond_25
    if-gez v55, :cond_21

    .line 2643
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    .end local v6           #overscroll:I
    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2644
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_21

    .line 2645
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_8

    .line 2658
    .end local v18           #atEdge:Z
    .end local v34           #incrementalDeltaY:I
    .end local v40           #motionIndex:I
    .end local v42           #motionView:Landroid/view/View;
    .end local v43           #motionViewPrevTop:I
    .end local v44           #motionViewRealTop:I
    .end local v49           #overscrollMode:I
    .end local v55           #rawDeltaY:I
    :pswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    move/from16 v0, v60

    move v1, v4

    if-eq v0, v1, :cond_7

    .line 2659
    move/from16 v55, v25

    .line 2660
    .restart local v55       #rawDeltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move v4, v0

    sub-int v25, v25, v4

    .line 2661
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    const/high16 v5, -0x8000

    if-eq v4, v5, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    sub-int v4, v60, v4

    move/from16 v34, v4

    .line 2663
    .restart local v34       #incrementalDeltaY:I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v48, v0

    .line 2664
    .local v48, oldScroll:I
    sub-int v47, v48, v34

    .line 2665
    .local v47, newScroll:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move v4, v0

    move/from16 v0, v60

    move v1, v4

    if-le v0, v1, :cond_2a

    const/4 v4, 0x1

    move/from16 v46, v4

    .line 2667
    .local v46, newDirection:I
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mDirection:I

    move v4, v0

    if-nez v4, :cond_26

    .line 2668
    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 2671
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mDirection:I

    move v4, v0

    move v0, v4

    move/from16 v1, v46

    if-eq v0, v1, :cond_2b

    .line 2673
    move/from16 v0, v47

    neg-int v0, v0

    move/from16 v34, v0

    .line 2674
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollY:I

    .line 2677
    if-eqz v34, :cond_27

    .line 2678
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 2682
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2683
    .restart local v42       #motionView:Landroid/view/View;
    if-eqz v42, :cond_28

    .line 2684
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2688
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v41

    .line 2690
    .restart local v41       #motionPosition:I
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2691
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    sub-int v4, v41, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2692
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2693
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2694
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2721
    .end local v41           #motionPosition:I
    .end local v42           #motionView:Landroid/view/View;
    :cond_28
    :goto_b
    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 2722
    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_1

    .end local v34           #incrementalDeltaY:I
    .end local v46           #newDirection:I
    .end local v47           #newScroll:I
    .end local v48           #oldScroll:I
    :cond_29
    move/from16 v34, v25

    .line 2661
    goto/16 :goto_9

    .line 2665
    .restart local v34       #incrementalDeltaY:I
    .restart local v47       #newScroll:I
    .restart local v48       #oldScroll:I
    :cond_2a
    const/4 v4, -0x1

    move/from16 v46, v4

    goto/16 :goto_a

    .line 2697
    .restart local v46       #newDirection:I
    :cond_2b
    const/4 v8, 0x0

    move/from16 v0, v34

    neg-int v0, v0

    move v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v15, v0

    const/16 v16, 0x1

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v16}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2699
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v49

    .line 2700
    .restart local v49       #overscrollMode:I
    if-eqz v49, :cond_2c

    const/4 v4, 0x1

    move/from16 v0, v49

    move v1, v4

    if-ne v0, v1, :cond_2e

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 2703
    :cond_2c
    if-lez v55, :cond_2f

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    move/from16 v0, v34

    neg-int v0, v0

    move v5, v0

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2714
    :cond_2d
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2716
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v4, v5, :cond_28

    .line 2718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_b

    .line 2708
    :cond_2f
    if-gez v55, :cond_2d

    .line 2709
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    move/from16 v0, v34

    neg-int v0, v0

    move v5, v0

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2710
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 2711
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_c

    .line 2731
    .end local v25           #deltaY:I
    .end local v34           #incrementalDeltaY:I
    .end local v46           #newDirection:I
    .end local v47           #newScroll:I
    .end local v48           #oldScroll:I
    .end local v49           #overscrollMode:I
    .end local v54           #pointerIndex:I
    .end local v55           #rawDeltaY:I
    .end local v60           #y:I
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_3

    .line 2870
    :goto_d
    :pswitch_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2872
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    if-eqz v4, :cond_30

    .line 2873
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2874
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2878
    :cond_30
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2880
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v31

    .line 2881
    .local v31, handler:Landroid/os/Handler;
    if-eqz v31, :cond_31

    .line 2882
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object v4, v0

    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2885
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    if-eqz v4, :cond_32

    .line 2886
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 2887
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2890
    :cond_32
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto/16 :goto_1

    .line 2735
    .end local v31           #handler:Landroid/os/Handler;
    :pswitch_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v41, v0

    .line 2736
    .restart local v41       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    sub-int v4, v41, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 2737
    .local v19, child:Landroid/view/View;
    if-eqz v19, :cond_3b

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 2738
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    if-eqz v4, :cond_33

    .line 2739
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2742
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object v4, v0

    if-nez v4, :cond_34

    .line 2743
    new-instance v4, Landroid/widget/AbsListView$PerformClick;

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 2746
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v51, v0

    .line 2747
    .local v51, performClick:Landroid/widget/AbsListView$PerformClick;
    move-object/from16 v0, v19

    move-object/from16 v1, v51

    iput-object v0, v1, Landroid/widget/AbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 2748
    move/from16 v0, v41

    move-object/from16 v1, v51

    iput v0, v1, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 2749
    invoke-virtual/range {v51 .. v51}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 2751
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2753
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3a

    .line 2754
    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v31

    .line 2755
    .restart local v31       #handler:Landroid/os/Handler;
    if-eqz v31, :cond_36

    .line 2756
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    if-nez v4, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object v4, v0

    :goto_e
    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2759
    :cond_36
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2760
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move v4, v0

    if-nez v4, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 2761
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2762
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2763
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2764
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2765
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->positionSelector(Landroid/view/View;)V

    .line 2766
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2767
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    if-eqz v4, :cond_37

    .line 2768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 2769
    .local v24, d:Landroid/graphics/drawable/Drawable;
    if-eqz v24, :cond_37

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/graphics/drawable/TransitionDrawable;

    move v4, v0

    if-eqz v4, :cond_37

    .line 2770
    check-cast v24, Landroid/graphics/drawable/TransitionDrawable;

    .end local v24           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2773
    :cond_37
    new-instance v4, Landroid/widget/AbsListView$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v51

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2786
    :goto_f
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2756
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object v4, v0

    goto/16 :goto_e

    .line 2784
    :cond_39
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_f

    .line 2787
    .end local v31           #handler:Landroid/os/Handler;
    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move v4, v0

    if-nez v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 2788
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2791
    .end local v51           #performClick:Landroid/widget/AbsListView$PerformClick;
    :cond_3b
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    goto/16 :goto_d

    .line 2794
    .end local v19           #child:Landroid/view/View;
    .end local v41           #motionPosition:I
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v20

    .line 2795
    .restart local v20       #childCount:I
    if-lez v20, :cond_42

    .line 2796
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v28

    .line 2797
    .local v28, firstChildTop:I
    const/4 v4, 0x1

    sub-int v4, v20, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v38

    .line 2798
    .local v38, lastChildBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    .line 2799
    .local v22, contentTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v21, v4, v5

    .line 2800
    .local v21, contentBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    if-nez v4, :cond_3c

    move/from16 v0, v28

    move/from16 v1, v22

    if-lt v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    add-int v4, v4, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v5, v0

    if-ge v4, v5, :cond_3c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int v4, v4, v21

    move/from16 v0, v38

    move v1, v4

    if-gt v0, v1, :cond_3c

    .line 2803
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2804
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_d

    .line 2806
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v58, v0

    .line 2807
    .local v58, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v4, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v58

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2808
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v4, v0

    move-object/from16 v0, v58

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v35, v0

    .line 2814
    .local v35, initialVelocity:I
    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move v5, v0

    if-le v4, v5, :cond_41

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    if-nez v4, :cond_3d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v4, v0

    sub-int v4, v22, v4

    move/from16 v0, v28

    move v1, v4

    if-eq v0, v1, :cond_41

    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    add-int v4, v4, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v5, v0

    if-ne v4, v5, :cond_3e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move v4, v0

    add-int v4, v4, v21

    move/from16 v0, v38

    move v1, v4

    if-eq v0, v1, :cond_41

    .line 2819
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    if-nez v4, :cond_3f

    .line 2824
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_40

    .line 2825
    new-instance v4, Landroid/widget/AbsListView$TwFlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$TwFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 2830
    :cond_3f
    :goto_10
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2832
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    move/from16 v0, v35

    neg-int v0, v0

    move v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_d

    .line 2827
    :cond_40
    new-instance v4, Landroid/widget/AbsListView$FlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    goto :goto_10

    .line 2834
    :cond_41
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2835
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_d

    .line 2839
    .end local v21           #contentBottom:I
    .end local v22           #contentTop:I
    .end local v28           #firstChildTop:I
    .end local v35           #initialVelocity:I
    .end local v38           #lastChildBottom:I
    .end local v58           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_42
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2840
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_d

    .line 2845
    .end local v20           #childCount:I
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    if-nez v4, :cond_43

    .line 2850
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_44

    .line 2851
    new-instance v4, Landroid/widget/AbsListView$TwFlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$TwFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 2856
    :cond_43
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v58, v0

    .line 2857
    .restart local v58       #velocityTracker:Landroid/view/VelocityTracker;
    const/16 v4, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v58

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2858
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v4, v0

    move-object/from16 v0, v58

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v35, v0

    .line 2860
    .restart local v35       #initialVelocity:I
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2861
    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move v5, v0

    if-le v4, v5, :cond_45

    .line 2862
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    move/from16 v0, v35

    neg-int v0, v0

    move v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_d

    .line 2853
    .end local v35           #initialVelocity:I
    .end local v58           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_44
    new-instance v4, Landroid/widget/AbsListView$FlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    goto :goto_11

    .line 2864
    .restart local v35       #initialVelocity:I
    .restart local v58       #velocityTracker:Landroid/view/VelocityTracker;
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_d

    .line 2902
    .end local v35           #initialVelocity:I
    .end local v58           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_4

    .line 2923
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2924
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2925
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 2926
    .restart local v42       #motionView:Landroid/view/View;
    if-eqz v42, :cond_46

    .line 2927
    const/4 v4, 0x0

    move-object/from16 v0, v42

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2929
    :cond_46
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 2931
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v31

    .line 2932
    .restart local v31       #handler:Landroid/os/Handler;
    if-eqz v31, :cond_47

    .line 2933
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object v4, v0

    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2936
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    if-eqz v4, :cond_48

    .line 2937
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 2938
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2942
    .end local v31           #handler:Landroid/os/Handler;
    .end local v42           #motionView:Landroid/view/View;
    :cond_48
    :goto_12
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    if-eqz v4, :cond_49

    .line 2943
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2944
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2946
    :cond_49
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto/16 :goto_1

    .line 2904
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    if-nez v4, :cond_4a

    .line 2909
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move v4, v0

    if-eqz v4, :cond_4b

    .line 2910
    new-instance v4, Landroid/widget/AbsListView$TwFlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$TwFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 2915
    :cond_4a
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_12

    .line 2912
    :cond_4b
    new-instance v4, Landroid/widget/AbsListView$FlingRunnable;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    goto :goto_13

    .line 2955
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v54

    .line 2956
    .restart local v54       #pointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v53

    .line 2957
    .restart local v53       #pointerId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v52

    .line 2959
    .local v52, pointerCount:I
    const/4 v4, 0x5

    move/from16 v0, v54

    move v1, v4

    if-ge v0, v1, :cond_51

    .line 2960
    const/4 v4, 0x3

    move/from16 v0, v52

    move v1, v4

    if-ne v0, v1, :cond_51

    .line 2961
    const/16 v23, 0x0

    .line 2962
    .local v23, countActive:I
    const/16 v26, 0x0

    .line 2964
    .local v26, direction:I
    const/16 v33, 0x0

    .local v33, i:I
    :goto_14
    const/4 v4, 0x3

    move/from16 v0, v33

    move v1, v4

    if-ge v0, v1, :cond_50

    .line 2965
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v50

    .line 2966
    .local v50, pId:I
    if-ltz v50, :cond_4c

    const/4 v4, 0x5

    move/from16 v0, v50

    move v1, v4

    if-lt v0, v1, :cond_4d

    .line 2964
    :cond_4c
    :goto_15
    add-int/lit8 v33, v33, 0x1

    goto :goto_14

    .line 2970
    :cond_4d
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPointerDownY:[F

    move-object v5, v0

    aget v5, v5, v50

    sub-float v45, v4, v5

    .line 2972
    .local v45, move:F
    invoke-static/range {v45 .. v45}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x4120

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4e

    .line 2973
    const/4 v4, 0x0

    cmpl-float v4, v45, v4

    if-lez v4, :cond_4f

    .line 2974
    add-int/lit8 v26, v26, 0x1

    .line 2979
    :cond_4e
    :goto_16
    add-int/lit8 v23, v23, 0x1

    goto :goto_15

    .line 2976
    :cond_4f
    add-int/lit8 v26, v26, -0x1

    goto :goto_16

    .line 2982
    .end local v45           #move:F
    .end local v50           #pId:I
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    if-eqz v4, :cond_51

    .line 2983
    const/4 v4, 0x3

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_52

    .line 2984
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 2992
    .end local v23           #countActive:I
    .end local v26           #direction:I
    .end local v33           #i:I
    :cond_51
    :goto_17
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2993
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionX:I

    move/from16 v59, v0

    .line 2994
    .restart local v59       #x:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionY:I

    move/from16 v60, v0

    .line 2995
    .restart local v60       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v41

    .line 2996
    .restart local v41       #motionPosition:I
    if-ltz v41, :cond_53

    .line 2998
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    sub-int v4, v41, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v57

    .line 2999
    .restart local v57       #v:Landroid/view/View;
    invoke-virtual/range {v57 .. v57}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3000
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3001
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    move/from16 v0, v41

    move v1, v4

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3002
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto/16 :goto_1

    .line 2985
    .end local v41           #motionPosition:I
    .end local v57           #v:Landroid/view/View;
    .end local v59           #x:I
    .end local v60           #y:I
    .restart local v23       #countActive:I
    .restart local v26       #direction:I
    .restart local v33       #i:I
    :cond_52
    const/4 v4, -0x3

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_51

    .line 2986
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    goto :goto_17

    .line 3005
    .end local v23           #countActive:I
    .end local v26           #direction:I
    .end local v33           #i:I
    .restart local v41       #motionPosition:I
    .restart local v59       #x:I
    .restart local v60       #y:I
    :cond_53
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto/16 :goto_1

    .line 2327
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_4
        :pswitch_e
        :pswitch_0
        :pswitch_2
        :pswitch_11
    .end packed-switch

    .line 2329
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
    .end packed-switch

    .line 2517
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
    .end packed-switch

    .line 2731
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_d
    .end packed-switch

    .line 2902
    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 2248
    if-eqz p1, :cond_1

    .line 2250
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 2254
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2257
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2273
    :cond_0
    :goto_0
    return-void

    .line 2260
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2261
    .local v0, touchMode:I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2262
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_3

    .line 2263
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v1}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 2266
    :cond_3
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_0

    .line 2267
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/View;->mScrollY:I

    .line 2268
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 2269
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1897
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 1899
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    .line 1901
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_3

    .line 1902
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 1903
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_0

    .line 1904
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1907
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v1}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 1908
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_0

    .line 1909
    iput v3, p0, Landroid/view/View;->mScrollY:I

    .line 1910
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 1911
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1915
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1917
    if-ne v0, v4, :cond_1

    .line 1919
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 1943
    :cond_1
    :goto_1
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 1944
    return-void

    .end local v0           #touchMode:I
    :cond_2
    move v0, v4

    .line 1899
    goto :goto_0

    .line 1922
    .restart local v0       #touchMode:I
    :cond_3
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v1, :cond_4

    .line 1924
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 1928
    :cond_4
    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1930
    if-ne v0, v4, :cond_5

    .line 1932
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 1936
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 1937
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1938
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2135
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2136
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 2137
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2138
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2141
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2142
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 2143
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2144
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2145
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2146
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2147
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 2151
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 2142
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2151
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2164
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 2165
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 2166
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 2168
    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 6
    .parameter "sel"

    .prologue
    .line 1624
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1625
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1626
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/widget/AbsListView;->positionSelector(IIII)V

    .line 1629
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 1630
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1631
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 1632
    invoke-virtual {p0}, Landroid/widget/AbsListView;->refreshDrawableState()V

    .line 1634
    :cond_0
    return-void

    .line 1631
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4954
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 4955
    .local v1, childCount:I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->access$3800(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 4958
    .local v3, listener:Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4959
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4960
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 4962
    .local v4, lp:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4963
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4964
    if-eqz v3, :cond_0

    .line 4966
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 4958
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4970
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 4971
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 4972
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 3

    .prologue
    .line 4242
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 4243
    .local v0, position:I
    if-gez v0, :cond_0

    .line 4244
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4246
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4247
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4248
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 3263
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 3264
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 3265
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 3266
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 3269
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1213
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1214
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 1216
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 994
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 995
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 996
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 997
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 999
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1222
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 1223
    iput v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1224
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1225
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1226
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 1227
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 1228
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1229
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1230
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1231
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1232
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1233
    return-void
.end method

.method resurrectSelection()Z
    .locals 20

    .prologue
    .line 4298
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 4300
    .local v4, childCount:I
    if-gtz v4, :cond_0

    .line 4301
    const/16 v18, 0x0

    .line 4392
    :goto_0
    return v18

    .line 4304
    :cond_0
    const/4 v14, 0x0

    .line 4306
    .local v14, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    .line 4307
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 4308
    .local v5, childrenBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v8, v0

    .line 4309
    .local v8, firstPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    move v15, v0

    .line 4310
    .local v15, toPosition:I
    const/4 v7, 0x1

    .line 4312
    .local v7, down:Z
    if-lt v15, v8, :cond_3

    add-int v18, v8, v4

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 4313
    move v13, v15

    .line 4315
    .local v13, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 4316
    .local v11, selected:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    .line 4317
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 4320
    .local v12, selectedBottom:I
    if-ge v14, v6, :cond_2

    .line 4321
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v14, v6, v18

    .line 4377
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    :cond_1
    :goto_1
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4378
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4379
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4380
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4381
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 4382
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 4383
    if-lt v13, v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v18

    move v0, v13

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    .line 4384
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4385
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 4386
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 4390
    :goto_2
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4392
    if-ltz v13, :cond_c

    const/16 v18, 0x1

    goto/16 :goto_0

    .line 4322
    .restart local v11       #selected:Landroid/view/View;
    .restart local v12       #selectedBottom:I
    :cond_2
    if-le v12, v5, :cond_1

    .line 4323
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v18, v5, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v19

    sub-int v14, v18, v19

    goto :goto_1

    .line 4327
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    .end local v13           #selectedPos:I
    :cond_3
    if-ge v15, v8, :cond_7

    .line 4329
    move v13, v8

    .line 4330
    .restart local v13       #selectedPos:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    if-ge v9, v4, :cond_1

    .line 4331
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 4332
    .local v17, v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 4334
    .local v16, top:I
    if-nez v9, :cond_5

    .line 4336
    move/from16 v14, v16

    .line 4338
    if-gtz v8, :cond_4

    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_5

    .line 4341
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v6, v6, v18

    .line 4344
    :cond_5
    move/from16 v0, v16

    move v1, v6

    if-lt v0, v1, :cond_6

    .line 4346
    add-int v13, v8, v9

    .line 4347
    move/from16 v14, v16

    .line 4348
    goto/16 :goto_1

    .line 4330
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 4352
    .end local v9           #i:I
    .end local v13           #selectedPos:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v10, v0

    .line 4353
    .local v10, itemCount:I
    const/4 v7, 0x0

    .line 4354
    add-int v18, v8, v4

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .line 4356
    .restart local v13       #selectedPos:I
    const/16 v18, 0x1

    sub-int v9, v4, v18

    .restart local v9       #i:I
    :goto_4
    if-ltz v9, :cond_1

    .line 4357
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 4358
    .restart local v17       #v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 4359
    .restart local v16       #top:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 4361
    .local v3, bottom:I
    const/16 v18, 0x1

    sub-int v18, v4, v18

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 4362
    move/from16 v14, v16

    .line 4363
    add-int v18, v8, v4

    move/from16 v0, v18

    move v1, v10

    if-lt v0, v1, :cond_8

    if-le v3, v5, :cond_9

    .line 4364
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v5, v5, v18

    .line 4368
    :cond_9
    if-gt v3, v5, :cond_a

    .line 4369
    add-int v13, v8, v9

    .line 4370
    move/from16 v14, v16

    .line 4371
    goto/16 :goto_1

    .line 4356
    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 4388
    .end local v3           #bottom:I
    .end local v9           #i:I
    .end local v10           #itemCount:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_b
    const/4 v13, -0x1

    goto/16 :goto_2

    .line 4392
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4626
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v6

    .line 4684
    :goto_0
    return v4

    .line 4630
    :cond_0
    const/4 v2, 0x0

    .line 4631
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 4632
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 4661
    :goto_1
    if-eqz v3, :cond_2

    .line 4662
    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 4664
    move-object v1, p3

    .line 4665
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 4666
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {p3, v4, v5, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 4669
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 4670
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :cond_2
    :goto_2
    move v4, v2

    .line 4684
    goto :goto_0

    .line 4639
    :sswitch_0
    const/4 v3, 0x0

    .line 4640
    goto :goto_1

    .line 4642
    :sswitch_1
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4643
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 4645
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 4646
    const/4 v2, 0x1

    .line 4653
    :cond_3
    :goto_3
    const/4 v3, 0x0

    .line 4654
    goto :goto_1

    .line 4647
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v7, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4649
    const/4 v2, 0x1

    .line 4650
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 4657
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_1

    .line 4672
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4673
    goto :goto_2

    .line 4676
    :pswitch_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4677
    goto :goto_2

    .line 4680
    :pswitch_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2

    .line 4632
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 4670
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 4926
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 4927
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 4928
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4929
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4930
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 4929
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4932
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 4934
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 1728
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1729
    return-void
.end method

.method public setEnableExcessScroll(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 645
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_0

    .line 646
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v3}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 647
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 650
    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-nez v3, :cond_1

    .line 651
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 652
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x1080242

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 653
    .local v0, edge:Landroid/graphics/drawable/Drawable;
    const v3, 0x1080243

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 654
    .local v1, glow:Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 655
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 658
    .end local v0           #edge:Landroid/graphics/drawable/Drawable;
    .end local v1           #glow:Landroid/graphics/drawable/Drawable;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_1
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    .line 660
    iget-object v3, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    if-eqz v3, :cond_2

    .line 661
    iget-object v3, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v3, p1}, Landroid/widget/BounceController;->setEnableBounce(Z)V

    .line 662
    iget-object v3, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v3, v4, v5}, Landroid/widget/BounceController;->setEdgeGlows(Landroid/widget/EdgeGlow;Landroid/widget/EdgeGlow;)V

    .line 664
    :cond_2
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 800
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 801
    if-eqz p1, :cond_1

    .line 802
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 803
    new-instance v0, Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/widget/FastScroller;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->stop()V

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 1172
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1173
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 1176
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1178
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1180
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1181
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1182
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1186
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 1187
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 1190
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1451
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 1453
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 1457
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 1458
    .local v1, visible:Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1459
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 1463
    .end local v1           #visible:Z
    :cond_0
    return v0

    .line 1457
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 872
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 873
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 874
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 755
    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 756
    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-nez v3, :cond_0

    .line 757
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 758
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x1080242

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 760
    .local v0, edge:Landroid/graphics/drawable/Drawable;
    const v3, 0x1080243

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 762
    .local v1, glow:Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 763
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 766
    .end local v0           #edge:Landroid/graphics/drawable/Drawable;
    .end local v1           #glow:Landroid/graphics/drawable/Drawable;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setEnableExcessScroll(Z)V

    .line 773
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 774
    return-void

    .line 768
    :cond_1
    iput-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 769
    iput-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 771
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setEnableExcessScroll(Z)V

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 5050
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #setter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->access$3802(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 5051
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "up"
    .parameter "down"

    .prologue
    .line 1811
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 1812
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 1813
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "disabled"

    .prologue
    .line 916
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 917
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 919
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 920
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 1739
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1740
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 1743
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1744
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1745
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1747
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1748
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1749
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1750
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 1751
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 1752
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 1753
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 1754
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1755
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1756
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 851
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 852
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 987
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 988
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 989
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 991
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 933
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 934
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 4901
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 4902
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1707
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

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

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .parameter "originalView"

    .prologue
    .line 2069
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 2070
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 2071
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2072
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 2074
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2075
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2078
    :cond_0
    if-nez v6, :cond_1

    .line 2079
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2082
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    move v0, v6

    .line 2087
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 3948
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_1

    .line 3949
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v0, :cond_0

    .line 3950
    new-instance v0, Landroid/widget/AbsListView$TwFlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$TwFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 3957
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(II)V

    .line 3958
    return-void

    .line 3952
    :cond_0
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    goto :goto_0

    .line 3955
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #calls: Landroid/widget/AbsListView$FlingRunnable;->endFling()V
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$000(Landroid/widget/AbsListView$FlingRunnable;)V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 3920
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 3921
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 3923
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 3924
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    .line 3936
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 3937
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 3939
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$PositionScroller;->start(II)V

    .line 3940
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1690
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1695
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1693
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1690
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 28
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 3997
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 3998
    .local v6, childCount:I
    if-nez v6, :cond_0

    .line 3999
    const/16 v25, 0x1

    .line 4188
    :goto_0
    return v25

    .line 4002
    :cond_0
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v12

    .line 4003
    .local v12, firstTop:I
    const/16 v25, 0x1

    sub-int v25, v6, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v18

    .line 4005
    .local v18, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 4008
    .local v19, listPadding:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v21, v25, v12

    .line 4009
    .local v21, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v10, v25, v26

    .line 4010
    .local v10, end:I
    sub-int v22, v18, v10

    .line 4012
    .local v22, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v26, v0

    sub-int v15, v25, v26

    .line 4013
    .local v15, height:I
    if-gez p1, :cond_2

    .line 4014
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4019
    :goto_1
    if-gez p2, :cond_3

    .line 4020
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 4025
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v11, v0

    .line 4028
    .local v11, firstPosition:I
    if-nez v11, :cond_4

    .line 4029
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v25, v12, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 4033
    :goto_3
    add-int v25, v11, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 4034
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    add-int v25, v25, v18

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 4039
    :goto_4
    if-nez v11, :cond_8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move v0, v12

    move/from16 v1, v25

    if-lt v0, v1, :cond_8

    if-ltz p2, :cond_8

    .line 4044
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move/from16 v25, v0

    if-nez v25, :cond_6

    .line 4045
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v26, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    .line 4046
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v25

    if-nez v25, :cond_1

    .line 4047
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4055
    :cond_1
    :goto_5
    if-eqz p2, :cond_7

    const/16 v25, 0x1

    goto/16 :goto_0

    .line 4016
    .end local v11           #firstPosition:I
    :cond_2
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 4022
    :cond_3
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 4031
    .restart local v11       #firstPosition:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v25, v0

    add-int v25, v25, p2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto/16 :goto_3

    .line 4036
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    move/from16 v25, v0

    add-int v25, v25, p2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto/16 :goto_4

    .line 4050
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    goto :goto_5

    .line 4055
    :cond_7
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 4058
    :cond_8
    add-int v25, v11, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    move/from16 v0, v18

    move v1, v10

    if-gt v0, v1, :cond_c

    if-gtz p2, :cond_c

    .line 4064
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move/from16 v25, v0

    if-nez v25, :cond_a

    .line 4065
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v26, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    .line 4066
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v25

    if-nez v25, :cond_9

    .line 4067
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4075
    :cond_9
    :goto_6
    if-eqz p2, :cond_b

    const/16 v25, 0x1

    goto/16 :goto_0

    .line 4070
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    goto :goto_6

    .line 4075
    :cond_b
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 4083
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_f

    .line 4084
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_e

    .line 4085
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v26, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    .line 4086
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v25

    if-nez v25, :cond_d

    .line 4087
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4089
    :cond_d
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 4091
    :cond_e
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 p2, v0

    .line 4092
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 p1, v0

    .line 4093
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/BounceController;->mBounceExtent:F

    .line 4100
    :cond_f
    if-gez p2, :cond_17

    const/16 v25, 0x1

    move/from16 v9, v25

    .line 4102
    .local v9, down:Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v17

    .line 4103
    .local v17, inTouchMode:Z
    if-eqz v17, :cond_10

    .line 4104
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4107
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v14

    .line 4108
    .local v14, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v26

    sub-int v13, v25, v26

    .line 4110
    .local v13, footerViewsStart:I
    const/16 v23, 0x0

    .line 4111
    .local v23, start:I
    const/4 v8, 0x0

    .line 4113
    .local v8, count:I
    if-eqz v9, :cond_1a

    .line 4114
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v25, p2

    .line 4115
    .local v24, top:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_8
    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_11

    .line 4116
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4117
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v24

    if-lt v0, v1, :cond_18

    .line 4156
    .end local v5           #child:Landroid/view/View;
    .end local v24           #top:I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v25, v0

    add-int v25, v25, p1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 4158
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 4160
    if-lez v8, :cond_12

    .line 4161
    move-object/from16 v0, p0

    move/from16 v1, v23

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 4163
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 4165
    if-eqz v9, :cond_13

    .line 4166
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v25, v0

    add-int v25, v25, v8

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4169
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4171
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4172
    .local v3, absIncrementalDeltaY:I
    move/from16 v0, v21

    move v1, v3

    if-lt v0, v1, :cond_14

    move/from16 v0, v22

    move v1, v3

    if-ge v0, v1, :cond_15

    .line 4173
    :cond_14
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 4176
    :cond_15
    if-nez v17, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_16

    .line 4177
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v7, v25, v26

    .line 4178
    .local v7, childIndex:I
    if-ltz v7, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v25

    move v0, v7

    move/from16 v1, v25

    if-ge v0, v1, :cond_16

    .line 4179
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->positionSelector(Landroid/view/View;)V

    .line 4183
    .end local v7           #childIndex:I
    :cond_16
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 4185
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 4186
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 4188
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 4100
    .end local v3           #absIncrementalDeltaY:I
    .end local v8           #count:I
    .end local v9           #down:Z
    .end local v13           #footerViewsStart:I
    .end local v14           #headerViewsCount:I
    .end local v16           #i:I
    .end local v17           #inTouchMode:Z
    .end local v23           #start:I
    :cond_17
    const/16 v25, 0x0

    move/from16 v9, v25

    goto/16 :goto_7

    .line 4120
    .restart local v5       #child:Landroid/view/View;
    .restart local v8       #count:I
    .restart local v9       #down:Z
    .restart local v13       #footerViewsStart:I
    .restart local v14       #headerViewsCount:I
    .restart local v16       #i:I
    .restart local v17       #inTouchMode:Z
    .restart local v23       #start:I
    .restart local v24       #top:I
    :cond_18
    add-int/lit8 v8, v8, 0x1

    .line 4121
    add-int v20, v11, v16

    .line 4122
    .local v20, position:I
    move/from16 v0, v20

    move v1, v14

    if-lt v0, v1, :cond_19

    move/from16 v0, v20

    move v1, v13

    if-ge v0, v1, :cond_19

    .line 4123
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4115
    :cond_19
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_8

    .line 4134
    .end local v5           #child:Landroid/view/View;
    .end local v16           #i:I
    .end local v20           #position:I
    .end local v24           #top:I
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v4, v25, p2

    .line 4135
    .local v4, bottom:I
    const/16 v25, 0x1

    sub-int v16, v6, v25

    .restart local v16       #i:I
    :goto_9
    if-ltz v16, :cond_11

    .line 4136
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4137
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v25

    move/from16 v0, v25

    move v1, v4

    if-le v0, v1, :cond_11

    .line 4140
    move/from16 v23, v16

    .line 4141
    add-int/lit8 v8, v8, 0x1

    .line 4142
    add-int v20, v11, v16

    .line 4143
    .restart local v20       #position:I
    move/from16 v0, v20

    move v1, v14

    if-lt v0, v1, :cond_1b

    move/from16 v0, v20

    move v1, v13

    if-ge v0, v1, :cond_1b

    .line 4144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4135
    :cond_1b
    add-int/lit8 v16, v16, -0x1

    goto :goto_9
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1473
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 1476
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_4

    move v1, v8

    .line 1479
    .local v1, canScrollUp:Z
    :goto_0
    if-nez v1, :cond_0

    .line 1480
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 1481
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1482
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_5

    move v1, v8

    .line 1486
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v5, v7

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1489
    .end local v1           #canScrollUp:Z
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1491
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 1494
    .local v3, count:I
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v4, v5, :cond_7

    move v0, v8

    .line 1497
    .local v0, canScrollDown:Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 1498
    sub-int v4, v3, v8

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1499
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mBottom:I

    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_8

    move v0, v8

    .line 1502
    .end local v2           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    move v5, v7

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1504
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_3
    return-void

    :cond_4
    move v1, v7

    .line 1476
    goto :goto_0

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5
    move v1, v7

    .line 1482
    goto :goto_1

    .end local v2           #child:Landroid/view/View;
    :cond_6
    move v5, v9

    .line 1486
    goto :goto_2

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_7
    move v0, v7

    .line 1494
    goto :goto_3

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_8
    move v0, v7

    .line 1499
    goto :goto_4

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v5, v9

    .line 1502
    goto :goto_5
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 1859
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
