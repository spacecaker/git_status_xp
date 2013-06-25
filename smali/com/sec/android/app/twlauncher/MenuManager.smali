.class public Lcom/sec/android/app/twlauncher/MenuManager;
.super Landroid/view/ViewGroup;
.source "MenuManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragController$DragListener;
.implements Lcom/sec/android/app/twlauncher/DragScroller;
.implements Lcom/sec/android/app/twlauncher/DragSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;,
        Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;,
        Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;,
        Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;,
        Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;
    }
.end annotation


# instance fields
.field private SNAP_VELOCITY:I

.field private mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

.field private mAllAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlphabeticalArrangement:Z

.field private mAniFadeIn:Landroid/view/animation/Animation;

.field private mAniFadeOut:Landroid/view/animation/Animation;

.field private mAnimating:Z

.field private mAnimationStartTime:J

.field private mAnticipateInterpolator:Landroid/view/animation/AnticipateInterpolator;

.field private mClickedApp:Lcom/sec/android/app/twlauncher/ApplicationInfo;

.field private mCloseAnimations:[Landroid/view/animation/Animation;

.field private final mColumnNum:I

.field private mCurrentScreen:I

.field private mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

.field private mDelayedAppClickRunnable:Ljava/lang/Runnable;

.field private mDeleteIcon:Landroid/graphics/Bitmap;

.field private mDownX:F

.field mDragCell:I

.field private mDragRect:Landroid/graphics/Rect;

.field mDragView:Landroid/view/View;

.field private mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field mDropCell:I

.field private mEditMenuBg:Landroid/graphics/Bitmap;

.field private mEditTopBg:Landroid/graphics/Bitmap;

.field private mEnablePageIndicatorShowHide:Z

.field private mFirstLayout:Z

.field private final mHideIndicator:Ljava/lang/Runnable;

.field private mIsClosing:Z

.field private mIsIndicatorShow:Z

.field private mIsSingleTap:Z

.field private mItemNumOfPage:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mLocked:Z

.field private mMaximumVelocity:I

.field private mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

.field mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

.field private mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

.field mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

.field private mMode:I

.field private mMovePinch:I

.field private mMovePinchStart:I

.field private mMultiTouchUsed:Z

.field private mNextScreen:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mOpenAnimations:[Landroid/view/animation/Animation;

.field private mOpenFlag:Z

.field public final mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

.field private mOrientation:I

.field private mOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

.field private mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

.field private mPageIndicatorBottom:I

.field private mPageIndicatorGap:I

.field private mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorLeft:I

.field private mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorMoreDim:[Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorMoreGap:I

.field private mPageIndicatorOffsetY:I

.field private mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorTop:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPoint:[I

.field private mRightOffset:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSnapToScreenDuration:I

.field private mTempPage:I

.field private mTextSize:I

.field private mTopOffset:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchedPageIndicatorIndex:I

.field private mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

.field private final mUseLargeDrawablesOnlyForPageIndicator:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x4080

    const/4 v1, 0x0

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsIndicatorShow:Z

    .line 99
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->SNAP_VELOCITY:I

    .line 106
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFirstLayout:Z

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 126
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    .line 135
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    .line 172
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    .line 173
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimating:Z

    .line 175
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPoint:[I

    .line 176
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragRect:Landroid/graphics/Rect;

    .line 181
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    .line 187
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    .line 188
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    .line 190
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 191
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnticipateInterpolator:Landroid/view/animation/AnticipateInterpolator;

    .line 207
    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    .line 208
    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    .line 209
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$1;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHideIndicator:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    .line 1868
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$4;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDelayedAppClickRunnable:Ljava/lang/Runnable;

    .line 1883
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$5;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1911
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$6;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2393
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$7;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 2529
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$8;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    .line 2560
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 2563
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$9;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    .line 227
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getColumnNo(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    .line 228
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getItemNoOfPage(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    .line 229
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->pageIndicator_getUseLargeDrawablesOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUseLargeDrawablesOnlyForPageIndicator:Z

    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getAlphabeticalArrangement(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAlphabeticalArrangement:Z

    .line 231
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    new-array v0, v0, [Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    .line 232
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    new-array v0, v0, [Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    .line 234
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->init()V

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/PageIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/MenuManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEnablePageIndicatorShowHide:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/twlauncher/MenuManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getRotateAnimation(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/twlauncher/MenuManager;)[Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/twlauncher/MenuManager;)[Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/twlauncher/MenuManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsIndicatorShow:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/DragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mClickedApp:Lcom/sec/android/app/twlauncher/ApplicationInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mClickedApp:Lcom/sec/android/app/twlauncher/ApplicationInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/MenuManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/MenuManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDelayedAppClickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/MenuManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()V

    return-void
.end method

.method private addBlankPage()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2380
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 2390
    :cond_0
    :goto_0
    return-void

    .line 2382
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    .line 2383
    .local v2, pageCount:I
    if-eqz v2, :cond_0

    .line 2385
    sub-int v3, v2, v5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2386
    .local v1, lastPage:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2387
    .local v0, itemCount:I
    if-ne v0, v5, :cond_0

    .line 2388
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;

    goto :goto_0
.end method

.method private copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 5
    .parameter "adapter"
    .parameter "info"

    .prologue
    .line 2080
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 2098
    :goto_0
    return-object v3

    .line 2081
    :cond_1
    const/4 v1, 0x0

    .line 2082
    .local v1, adapterInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v0

    .line 2083
    .local v0, adapterCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 2084
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #adapterInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2085
    .restart local v1       #adapterInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    iget-object v4, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2088
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 2089
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 2090
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 2092
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 2093
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 2094
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    :cond_2
    move-object v3, v1

    .line 2098
    goto :goto_0

    .line 2083
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private drawPageIndicator(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object v6, v0

    .line 572
    .local v6, indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v10

    .line 573
    .local v10, pageCount:I
    if-lez v10, :cond_0

    if-nez v6, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v15

    .line 579
    .local v15, updatedScreen:I
    const/16 v16, 0x1

    move v0, v10

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    .line 580
    if-gez v15, :cond_9

    .line 581
    const/16 v16, 0x1

    sub-int v15, v10, v16

    .line 587
    :cond_2
    :goto_1
    const/4 v8, 0x0

    .line 588
    .local v8, max:I
    sget-boolean v16, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v16, :cond_a

    .line 589
    const/16 v8, 0xb

    .line 593
    :goto_2
    div-int/lit8 v3, v8, 0x2

    .line 594
    .local v3, centerIndex:I
    const/4 v5, 0x0

    .line 595
    .local v5, firstIndex:I
    const/4 v7, 0x0

    .line 596
    .local v7, isCenterSort:Z
    const/4 v4, 0x0

    .line 597
    .local v4, drawMore:Z
    if-le v10, v8, :cond_3

    .line 598
    sub-int v5, v15, v3

    .line 599
    if-gez v5, :cond_b

    .line 600
    const/4 v5, 0x0

    .line 606
    :goto_3
    const/4 v4, 0x1

    .line 609
    :cond_3
    const/4 v11, 0x0

    .line 610
    .local v11, pageIndicatorTop:I
    sget-boolean v16, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsDraw:Z

    move/from16 v16, v0

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 612
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorBottom:I

    move v11, v0

    .line 615
    :goto_4
    sget-boolean v16, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    if-eqz v16, :cond_5

    .line 616
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_5

    .line 617
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    .line 618
    .local v13, startTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v13

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x43c8

    div-float v9, v16, v17

    .line 619
    .local v9, normalized:F
    const/high16 v16, 0x3f80

    cmpl-float v16, v9, v16

    if-ltz v16, :cond_4

    .line 620
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    .line 621
    const/high16 v9, 0x3f80

    .line 623
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_e

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v9

    .line 625
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v9

    move/from16 v0, v16

    float-to-int v0, v0

    move v11, v0

    .line 633
    .end local v9           #normalized:F
    .end local v13           #startTime:J
    :cond_5
    :goto_5
    invoke-virtual {v6, v5}, Lcom/sec/android/app/twlauncher/PageIndicator;->setFirstTextNum(I)V

    .line 634
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLeft:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object v0, v6

    move/from16 v1, v16

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->setOffset(II)V

    .line 635
    sget-boolean v16, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v16, :cond_6

    .line 636
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v16, v0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->setScrollX(I)V

    .line 637
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorOffsetY:I

    move/from16 v16, v0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->setOffsetY(I)V

    .line 640
    :cond_6
    if-eqz v7, :cond_f

    .line 641
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mUseLargeDrawablesOnlyForPageIndicator:Z

    move/from16 v16, v0

    move-object v0, v6

    move v1, v3

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->setCurrentPage(IZ)V

    .line 646
    :goto_6
    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableLeftMore(Z)V

    .line 647
    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableRightMore(Z)V

    .line 648
    if-eqz v4, :cond_8

    .line 649
    if-lez v15, :cond_7

    if-lez v5, :cond_7

    .line 650
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsIndicatorShow:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 651
    const/16 v16, 0x1

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableLeftMore(Z)V

    .line 654
    :cond_7
    const/16 v16, 0x1

    sub-int v16, v10, v16

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_8

    add-int v16, v5, v8

    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_8

    .line 656
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsIndicatorShow:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 657
    const/16 v16, 0x1

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableRightMore(Z)V

    .line 660
    :cond_8
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->draw(Landroid/graphics/Canvas;)Z

    move-result v12

    .line 661
    .local v12, redraw:Z
    if-eqz v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->postInvalidate()V

    goto/16 :goto_0

    .line 582
    .end local v3           #centerIndex:I
    .end local v4           #drawMore:Z
    .end local v5           #firstIndex:I
    .end local v7           #isCenterSort:Z
    .end local v8           #max:I
    .end local v11           #pageIndicatorTop:I
    .end local v12           #redraw:Z
    :cond_9
    if-lt v15, v10, :cond_2

    .line 583
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 591
    .restart local v8       #max:I
    :cond_a
    const/16 v8, 0x9

    goto/16 :goto_2

    .line 601
    .restart local v3       #centerIndex:I
    .restart local v4       #drawMore:Z
    .restart local v5       #firstIndex:I
    .restart local v7       #isCenterSort:Z
    :cond_b
    add-int v16, v15, v3

    move/from16 v0, v16

    move v1, v10

    if-lt v0, v1, :cond_c

    .line 602
    sub-int v5, v10, v8

    goto/16 :goto_3

    .line 604
    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_3

    .line 614
    .restart local v11       #pageIndicatorTop:I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    move v11, v0

    goto/16 :goto_4

    .line 626
    .restart local v9       #normalized:F
    .restart local v13       #startTime:J
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gez v16, :cond_5

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnticipateInterpolator:Landroid/view/animation/AnticipateInterpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/animation/AnticipateInterpolator;->getInterpolation(F)F

    move-result v9

    .line 628
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v9

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v11, v16, v17

    goto/16 :goto_5

    .line 643
    .end local v9           #normalized:F
    .end local v13           #startTime:J
    :cond_f
    sub-int v16, v15, v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mUseLargeDrawablesOnlyForPageIndicator:Z

    move/from16 v17, v0

    move-object v0, v6

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->setCurrentPage(IZ)V

    goto/16 :goto_6
.end method

.method private static findAppByComponent(Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .locals 5
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2790
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-object v4, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2791
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2792
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2793
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2794
    .local v3, x:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v4, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    .line 2798
    .end local v3           #x:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :goto_1
    return v4

    .line 2792
    .restart local v3       #x:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2798
    .end local v3           #x:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;
    .locals 4
    .parameter "num"

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1639
    .local v0, count:I
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    .line 1640
    const/4 v2, 0x0

    .line 1641
    .local v2, page:Lcom/sec/android/app/twlauncher/AppMenu;
    if-lt p1, v0, :cond_1

    .line 1642
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v2

    .line 1643
    move p1, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    .line 1652
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/AppMenu;

    move-object v3, p0

    :goto_0
    return-object v3

    .line 1645
    .restart local p0
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1646
    .restart local v2       #page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v1

    .line 1647
    .local v1, itemNum:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-lt v1, v3, :cond_0

    .line 1648
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v3

    goto :goto_0
.end method

.method private getRotateAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 7
    .parameter

    .prologue
    const/high16 v1, 0x4000

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 2433
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    .line 2434
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v1

    .line 2438
    new-instance v0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    const/high16 v1, 0x42b4

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 2440
    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setRotateAxis(I)V

    .line 2441
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setDuration(J)V

    .line 2442
    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setFillAfter(Z)V

    .line 2443
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2445
    return-object v0
.end method

.method private getXDeltaValue(I)F
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x42c8

    const/high16 v6, 0x4248

    const/4 v5, 0x0

    const/high16 v4, -0x3d38

    const/high16 v3, -0x3db8

    .line 2594
    .line 2595
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    rem-int v0, p1, v0

    .line 2597
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2598
    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v5

    .line 2648
    :goto_1
    return v0

    .line 2600
    :pswitch_0
    const/high16 v0, -0x3d10

    .line 2601
    goto :goto_1

    .line 2603
    :pswitch_1
    const/high16 v0, -0x3d90

    .line 2604
    goto :goto_1

    .line 2606
    :pswitch_2
    const/high16 v0, 0x4270

    .line 2607
    goto :goto_1

    .line 2609
    :pswitch_3
    const/high16 v0, 0x42f0

    goto :goto_1

    .line 2613
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    .line 2614
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    move v0, v4

    .line 2617
    goto :goto_1

    :pswitch_5
    move v0, v3

    .line 2620
    goto :goto_1

    :pswitch_6
    move v0, v5

    .line 2623
    goto :goto_1

    :pswitch_7
    move v0, v6

    .line 2626
    goto :goto_1

    :pswitch_8
    move v0, v7

    .line 2628
    goto :goto_1

    .line 2632
    :cond_1
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_9
    move v0, v4

    .line 2635
    goto :goto_1

    :pswitch_a
    move v0, v3

    .line 2638
    goto :goto_1

    :pswitch_b
    move v0, v6

    .line 2641
    goto :goto_1

    :pswitch_c
    move v0, v7

    .line 2643
    goto :goto_1

    .line 2598
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2614
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2632
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private getYDeltaValue(I)F
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x430c

    const/high16 v6, 0x428c

    const/4 v5, 0x0

    const/high16 v4, -0x3cf4

    const/high16 v3, -0x3d74

    .line 2652
    .line 2653
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    div-int v0, p1, v0

    .line 2655
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2656
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    .line 2657
    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v5

    .line 2706
    :goto_1
    return v0

    :pswitch_0
    move v0, v4

    .line 2660
    goto :goto_1

    :pswitch_1
    move v0, v3

    .line 2663
    goto :goto_1

    :pswitch_2
    move v0, v5

    .line 2666
    goto :goto_1

    :pswitch_3
    move v0, v6

    .line 2669
    goto :goto_1

    :pswitch_4
    move v0, v7

    .line 2671
    goto :goto_1

    .line 2675
    :cond_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_5
    move v0, v4

    .line 2678
    goto :goto_1

    :pswitch_6
    move v0, v3

    .line 2681
    goto :goto_1

    :pswitch_7
    move v0, v6

    .line 2684
    goto :goto_1

    :pswitch_8
    move v0, v7

    .line 2686
    goto :goto_1

    .line 2691
    :cond_1
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2693
    :pswitch_9
    const/high16 v0, -0x3d60

    .line 2694
    goto :goto_1

    .line 2696
    :pswitch_a
    const/high16 v0, -0x3de0

    .line 2697
    goto :goto_1

    .line 2699
    :pswitch_b
    const/high16 v0, 0x4220

    .line 2700
    goto :goto_1

    .line 2702
    :pswitch_c
    const/high16 v0, 0x42a0

    goto :goto_1

    .line 2657
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2675
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2691
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private init()V
    .locals 8

    .prologue
    const v7, 0x7f020057

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 241
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 243
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    .line 245
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    .line 246
    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 248
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPaint:Landroid/graphics/Paint;

    .line 249
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 251
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 252
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    .line 253
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMaximumVelocity:I

    .line 254
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->SNAP_VELOCITY:I

    .line 255
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDeleteIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 256
    const v3, 0x7f02001d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDeleteIcon:Landroid/graphics/Bitmap;

    .line 259
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditTopBg:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 260
    sget-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-nez v3, :cond_1

    .line 261
    const v3, 0x7f020024

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditTopBg:Landroid/graphics/Bitmap;

    .line 264
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditMenuBg:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 265
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditTopBg:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditMenuBg:Landroid/graphics/Bitmap;

    .line 268
    :cond_2
    const v3, 0x7f020041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    .line 270
    sget-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v3, :cond_3

    .line 271
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    .line 272
    const v3, 0x7f02004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    .line 273
    const v3, 0x7f090032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorOffsetY:I

    .line 274
    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorGap:I

    .line 275
    const v3, 0x7f090034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreGap:I

    .line 276
    new-array v3, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreDim:[Landroid/graphics/drawable/Drawable;

    .line 277
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_4

    .line 278
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreDim:[Landroid/graphics/drawable/Drawable;

    const v4, 0x7f020054

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v1

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v1           #i:I
    :cond_3
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    .line 281
    const v3, 0x7f020032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    .line 282
    const v3, 0x7f09001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorGap:I

    .line 283
    const v3, 0x7f09001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreGap:I

    .line 284
    const v3, 0x7f020043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    .line 287
    :cond_4
    const v3, 0x7f090009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTopOffset:I

    .line 288
    const v3, 0x7f09001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTextSize:I

    .line 290
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 291
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 292
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 293
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    .line 294
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 296
    :cond_5
    sget-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v3, :cond_7

    .line 301
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreDim:[Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    .line 302
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreDim:[Landroid/graphics/drawable/Drawable;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 303
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreDim:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    if-eqz v3, :cond_6

    .line 304
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreDim:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreDim:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreDim:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 302
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    .end local v1           #i:I
    :cond_7
    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEnablePageIndicatorShowHide:Z

    .line 311
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f04

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    .line 312
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    .line 314
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x258

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 315
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 317
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 318
    const/16 v3, 0x190

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    .line 323
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 325
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->initAnimation()V

    .line 327
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->setAnimationCacheEnabled(Z)V

    .line 329
    new-instance v3, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 330
    new-instance v3, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    .line 331
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 332
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 333
    return-void

    .line 320
    :cond_8
    const/16 v3, 0x258

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    goto :goto_2
.end method

.method private initAnimation()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 2400
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-ge v3, v7, :cond_1

    .line 2401
    sget-boolean v7, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    if-eqz v7, :cond_0

    .line 2402
    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getXDeltaValue(I)F

    move-result v1

    .line 2403
    .local v1, deltaX:F
    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getYDeltaValue(I)F

    move-result v2

    .line 2405
    .local v2, deltaY:F
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v1, v9, v2, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2406
    .local v6, openTrans:Landroid/view/animation/TranslateAnimation;
    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7, v10}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v6, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2407
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2408
    .local v4, openAlpha:Landroid/view/animation/AlphaAnimation;
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2409
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2410
    .local v5, openAniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2411
    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2412
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    aput-object v5, v7, v3

    .line 2414
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2415
    .local v0, closeAniSet:Landroid/view/animation/AnimationSet;
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v7, v9, v1, v9, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2416
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v10, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2417
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aput-object v0, v7, v3

    .line 2418
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aget-object v7, v7, v3

    new-instance v8, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v8, v10}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2400
    .end local v0           #closeAniSet:Landroid/view/animation/AnimationSet;
    .end local v1           #deltaX:F
    .end local v2           #deltaY:F
    .end local v4           #openAlpha:Landroid/view/animation/AlphaAnimation;
    .end local v5           #openAniSet:Landroid/view/animation/AnimationSet;
    .end local v6           #openTrans:Landroid/view/animation/TranslateAnimation;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2420
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v8, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    aput-object v8, v7, v3

    .line 2421
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v8, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    aput-object v8, v7, v3

    .line 2422
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    aget-object v7, v7, v3

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2423
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aget-object v7, v7, v3

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 2427
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-virtual {v7, v9}, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->setDelay(F)V

    .line 2428
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-virtual {v7, v9}, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;->setDelay(F)V

    .line 2429
    return-void
.end method

.method private initPageIndicator()V
    .locals 11

    .prologue
    const/16 v10, 0x99

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 474
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 475
    .local v3, indicatorWidth:I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 477
    .local v1, indicatorHeight:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    .line 478
    .local v5, pageCount:I
    if-gtz v5, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v6, :cond_2

    .line 481
    new-instance v6, Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-direct {v6}, Lcom/sec/android/app/twlauncher/PageIndicator;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 484
    :cond_2
    const/4 v4, 0x0

    .line 485
    .local v4, max:I
    sget-boolean v6, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v6, :cond_6

    .line 486
    const/16 v4, 0xb

    .line 489
    :goto_1
    if-le v5, v4, :cond_3

    .line 490
    move v5, v4

    .line 493
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 494
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0xcd

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 495
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 496
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0x73

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 502
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 503
    .local v0, indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 504
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageDrawableSmall(Landroid/graphics/drawable/Drawable;)V

    .line 505
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageCount(I)V

    .line 506
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorGap:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreGap:I

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/app/twlauncher/PageIndicator;->setGap(II)V

    .line 507
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTextSize:I

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setTextSize(I)V

    .line 509
    sget-boolean v6, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v6, :cond_8

    .line 512
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreDim:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setMoreDrawableDim([Landroid/graphics/drawable/Drawable;)V

    .line 518
    :goto_3
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEnablePageIndicatorShowHide:Z

    if-eqz v6, :cond_9

    .line 519
    invoke-virtual {v0, v9}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    .line 524
    :goto_4
    mul-int v6, v3, v5

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorGap:I

    if-lez v5, :cond_4

    sub-int v8, v5, v9

    :cond_4
    mul-int/2addr v7, v8

    add-int v2, v6, v7

    .line 525
    .local v2, indicatorTotalWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLeft:I

    .line 526
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTopOffset:I

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    .line 527
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    .line 533
    :goto_5
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setOrientation(I)V

    .line 535
    sget-boolean v6, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v6, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090030

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorBottom:I

    goto/16 :goto_0

    .line 488
    .end local v0           #indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    .end local v2           #indicatorTotalWidth:I
    :cond_6
    const/16 v4, 0x9

    goto/16 :goto_1

    .line 498
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    .line 514
    .restart local v0       #indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setMoreDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 521
    :cond_9
    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    goto :goto_4

    .line 530
    .restart local v2       #indicatorTotalWidth:I
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090032

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    goto :goto_5
.end method

.method private isListChild()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2710
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 2711
    .local v1, count:I
    if-ne v1, v4, :cond_0

    .line 2712
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2713
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    move v2, v4

    .line 2717
    .end local v0           #child:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1622
    new-instance v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;-><init>(Landroid/content/Context;I)V

    .line 1623
    .local v0, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1625
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1626
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDeleteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1627
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditMenuBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditBg(Landroid/graphics/Bitmap;)V

    .line 1628
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    .line 1634
    :goto_0
    return-object v0

    .line 1630
    :cond_0
    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1631
    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditBg(Landroid/graphics/Bitmap;)V

    .line 1632
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    goto :goto_0
.end method

.method private snapToDestination()V
    .locals 1

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 1104
    return-void
.end method

.method private updateMenu()V
    .locals 14

    .prologue
    const/4 v8, -0x1

    const/4 v13, 0x2

    const v12, 0xffff

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1684
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 1685
    if-nez v1, :cond_1

    .line 1865
    :cond_0
    :goto_0
    return-void

    .line 1686
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v2

    .line 1687
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    .line 1688
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 1689
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v4

    .line 1691
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    .line 1693
    if-ne v3, v13, :cond_2

    .line 1694
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDeleteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1695
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditTopBg:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEditBg(Landroid/graphics/Bitmap;)V

    .line 1696
    invoke-virtual {v4, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEnabledChildAnimation(Z)V

    .line 1703
    :goto_1
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1704
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    .line 1706
    if-lez v2, :cond_0

    .line 1708
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1710
    if-ne v3, v11, :cond_6

    .line 1711
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1712
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v6, v10

    .line 1714
    :goto_2
    if-ge v6, v2, :cond_4

    .line 1715
    invoke-virtual {v1, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1716
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    if-eq v7, v12, :cond_3

    .line 1717
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1714
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 1698
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1699
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEditBg(Landroid/graphics/Bitmap;)V

    .line 1700
    invoke-virtual {v4, v10}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEnabledChildAnimation(Z)V

    goto :goto_1

    .line 1720
    :cond_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1723
    :cond_4
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1724
    new-instance v1, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1725
    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;->sort(Ljava/util/Comparator;)V

    .line 1726
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1728
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1730
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$2;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$2;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1741
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$3;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$3;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1754
    iput v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 1755
    invoke-virtual {p0, v10, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1757
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->clearApplications()V

    .line 1758
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v10

    .line 1759
    :goto_4
    if-ge v1, v0, :cond_5

    .line 1760
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1761
    iget v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    invoke-virtual {v4, p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;I)V

    .line 1759
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1763
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1768
    :cond_6
    invoke-virtual {v1, v10}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 1769
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->setMode(I)V

    .line 1770
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAlphabeticalArrangement:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    :goto_5
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->sort(Ljava/util/Comparator;)V

    move v6, v10

    .line 1773
    :goto_6
    if-ge v6, v2, :cond_e

    .line 1774
    invoke-virtual {v1, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1775
    if-ne v3, v13, :cond_b

    .line 1776
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    if-eq v7, v12, :cond_9

    .line 1777
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    :cond_8
    :goto_7
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_6

    .line 1782
    :cond_9
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    if-ne v7, v12, :cond_a

    .line 1783
    invoke-direct {p0, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v7

    .line 1785
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1786
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v8

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1791
    :goto_8
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1792
    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1793
    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 1795
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v7

    .line 1796
    iget v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    sub-int v9, v7, v11

    if-eq v8, v9, :cond_8

    .line 1797
    sub-int/2addr v7, v11

    iput v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    goto :goto_7

    .line 1788
    :cond_a
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v7

    goto :goto_8

    .line 1800
    :cond_b
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    iput v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 1801
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1802
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1804
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    if-eq v7, v12, :cond_c

    .line 1805
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1810
    :cond_c
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    if-ne v7, v12, :cond_d

    .line 1811
    invoke-direct {p0, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v7

    .line 1813
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 1814
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v8

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 1816
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1817
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v8

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1819
    iput-boolean v10, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 1824
    :goto_9
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1825
    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1826
    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 1828
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v7

    .line 1829
    iget v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    sub-int v9, v7, v11

    if-eq v8, v9, :cond_8

    .line 1830
    sub-int v8, v7, v11

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 1831
    sub-int/2addr v7, v11

    iput v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1832
    iput-boolean v10, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    goto/16 :goto_7

    .line 1821
    :cond_d
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v7

    goto :goto_9

    .line 1837
    :cond_e
    if-ne v3, v13, :cond_f

    .line 1838
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1841
    :cond_f
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->clearApplications()V

    .line 1842
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v10

    .line 1843
    :goto_a
    if-ge v2, v1, :cond_11

    .line 1844
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1845
    if-ne v3, v13, :cond_10

    .line 1846
    iget v6, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    invoke-virtual {v4, v0, v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;I)V

    .line 1843
    :goto_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    .line 1848
    :cond_10
    iget v6, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    invoke-virtual {v4, v0, v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;I)V

    goto :goto_b

    .line 1851
    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1853
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1854
    if-lez v0, :cond_13

    .line 1855
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-lt v1, v0, :cond_12

    .line 1856
    sub-int/2addr v0, v11

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 1857
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1864
    :cond_12
    :goto_c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWorkspaceBadge()V

    goto/16 :goto_0

    .line 1860
    :cond_13
    iput v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 1861
    invoke-virtual {p0, v10, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    goto :goto_c
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2726
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2728
    .local v0, N:I
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->setMode(I)V

    .line 2729
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2730
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2731
    .local v3, item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    invoke-static {v4, v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 2733
    .local v2, index:I
    if-gez v2, :cond_0

    .line 2734
    add-int/lit8 v4, v2, 0x1

    neg-int v2, v4

    .line 2736
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2729
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2739
    .end local v2           #index:I
    .end local v3           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v4, :cond_2

    .line 2740
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 2741
    :cond_2
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 4
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x1

    .line 2300
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 2301
    .local v0, childCount:I
    if-le v0, v3, :cond_6

    .line 2302
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v1

    .line 2303
    .local v1, currentScreen:I
    if-gez v1, :cond_2

    .line 2304
    sub-int v1, v0, v3

    .line 2308
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 2309
    const/16 v2, 0x11

    if-ne p2, v2, :cond_4

    .line 2310
    if-lez v1, :cond_3

    .line 2311
    sub-int v2, v1, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 2325
    .end local v1           #currentScreen:I
    :cond_1
    :goto_1
    return-void

    .line 2305
    .restart local v1       #currentScreen:I
    :cond_2
    if-lt v1, v0, :cond_0

    .line 2306
    const/4 v1, 0x0

    goto :goto_0

    .line 2312
    :cond_3
    if-nez v1, :cond_1

    .line 2313
    sub-int v2, v0, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 2315
    :cond_4
    const/16 v2, 0x42

    if-ne p2, v2, :cond_1

    .line 2316
    sub-int v2, v0, v3

    if-ge v1, v2, :cond_5

    .line 2317
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 2318
    :cond_5
    sub-int v2, v0, v3

    if-ne v1, v2, :cond_1

    .line 2319
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 2323
    .end local v1           #currentScreen:I
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_1
.end method

.method addItem(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 2000
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v2

    .line 2001
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2002
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 2003
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2004
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v4

    .line 2005
    if-gez v4, :cond_4

    .line 2006
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    .line 2007
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 2035
    :goto_0
    return-object v0

    .line 2008
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v4

    move v7, v4

    move-object v4, v1

    move v1, v7

    .line 2011
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2012
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2014
    if-ge v3, p2, :cond_2

    .line 2015
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 2019
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 2020
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-le v3, v1, :cond_1

    .line 2021
    const/4 v1, 0x1

    sub-int v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2022
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 2023
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Landroid/view/View;I)V

    .line 2027
    :cond_1
    const/4 v1, 0x0

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_3

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-ge v4, v1, :cond_3

    .line 2028
    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2029
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2030
    const v6, 0xffff

    iput v6, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 2031
    iput v2, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 2032
    iput v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 2027
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    .line 2017
    :cond_2
    invoke-virtual {v0, v5, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    move-object v0, v5

    .line 2035
    goto :goto_0

    :cond_4
    move v7, v4

    move-object v4, v1

    move v1, v7

    goto :goto_1
.end method

.method public animateClose()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1272
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1274
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 1275
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v0, v4}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1280
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    move v1, v3

    .line 1281
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1282
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1284
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuDrawer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1285
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1286
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundClose()V

    .line 1287
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1288
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1289
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->drawBg(ZZ)V

    .line 1291
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v0

    .line 1292
    if-eqz v0, :cond_2

    .line 1293
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v1, :cond_4

    .line 1294
    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/TopFourZone;->setBackgroundColor(I)V

    .line 1299
    :cond_2
    :goto_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1300
    if-eqz v0, :cond_3

    .line 1301
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 1302
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1303
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1305
    :cond_3
    return-void

    .line 1296
    :cond_4
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    goto :goto_1
.end method

.method public animateOpen()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1240
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v0, v4}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1242
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    move v1, v4

    .line 1243
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1244
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundImage()V

    .line 1248
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-nez v0, :cond_1

    .line 1249
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuDrawer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1250
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1251
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1252
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1253
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->drawBg(ZZ)V

    .line 1255
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v0

    .line 1256
    if-eqz v0, :cond_2

    .line 1257
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v1, :cond_4

    .line 1258
    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/TopFourZone;->setBackgroundResource(I)V

    .line 1262
    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    .line 1264
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1265
    if-eqz v0, :cond_3

    .line 1266
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1267
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1269
    :cond_3
    return-void

    .line 1260
    :cond_4
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    goto :goto_1
.end method

.method clearChildrenCache()V
    .locals 4

    .prologue
    .line 1186
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1187
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1188
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1189
    .local v2, layout:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1192
    .end local v2           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1339
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 1340
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->interrupt()V

    .line 1341
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->interrupt()V

    .line 1343
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1345
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    move v1, v3

    .line 1346
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1347
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1346
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1350
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1351
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1352
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->drawBg(ZZ)V

    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v0

    .line 1355
    if-eqz v0, :cond_1

    .line 1356
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v1, :cond_2

    .line 1357
    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/TopFourZone;->setBackgroundColor(I)V

    .line 1361
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->setShowIndicator()V

    .line 1362
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    .line 1363
    return-void

    .line 1359
    :cond_2
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1024
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v1, v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1025
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1026
    :cond_1
    iput v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 1069
    :cond_2
    :goto_0
    return-void

    .line 1030
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1031
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    .line 1032
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    .line 1034
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1035
    .local v0, count:I
    if-lt v0, v6, :cond_4

    .line 1036
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_5

    .line 1037
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    .line 1043
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->postInvalidate()V

    goto :goto_0

    .line 1038
    :cond_5
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    sub-int v2, v0, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-le v1, v2, :cond_4

    .line 1039
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    goto :goto_1

    .line 1044
    .end local v0           #count:I
    :cond_6
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    if-eq v1, v4, :cond_2

    .line 1045
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1046
    .restart local v0       #count:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    sub-int v2, v0, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 1048
    if-lt v0, v6, :cond_9

    .line 1049
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 1050
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-gez v1, :cond_a

    .line 1051
    sub-int v1, v0, v3

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 1055
    :cond_7
    :goto_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    if-ltz v1, :cond_8

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    sub-int v2, v0, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    if-le v1, v2, :cond_9

    .line 1056
    :cond_8
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    rem-int/2addr v1, v2

    if-nez v1, :cond_9

    .line 1057
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0, v1, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1062
    :cond_9
    iput v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 1063
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->clearChildrenCache()V

    .line 1064
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->postInvalidate()V

    goto/16 :goto_0

    .line 1052
    :cond_a
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-lt v1, v0, :cond_7

    .line 1053
    iput v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    goto :goto_2
.end method

.method public discardMenuEdit()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .locals 4

    .prologue
    .line 2803
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v0

    .line 2804
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2805
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2806
    .local v2, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    iput v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 2807
    iget v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 2808
    iget v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 2804
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2811
    .end local v2           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 399
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 400
    .local v0, childCount:I
    if-gtz v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v8

    if-gez v8, :cond_0

    .line 404
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 405
    sub-int v8, v0, v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMeasuredWidth()I

    move-result v9

    mul-int v7, v8, v9

    .line 407
    .local v7, maxScrollX:I
    if-le v0, v11, :cond_2

    .line 408
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-gez v8, :cond_7

    .line 409
    sub-int v8, v0, v11

    iput v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 415
    :cond_2
    :goto_1
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEnablePageIndicatorShowHide:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_5

    .line 416
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v8, :cond_4

    .line 417
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 418
    :cond_4
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsIndicatorShow:Z

    .line 419
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHideIndicator:Ljava/lang/Runnable;

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 420
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    .line 421
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHideIndicator:Ljava/lang/Runnable;

    const-wide/16 v9, 0x3e8

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 424
    :cond_5
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    if-eq v8, v11, :cond_8

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    move v5, v11

    .line 426
    .local v5, fastDraw:Z
    :goto_2
    if-eqz v5, :cond_9

    .line 427
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-ge v8, v0, :cond_6

    .line 428
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDrawingTime()J

    move-result-wide v9

    invoke-virtual {p0, p1, v8, v9, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 467
    :cond_6
    :goto_3
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v8, v11, :cond_0

    .line 468
    sget-boolean v8, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-nez v8, :cond_0

    .line 469
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->drawPageIndicator(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 410
    .end local v5           #fastDraw:Z
    :cond_7
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-lt v8, v0, :cond_2

    .line 411
    iput v12, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    goto :goto_1

    :cond_8
    move v5, v12

    .line 424
    goto :goto_2

    .line 430
    .restart local v5       #fastDraw:Z
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDrawingTime()J

    move-result-wide v3

    .line 433
    .local v3, drawingTime:J
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    sub-int v2, v8, v9

    .line 434
    .local v2, diff:I
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    if-ltz v8, :cond_e

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    if-ge v8, v0, :cond_e

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v11, :cond_a

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int v9, v0, v11

    if-ne v8, v9, :cond_e

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    if-ltz v8, :cond_a

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    if-le v8, v7, :cond_e

    .line 439
    :cond_a
    if-lez v2, :cond_d

    .line 440
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    sub-int v9, v0, v11

    if-ge v8, v9, :cond_b

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 444
    :cond_b
    :goto_4
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 445
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 454
    :cond_c
    const/4 v8, 0x2

    if-lt v0, v8, :cond_6

    .line 455
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    if-gez v8, :cond_f

    .line 456
    neg-int v8, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v9

    mul-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p1, v8, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 457
    sub-int v8, v0, v11

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 458
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v8

    mul-int/2addr v8, v0

    int-to-float v8, v8

    invoke-virtual {p1, v8, v13}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_3

    .line 442
    :cond_d
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-lez v8, :cond_b

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    sub-int/2addr v8, v11

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_4

    .line 448
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 449
    .local v1, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_5
    if-ge v6, v1, :cond_c

    .line 450
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 449
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 459
    .end local v1           #count:I
    .end local v6           #i:I
    :cond_f
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    if-le v8, v7, :cond_6

    .line 460
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v8

    mul-int/2addr v8, v0

    int-to-float v8, v8

    invoke-virtual {p1, v8, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 461
    invoke-virtual {p0, v12}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 462
    neg-int v8, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v9

    mul-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p1, v8, v13}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_3
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    .line 2329
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 2330
    .local v0, childCount:I
    if-le v0, v3, :cond_1

    .line 2331
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 2332
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-nez v1, :cond_1

    .line 2333
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    move v1, v3

    .line 2343
    :goto_0
    return v1

    .line 2336
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 2337
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    sub-int v2, v0, v3

    if-ne v1, v2, :cond_1

    .line 2338
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    move v1, v3

    .line 2339
    goto :goto_0

    .line 2343
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v1

    goto :goto_0
.end method

.method drawPageIndicatorExternal(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 543
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v1

    if-ltz v1, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 552
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 553
    .local v0, save:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 555
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->drawPageIndicator(Landroid/graphics/Canvas;)V

    .line 557
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method enableChildrenCache(II)V
    .locals 6
    .parameter "fromScreen"
    .parameter "toScreen"

    .prologue
    const/4 v5, 0x1

    .line 1153
    if-le p1, p2, :cond_0

    .line 1154
    move p1, p2

    .line 1155
    move p2, p1

    .line 1158
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1159
    .local v1, count:I
    const/4 v0, -0x1

    .line 1160
    .local v0, cached:I
    if-le v1, v5, :cond_1

    .line 1161
    if-gez p1, :cond_2

    .line 1162
    sub-int v0, v1, v5

    .line 1163
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1164
    .local v3, layout:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1165
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawingCacheEnabled(Z)V

    .line 1174
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_1
    :goto_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1175
    sub-int v4, v1, v5

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1177
    move v2, p1

    .local v2, i:I
    :goto_1
    if-gt v2, p2, :cond_4

    .line 1178
    if-ne v0, v2, :cond_3

    .line 1177
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1166
    .end local v2           #i:I
    :cond_2
    if-lt p2, v1, :cond_1

    .line 1167
    const/4 v0, 0x0

    .line 1168
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1169
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1170
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawingCacheEnabled(Z)V

    goto :goto_0

    .line 1179
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    .restart local v2       #i:I
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1180
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1181
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawingCacheEnabled(Z)V

    goto :goto_2

    .line 1183
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_4
    return-void
.end method

.method public getAnimateStatus()Z
    .locals 1

    .prologue
    .line 1396
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimating:Z

    return v0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 2352
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    return v0
.end method

.method public getDragAnimationXOffset(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 1596
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v0, :cond_0

    .line 1597
    const/4 v0, 0x0

    .line 1599
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    goto :goto_0
.end method

.method getDropScreen()I
    .locals 1

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    goto :goto_0
.end method

.method getIndexOfCell(II)I
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x1

    .line 1954
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1955
    .local v0, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildWidth()I

    move-result v4

    .line 1956
    .local v4, childWidth:I
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildHeight()I

    move-result v3

    .line 1957
    .local v3, childHeight:I
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getLRPadding()I

    move-result v6

    .line 1960
    .local v6, padding:I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1961
    .local v7, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getHitRect(Landroid/graphics/Rect;)V

    .line 1963
    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getTop()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 1965
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    .line 1966
    .local v5, col:I
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    iget v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    div-int v8, v9, v10

    .line 1968
    .local v8, row:I
    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1969
    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int v9, p1, v9

    sub-int p1, v9, v6

    .line 1970
    iget v9, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v9

    .line 1972
    if-gez p1, :cond_2

    const/4 p1, 0x0

    move v1, p1

    .line 1973
    .local v1, cellX:I
    :goto_0
    div-int v2, p2, v3

    .line 1975
    .local v2, cellY:I
    sub-int v9, v5, v11

    if-le v1, v9, :cond_0

    sub-int v1, v5, v11

    .line 1976
    :cond_0
    sub-int v9, v8, v11

    if-le v2, v9, :cond_1

    sub-int v2, v8, v11

    .line 1978
    :cond_1
    mul-int v9, v2, v5

    add-int/2addr v9, v1

    .line 1980
    .end local v1           #cellX:I
    .end local v2           #cellY:I
    :goto_1
    return v9

    .line 1972
    :cond_2
    div-int v9, p1, v4

    move v1, v9

    goto :goto_0

    .line 1980
    :cond_3
    const/4 v9, -0x1

    goto :goto_1
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1392
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    return v0
.end method

.method getPageIndicatorArea(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, -0x1

    .line 665
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 669
    :goto_0
    return v0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/PageIndicator;->getPageTouchArea(II)I

    move-result v0

    goto :goto_0
.end method

.method public getWhichScreen()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1072
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMeasuredWidth()I

    move-result v2

    .line 1073
    .local v2, screenWidth:I
    const/4 v4, 0x0

    .line 1074
    .local v4, whichScreen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1075
    .local v1, count:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    .line 1077
    .local v3, scrollX:I
    const/4 v5, 0x2

    if-lt v1, v5, :cond_1

    .line 1078
    if-gez v3, :cond_0

    .line 1079
    div-int/lit8 v5, v2, 0x2

    sub-int v5, v3, v5

    div-int v4, v5, v2

    .line 1099
    :goto_0
    return v4

    .line 1081
    :cond_0
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v3

    div-int v4, v5, v2

    goto :goto_0

    .line 1084
    :cond_1
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v6

    sub-int v0, v5, v6

    .line 1086
    .local v0, availableToScroll:I
    if-gez v3, :cond_2

    .line 1087
    const/4 v4, 0x0

    goto :goto_0

    .line 1088
    :cond_2
    if-gtz v0, :cond_3

    .line 1089
    sub-int v4, v1, v7

    goto :goto_0

    .line 1091
    :cond_3
    if-lez v2, :cond_4

    .line 1092
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v3

    div-int v4, v5, v2

    goto :goto_0

    .line 1094
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isClosing()Z
    .locals 1

    .prologue
    .line 2561
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listsetApps(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2761
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2762
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2763
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2764
    .local v3, item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->findAppByComponent(Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    move-result v2

    .line 2765
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 2766
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2762
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2768
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->setMode(I)V

    .line 2769
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    invoke-static {v4, v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 2770
    if-gez v2, :cond_1

    .line 2771
    add-int/lit8 v4, v2, 0x1

    neg-int v2, v4

    .line 2773
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 2776
    .end local v2           #index:I
    .end local v3           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v4, :cond_3

    .line 2777
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 2778
    :cond_3
    return-void
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 1404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLocked:Z

    .line 1405
    return-void
.end method

.method public makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "index"
    .parameter "parent"

    .prologue
    .line 1656
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1657
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1658
    .local v1, config:Landroid/content/res/Configuration;
    const/4 v3, -0x1

    .line 1660
    .local v3, oldOrientation:I
    iget v5, v1, Landroid/content/res/Configuration;->orientation:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    if-eq v5, v6, :cond_0

    .line 1661
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1662
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    iput v5, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1664
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1665
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1668
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6, p2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1669
    .local v0, app:Landroid/view/View;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1670
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1671
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1673
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 1674
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1675
    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    iput v3, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1676
    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1679
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_1
    return-object v0
.end method

.method public onDragEnd()V
    .locals 0

    .prologue
    .line 1577
    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1415
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1420
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 25
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1425
    sget v3, Lcom/sec/android/app/twlauncher/DragLayer;->SCROLL_ZONE:I

    move/from16 v0, p2

    move v1, v3

    if-lt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getWidth()I

    move-result v3

    sget v4, Lcom/sec/android/app/twlauncher/DragLayer;->SCROLL_ZONE:I

    sub-int/2addr v3, v4

    move/from16 v0, p2

    move v1, v3

    if-le v0, v1, :cond_1

    .line 1426
    :cond_0
    const/4 v3, -0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    .line 1513
    :goto_0
    return-void

    .line 1430
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 1431
    .local v21, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPoint:[I

    move-object/from16 v20, v0

    .line 1433
    .local v20, point:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v23

    .line 1434
    .local v23, target:Landroid/view/View;
    if-eqz v23, :cond_2

    .line 1435
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHitRect(Landroid/graphics/Rect;)V

    .line 1437
    :cond_2
    if-eqz v23, :cond_8

    move-object/from16 v0, v21

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1439
    move-object/from16 v0, v23

    check-cast v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v15, v0

    .line 1440
    .local v15, handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    move-object v0, v15

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getIndexOfCell(II)I

    move-result v16

    .line 1441
    .local v16, index:I
    const/4 v3, -0x1

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    move v3, v0

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_7

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 1443
    .local v24, v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 1444
    .local v19, parent:Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-eqz v3, :cond_4

    .line 1445
    move-object v0, v15

    move-object/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeItem(Landroid/view/View;I)V

    .line 1473
    :goto_1
    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEditIndex(I)V

    .line 1489
    .end local v19           #parent:Landroid/view/View;
    .end local v24           #v:Landroid/view/View;
    :cond_3
    :goto_2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    goto :goto_0

    .line 1447
    .restart local v19       #parent:Landroid/view/View;
    .restart local v24       #v:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 1449
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1450
    .local v17, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v12

    .line 1452
    .local v12, addView:Landroid/view/View;
    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getVisibleChildCount()I

    move-result v3

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getColumnCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1453
    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->arrangeItem(I)V

    .line 1456
    :cond_5
    move-object v0, v15

    move-object v1, v12

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v22

    .line 1457
    .local v22, shiftView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1459
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1460
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1461
    .local v4, animationView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1462
    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1464
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1465
    .local v18, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move v1, v3

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->cellToPoint(I[I)V

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    move-object v3, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getLeft()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v6, 0x0

    aget v6, v20, v6

    int-to-float v6, v6

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getTop()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/AppMenu;->getTop()I

    move-result v8

    const/4 v9, 0x1

    aget v9, v20, v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move v9, v0

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move v10, v0

    int-to-float v10, v10

    const/16 v11, 0x12c

    invoke-interface/range {v3 .. v11}, Lcom/sec/android/app/twlauncher/DragController;->startAnimation(Landroid/view/View;FFFFFFI)V

    .line 1471
    .end local v4           #animationView:Landroid/view/View;
    .end local v18           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_6
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    goto/16 :goto_1

    .line 1474
    .end local v12           #addView:Landroid/view/View;
    .end local v17           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v19           #parent:Landroid/view/View;
    .end local v22           #shiftView:Landroid/view/View;
    .end local v24           #v:Landroid/view/View;
    :cond_7
    const/4 v3, -0x1

    move/from16 v0, v16

    move v1, v3

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_3

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 1476
    .restart local v24       #v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 1477
    .restart local v19       #parent:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1478
    .restart local v18       #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-nez v3, :cond_3

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 1479
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 1480
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 1481
    .local v13, dragView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1483
    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v14

    .line 1484
    .local v14, dropIndex:I
    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditIndex(I)V

    .line 1485
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    .line 1486
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    goto/16 :goto_2

    .line 1492
    .end local v13           #dragView:Landroid/view/View;
    .end local v14           #dropIndex:I
    .end local v15           #handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    .end local v16           #index:I
    .end local v18           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v19           #parent:Landroid/view/View;
    .end local v24           #v:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getIndexOfCell(II)I

    move-result v16

    .line 1493
    .restart local v16       #index:I
    const/4 v3, -0x1

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    move v3, v0

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_9

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 1495
    .restart local v24       #v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 1496
    .restart local v19       #parent:Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-eqz v3, :cond_a

    .line 1497
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1498
    .restart local v15       #handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 1502
    .end local v15           #handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 1503
    .restart local v13       #dragView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1505
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1506
    .restart local v18       #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v14

    .line 1507
    .restart local v14       #dropIndex:I
    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditIndex(I)V

    .line 1508
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    .line 1509
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1511
    .end local v13           #dragView:Landroid/view/View;
    .end local v14           #dropIndex:I
    .end local v18           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v19           #parent:Landroid/view/View;
    .end local v24           #v:Landroid/view/View;
    :cond_9
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    goto/16 :goto_0

    .line 1500
    .restart local v19       #parent:Landroid/view/View;
    .restart local v24       #v:Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    goto :goto_3
.end method

.method public onDragStart(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
    .locals 4
    .parameter "v"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 1580
    instance-of v3, p2, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v3, :cond_1

    .line 1581
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v2, v0

    .line 1582
    .local v2, shortcut:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1583
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    .line 1584
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEditIndex(I)V

    .line 1593
    .end local v2           #shortcut:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    :cond_0
    :goto_0
    return-void

    .line 1586
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1587
    .local v1, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    if-eqz v1, :cond_0

    .line 1588
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1589
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    .line 1590
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditIndex(I)V

    goto :goto_0
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 22
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    if-nez v3, :cond_1

    .line 1557
    :cond_0
    :goto_0
    return-void

    .line 1519
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 1521
    .local v19, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v20

    .line 1522
    .local v20, shortcut:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHitRect(Landroid/graphics/Rect;)V

    .line 1524
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1526
    .local v16, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 1527
    .local v17, parent:Landroid/view/ViewGroup;
    if-eqz v17, :cond_0

    .line 1529
    const/4 v3, 0x2

    move v0, v3

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 1531
    .local v18, point:[I
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-eqz v3, :cond_2

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v4, v0

    sub-int v5, p2, p4

    int-to-float v5, v5

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getLeft()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    sub-int v7, p3, p5

    int-to-float v7, v7

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getTop()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x12c

    invoke-interface/range {v3 .. v11}, Lcom/sec/android/app/twlauncher/DragController;->startAnimation(Landroid/view/View;FFFFFFI)V

    goto :goto_0

    .line 1535
    :cond_2
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_5

    .line 1536
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getIndexOfCell(II)I

    move-result v15

    .line 1537
    .local v15, index:I
    const/4 v3, -0x1

    if-eq v15, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    if-nez v3, :cond_4

    :cond_3
    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1539
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v21, v0

    .line 1540
    .local v21, v:Landroid/view/View;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-eqz v3, :cond_6

    .line 1541
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1542
    .local v14, handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 1546
    .end local v14           #handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 1547
    .local v13, dropView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1548
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v12

    .line 1549
    .local v12, dropCell:I
    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditIndex(I)V

    .line 1550
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1553
    .end local v12           #dropCell:I
    .end local v13           #dropView:Landroid/view/View;
    .end local v15           #index:I
    .end local v21           #v:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->cellToPoint(Landroid/view/View;[I)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v4, v0

    sub-int v5, p2, p4

    int-to-float v5, v5

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/AppMenu;->getLeft()I

    move-result v6

    const/4 v7, 0x0

    aget v7, v18, v7

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move v7, v0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-int v7, p3, p5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move v8, v0

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/AppMenu;->getTop()I

    move-result v8

    const/4 v9, 0x1

    aget v9, v18, v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move v9, v0

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move v10, v0

    int-to-float v10, v10

    const/16 v11, 0x12c

    invoke-interface/range {v3 .. v11}, Lcom/sec/android/app/twlauncher/DragController;->startAnimation(Landroid/view/View;FFFFFFI)V

    goto/16 :goto_0

    .line 1544
    .restart local v15       #index:I
    .restart local v21       #v:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;ZLjava/lang/Object;)V
    .locals 3
    .parameter "target"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    const/4 v2, -0x1

    .line 1564
    if-eqz p2, :cond_1

    .line 1565
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->addBlankPage()V

    .line 1570
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1571
    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    .line 1572
    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    .line 1573
    return-void

    .line 1567
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    .line 678
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLocked:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 679
    const/16 v16, 0x1

    .line 855
    :goto_0
    return v16

    .line 682
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimating:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 683
    const/16 v16, 0x1

    goto :goto_0

    .line 686
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    const/16 v16, 0x0

    goto :goto_0

    .line 700
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-nez v16, :cond_3

    .line 701
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 703
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 705
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 706
    .local v3, action:I
    const/16 v16, 0x2

    move v0, v3

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 707
    const/16 v16, 0x1

    goto :goto_0

    .line 711
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 712
    .local v6, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 713
    .local v11, y:F
    const/4 v12, 0x0

    .local v12, y1:I
    const/4 v13, 0x0

    .local v13, y2:I
    const/4 v7, 0x0

    .local v7, x1:I
    const/4 v8, 0x0

    .line 715
    .local v8, x2:I
    sparse-switch v3, :sswitch_data_0

    .line 853
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    move/from16 v16, v0

    if-eqz v16, :cond_13

    const/16 v16, 0x1

    move/from16 v4, v16

    .local v4, ret:Z
    :goto_2
    move/from16 v16, v4

    .line 855
    goto :goto_0

    .line 726
    .end local v4           #ret:Z
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 727
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v12, v0

    .line 728
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v7, v0

    .line 729
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v13, v0

    .line 730
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v8, v0

    .line 732
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinchStart:I

    move/from16 v16, v0

    sub-int v17, v12, v13

    sub-int v18, v12, v13

    mul-int v17, v17, v18

    sub-int v18, v7, v8

    sub-int v19, v7, v8

    mul-int v18, v18, v19

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinch:I

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v16

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v16

    if-ltz v16, :cond_7

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 737
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinch:I

    move/from16 v16, v0

    const/16 v17, 0x64

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    .line 738
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawOpenAnimation()V

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    .line 741
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 748
    :cond_8
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 752
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDownX:F

    move/from16 v16, v0

    sub-float v16, v6, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v9, v0

    .line 757
    .local v9, xDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    move/from16 v16, v0

    sub-float v16, v11, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v14, v0

    .line 761
    .local v14, yDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    move v5, v0

    .line 762
    .local v5, touchSlop:I
    if-le v9, v5, :cond_b

    const/16 v16, 0x1

    move/from16 v10, v16

    .line 763
    .local v10, xMoved:Z
    :goto_3
    if-le v14, v5, :cond_c

    const/16 v16, 0x1

    move/from16 v15, v16

    .line 765
    .local v15, yMoved:Z
    :goto_4
    if-nez v10, :cond_a

    if-eqz v15, :cond_e

    .line 767
    :cond_a
    if-eqz v10, :cond_d

    .line 769
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 762
    .end local v10           #xMoved:Z
    .end local v15           #yMoved:Z
    :cond_b
    const/16 v16, 0x0

    move/from16 v10, v16

    goto :goto_3

    .line 763
    .restart local v10       #xMoved:Z
    :cond_c
    const/16 v16, 0x0

    move/from16 v15, v16

    goto :goto_4

    .line 773
    .restart local v15       #yMoved:Z
    :cond_d
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    goto/16 :goto_1

    .line 776
    :cond_e
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    goto/16 :goto_1

    .line 784
    .end local v5           #touchSlop:I
    .end local v9           #xDiff:I
    .end local v10           #xMoved:Z
    .end local v14           #yDiff:I
    .end local v15           #yMoved:Z
    :sswitch_1
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDownX:F

    .line 785
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    .line 787
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->enableChildrenCache(II)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Scroller;->isFinished()Z

    move-result v16

    if-eqz v16, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v16, v0

    move v0, v6

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move/from16 v17, v0

    move v0, v11

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchedPageIndicatorIndex:I

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_10

    :cond_f
    const/16 v16, 0x1

    :goto_5
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    :cond_10
    const/16 v16, 0x0

    goto :goto_5

    .line 801
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->clearChildrenCache()V

    .line 802
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    .line 804
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 805
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v16

    if-nez v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v16

    if-ltz v16, :cond_12

    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 808
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinch:I

    move/from16 v16, v0

    const/16 v17, 0x64

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawOpenAnimation()V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    goto/16 :goto_1

    .line 828
    :sswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 832
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v12, v0

    .line 833
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v7, v0

    .line 834
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v13, v0

    .line 835
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v8, v0

    .line 837
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    .line 838
    sub-int v16, v12, v13

    sub-int v17, v12, v13

    mul-int v16, v16, v17

    sub-int v17, v7, v8

    sub-int v18, v7, v8

    mul-int v17, v17, v18

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinchStart:I

    goto/16 :goto_1

    .line 853
    :cond_13
    const/16 v16, 0x0

    move/from16 v4, v16

    goto/16 :goto_2

    .line 715
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x105 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 369
    const/4 v1, 0x0

    .line 371
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    .line 372
    .local v3, count:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTopOffset:I

    .line 373
    .local v5, topPadding:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 374
    const/4 v5, 0x0

    .line 377
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 378
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 379
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 380
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 381
    .local v2, childWidth:I
    add-int v6, v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 382
    add-int/2addr v1, v2

    .line 377
    .end local v2           #childWidth:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 386
    .end local v0           #child:Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->initPageIndicator()V

    .line 388
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    const-string v8, "Menulayout can only be used in EXACTLY mode."

    .line 337
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 339
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 340
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 341
    .local v4, widthMode:I
    if-eq v4, v7, :cond_0

    .line 342
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 345
    :cond_0
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 346
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRightOffset:I

    sub-int/2addr v3, v5

    .line 347
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 350
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 351
    .local v1, heightMode:I
    if-eq v1, v7, :cond_2

    .line 352
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 356
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 357
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 358
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 357
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    :cond_3
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFirstLayout:Z

    if-eqz v5, :cond_4

    .line 362
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    mul-int/2addr v5, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 365
    :cond_4
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2283
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2285
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2286
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 2291
    .local v1, focusableScreen:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2292
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 2295
    .end local v0           #child:Landroid/view/View;
    .end local v1           #focusableScreen:I
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 2288
    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .restart local v1       #focusableScreen:I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "ev"

    .prologue
    .line 861
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLocked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 862
    const/16 v21, 0x1

    .line 1019
    :goto_0
    return v21

    .line 865
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 866
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 868
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 870
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 871
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    .line 872
    .local v15, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 874
    .local v18, y:F
    packed-switch v4, :pswitch_data_0

    .line 1019
    :cond_2
    :goto_1
    const/16 v21, 0x1

    goto :goto_0

    .line 881
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->isFinished()Z

    move-result v21

    if-nez v21, :cond_3

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->abortAnimation()V

    .line 886
    :cond_3
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDownX:F

    .line 887
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    .line 889
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    move v0, v15

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move/from16 v22, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchedPageIndicatorIndex:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    goto :goto_1

    .line 893
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 894
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    move/from16 v21, v0

    sub-float v21, v21, v15

    move/from16 v0, v21

    float-to-int v0, v0

    move v7, v0

    .line 895
    .local v7, deltaX:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 896
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    move/from16 v21, v0

    sub-float v21, v21, v18

    move/from16 v0, v21

    float-to-int v0, v0

    move v8, v0

    .line 897
    .local v8, deltaY:I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 898
    :cond_4
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    .line 905
    .end local v8           #deltaY:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 907
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mIsIndicatorShow:Z

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mHideIndicator:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 911
    :cond_6
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    .line 916
    .local v5, childCount:I
    const/16 v21, 0x1

    sub-int v21, v5, v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v22

    mul-int v10, v21, v22

    .line 917
    .local v10, maxScrollX:I
    const/16 v21, 0x2

    move v0, v5

    move/from16 v1, v21

    if-lt v0, v1, :cond_7

    .line 918
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_1

    .line 920
    :cond_7
    if-gez v7, :cond_9

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    neg-int v0, v0

    move v11, v0

    .line 922
    .local v11, minScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    move/from16 v0, v21

    move v1, v11

    if-le v0, v1, :cond_2

    .line 923
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    if-lez v21, :cond_8

    .line 924
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_1

    .line 926
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    sub-int v21, v11, v21

    move/from16 v0, v21

    move v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_1

    .line 929
    .end local v11           #minScrollX:I
    :cond_9
    if-lez v7, :cond_2

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v21

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getRight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v10, v21, v22

    .line 931
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    move/from16 v0, v21

    move v1, v10

    if-ge v0, v1, :cond_2

    .line 932
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    sub-int v21, v10, v21

    move/from16 v0, v21

    move v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_1

    .line 939
    .end local v5           #childCount:I
    .end local v7           #deltaX:I
    .end local v10           #maxScrollX:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDownX:F

    move/from16 v21, v0

    sub-float v21, v15, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v16, v0

    .line 944
    .local v16, xDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    move/from16 v21, v0

    sub-float v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 948
    .local v19, yDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    move v12, v0

    .line 949
    .local v12, touchSlop:I
    move/from16 v0, v16

    move v1, v12

    if-le v0, v1, :cond_c

    const/16 v21, 0x1

    move/from16 v17, v21

    .line 950
    .local v17, xMoved:Z
    :goto_2
    move/from16 v0, v19

    move v1, v12

    if-le v0, v1, :cond_d

    const/16 v21, 0x1

    move/from16 v20, v21

    .line 952
    .local v20, yMoved:Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v21

    if-lez v21, :cond_f

    if-nez v17, :cond_b

    if-eqz v20, :cond_f

    .line 954
    :cond_b
    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    .line 958
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 949
    .end local v17           #xMoved:Z
    .end local v20           #yMoved:Z
    :cond_c
    const/16 v21, 0x0

    move/from16 v17, v21

    goto :goto_2

    .line 950
    .restart local v17       #xMoved:Z
    :cond_d
    const/16 v21, 0x0

    move/from16 v20, v21

    goto :goto_3

    .line 962
    .restart local v20       #yMoved:Z
    :cond_e
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    goto/16 :goto_1

    .line 965
    :cond_f
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    goto/16 :goto_1

    .line 971
    .end local v12           #touchSlop:I
    .end local v16           #xDiff:I
    .end local v17           #xMoved:Z
    .end local v19           #yDiff:I
    .end local v20           #yMoved:Z
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 972
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 973
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    move v0, v15

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move/from16 v22, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v9

    .line 974
    .local v9, index:I
    const/16 v21, -0x1

    move v0, v9

    move/from16 v1, v21

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchedPageIndicatorIndex:I

    move/from16 v21, v0

    move v0, v9

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 975
    const/16 v21, -0x2

    move v0, v9

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 976
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    const/16 v22, 0x9

    sub-int v9, v21, v22

    .line 977
    if-gez v9, :cond_10

    const/4 v9, 0x0

    .line 984
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 986
    :cond_11
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    goto/16 :goto_1

    .line 978
    :cond_12
    const/16 v21, -0x3

    move v0, v9

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 979
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    add-int/lit8 v9, v21, 0x9

    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    .line 981
    .local v6, count:I
    if-lt v9, v6, :cond_10

    const/16 v21, 0x1

    sub-int v9, v6, v21

    goto :goto_4

    .line 990
    .end local v6           #count:I
    .end local v9           #index:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v13, v0

    .line 991
    .local v13, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMaximumVelocity:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object v0, v13

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 992
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move v14, v0

    .line 996
    .local v14, velocityX:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    .line 997
    .restart local v5       #childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->SNAP_VELOCITY:I

    move/from16 v21, v0

    move v0, v14

    move/from16 v1, v21

    if-le v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    if-ltz v21, :cond_15

    .line 999
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 1007
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->recycle()V

    .line 1008
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1010
    .end local v5           #childCount:I
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v14           #velocityX:I
    :cond_14
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mHideIndicator:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1000
    .restart local v5       #childCount:I
    .restart local v13       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v14       #velocityX:I
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->SNAP_VELOCITY:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v22, v5, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_16

    .line 1002
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    goto :goto_5

    .line 1004
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToDestination()V

    goto :goto_5

    .line 1015
    .end local v5           #childCount:I
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v14           #velocityX:I
    :pswitch_3
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mHideIndicator:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 874
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public open()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1308
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 1309
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->interrupt()V

    .line 1310
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->interrupt()V

    .line 1312
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v0, v8}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1314
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    div-int v1, v0, v1

    .line 1315
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    move v3, v8

    .line 1316
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1317
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 1318
    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/MenuItemView;->setVisibility(I)V

    .line 1319
    const/4 v4, 0x0

    const/high16 v5, 0x43b4

    div-int v6, v3, v1

    mul-int/lit8 v6, v6, 0x32

    int-to-long v6, v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->applyRotation(FFJ)V

    .line 1316
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundImage()V

    .line 1323
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1324
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1325
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1326
    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    .line 1327
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->drawBg(ZZ)V

    .line 1329
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v0

    .line 1330
    if-eqz v0, :cond_1

    .line 1331
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v1, :cond_2

    .line 1332
    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/TopFourZone;->setBackgroundResource(I)V

    .line 1336
    :cond_1
    :goto_1
    return-void

    .line 1334
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    goto :goto_1
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2744
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2745
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2746
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2747
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->findAppByComponent(Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    move-result v3

    .line 2748
    if-ltz v3, :cond_0

    .line 2749
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2745
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2751
    :cond_0
    const-string v3, "Launcher.MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t find a match for item \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2756
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_2

    .line 2757
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 2758
    :cond_2
    return-void
.end method

.method removeItem(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1988
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1989
    .local v1, count:I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1990
    .local v3, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1991
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1992
    .local v0, child:Landroid/view/View;
    if-ne v0, v3, :cond_1

    .line 1993
    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 1997
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void

    .line 1990
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 2272
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 2273
    .local v1, screen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v0

    .line 2274
    .local v0, currentScreen:I
    if-ne v1, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2275
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 2276
    const/4 v2, 0x1

    .line 2278
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method resume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 2357
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 2358
    .local v0, count:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 2359
    .local v1, screen:I
    if-le v0, v4, :cond_0

    .line 2360
    if-gez v1, :cond_3

    .line 2361
    sub-int v1, v0, v4

    .line 2362
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 2369
    :cond_0
    :goto_0
    const/4 v4, -0x1

    iput v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 2371
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    .line 2372
    .local v3, width:I
    if-eqz v3, :cond_2

    .line 2373
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    .line 2374
    .local v2, scroller:Landroid/widget/Scroller;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2375
    :cond_1
    mul-int v4, v1, v3

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 2377
    .end local v2           #scroller:Landroid/widget/Scroller;
    :cond_2
    return-void

    .line 2363
    .end local v3           #width:I
    :cond_3
    if-lt v1, v0, :cond_0

    .line 2364
    const/4 v1, 0x0

    .line 2365
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    goto :goto_0
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 2103
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2104
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 2111
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    .line 2115
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2117
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 2125
    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1611
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 1612
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_1

    .line 1613
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    .line 1614
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1616
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()V

    .line 1618
    :cond_1
    return-void
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2721
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2722
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->addApps(Ljava/util/ArrayList;)V

    .line 2723
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 2348
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 2349
    return-void
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 1560
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    .line 1561
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 1604
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1370
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v0, p1, :cond_2

    .line 1371
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    .line 1372
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1374
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 1376
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1377
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v0, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1378
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()V

    .line 1387
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->saveMenuMode(I)V

    .line 1389
    :cond_2
    return-void

    .line 1380
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v0, Lcom/sec/android/app/twlauncher/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1381
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_1

    .line 1384
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method shiftItem(Landroid/view/View;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2043
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 2045
    if-gt v0, p2, :cond_1

    .line 2046
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v0

    move-object v1, v0

    .line 2051
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2052
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 2053
    if-gez v2, :cond_4

    .line 2054
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    .line 2055
    if-nez v0, :cond_2

    .line 2077
    :cond_0
    return-void

    .line 2048
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    move-object v1, v0

    goto :goto_0

    .line 2056
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    move v5, v2

    move-object v2, v0

    move v0, v5

    .line 2058
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2059
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2060
    invoke-virtual {v1, v0, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    .line 2062
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    .line 2063
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-le v2, v0, :cond_3

    .line 2064
    const/4 v0, 0x1

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2065
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 2066
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Landroid/view/View;I)V

    :cond_3
    move v3, v4

    .line 2070
    :goto_2
    if-ge v3, v2, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-ge v3, v0, :cond_0

    .line 2071
    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2072
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2073
    const v4, 0xffff

    iput v4, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 2074
    iput p2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 2075
    iput v3, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 2070
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    move v5, v2

    move-object v2, v0

    move v0, v5

    goto :goto_1
.end method

.method snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    .line 1107
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(II)V

    .line 1108
    return-void
.end method

.method snapToScreen(II)V
    .locals 10
    .parameter "whichScreen"
    .parameter "duration"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1111
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    :goto_0
    return-void

    .line 1113
    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    sub-int/2addr v0, v4

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->enableChildrenCache(II)V

    .line 1115
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v7

    .line 1117
    .local v7, childCount:I
    const/4 v0, 0x2

    if-lt v7, v0, :cond_5

    .line 1118
    if-ltz p1, :cond_1

    if-ge p1, v7, :cond_1

    .line 1119
    sub-int v0, v7, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1125
    :cond_1
    :goto_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-eq p1, v0, :cond_6

    move v6, v4

    .line 1127
    .local v6, changingScreens:Z
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    .line 1128
    .local v8, focusedChild:Landroid/view/View;
    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v8, v0, :cond_2

    .line 1129
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    .line 1132
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v0

    mul-int v9, p1, v0

    .line 1133
    .local v9, newX:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    sub-int v3, v9, v0

    .line 1135
    .local v3, delta:I
    if-gez p1, :cond_7

    .line 1136
    sub-int p1, v7, v4

    .line 1141
    :cond_3
    :goto_3
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 1143
    if-gez p2, :cond_4

    .line 1144
    iget p2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    .line 1146
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1147
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1149
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    goto :goto_0

    .line 1122
    .end local v3           #delta:I
    .end local v6           #changingScreens:Z
    .end local v8           #focusedChild:Landroid/view/View;
    .end local v9           #newX:I
    :cond_5
    sub-int v0, v7, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_6
    move v6, v2

    .line 1125
    goto :goto_2

    .line 1137
    .restart local v3       #delta:I
    .restart local v6       #changingScreens:Z
    .restart local v8       #focusedChild:Landroid/view/View;
    .restart local v9       #newX:I
    :cond_7
    if-lt p1, v7, :cond_3

    .line 1138
    const/4 p1, 0x0

    goto :goto_3
.end method

.method public startUpdateDB()V
    .locals 4

    .prologue
    .line 2196
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    .line 2197
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2198
    return-void
.end method

.method public stopUpdateDB()V
    .locals 2

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    if-eqz v0, :cond_0

    .line 2191
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->cancel(Z)Z

    .line 2193
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 1400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLocked:Z

    .line 1401
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2782
    const-string v0, "welgate"

    const-string v1, "updateApps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->listsetApps(Ljava/util/ArrayList;)V

    .line 2787
    return-void
.end method

.method public updateDrawingCacheForApplicationBadgeCountChange(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1215
    .local p1, updatedApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v1

    .line 1217
    .local v1, badgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 1237
    :cond_0
    return-void

    .line 1220
    :cond_1
    const/4 v8, 0x0

    .local v8, page:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    .local v6, count:I
    :goto_0
    if-ge v8, v6, :cond_0

    .line 1221
    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1222
    .local v4, child:Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, cell:I
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .local v7, count2:I
    :goto_1
    if-ge v3, v7, :cond_3

    .line 1223
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1225
    .local v5, childchild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1226
    .local v0, ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v9, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v9}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/Intent;)I

    move-result v9

    iput v9, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    .line 1227
    iget-object v9, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeIcon(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1228
    .local v2, badgeIcon:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 1229
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1231
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->destroyDrawingCache()V

    .line 1232
    invoke-virtual {v5}, Landroid/view/View;->buildDrawingCache()V

    .line 1233
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 1222
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1220
    .end local v0           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #badgeIcon:Landroid/graphics/Bitmap;
    .end local v5           #childchild:Landroid/view/View;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method
