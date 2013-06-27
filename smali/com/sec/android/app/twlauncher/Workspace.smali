.class public Lcom/sec/android/app/twlauncher/Workspace;
.super Landroid/view/ViewGroup;
.source "Workspace.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragScroller;
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    }
.end annotation


# static fields
.field public static isScrollAble:Z


# instance fields
.field private LAUNCHER_LOOP_WORKSPACE:Z

.field private final LOOP_LEFT:I

.field private final LOOP_NONE:I

.field private final LOOP_RIGHT:I

.field private SNAP_VELOCITY:I

.field private mAllowLongPress:Z

.field private mAutoScrollRunnable:Ljava/lang/Runnable;

.field final mClipBounds:Landroid/graphics/Rect;

.field private mCurrentScreen:I

.field private mDefaultIMEIPosX:I

.field private mDefaultIMEIPosY:I

.field private mDefaultIMEIPosYGap:I

.field private mDefaultScreen:I

.field private final mDelayedShortcutDisplay:Z

.field private final mDimPaint:Landroid/graphics/Paint;

.field private mDownX:F

.field private mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field final mDrawerBounds:Landroid/graphics/Rect;

.field private mEnablePageIndicatorShowHide:Z

.field private mEndScreen:I

.field private mExistWidgetSpace:Z

.field private final mHideIndicator:Ljava/lang/Runnable;

.field private mIMEITextPaint:Landroid/graphics/Paint;

.field private mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

.field private mIgnoreRestore:Z

.field private mIsAutoScrolling:Z

.field private mIsSingleTap:Z

.field private mIsWallpaperLooping:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaximumVelocity:I

.field private mMovePinch:I

.field private mMovePinchStart:I

.field private mMultiTouchUsed:Z

.field private mNextScreen:I

.field private mOpenFlag:Z

.field private mOrientation:I

.field private mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

.field private mPageIndicatorGap:I

.field private mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorLeft:I

.field private mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorOffsetY:I

.field private mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorTop:I

.field private mScrollDirection:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSnapToScreenDuration:I

.field private mSnaptoScreenStartTime:J

.field private mStartScreen:I

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempEstimate:[I

.field private mTextSize:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchedPageIndicatorIndex:I

.field private mUseLargeDrawablesOnlyForPageIndicator:Z

.field private mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWallpaperLooingState:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/twlauncher/Workspace;->isScrollAble:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 252
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    const/16 v1, 0xc8

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->SNAP_VELOCITY:I

    .line 99
    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    .line 107
    const/16 v1, 0x190

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    .line 116
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 128
    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 139
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 141
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempCell:[I

    .line 142
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    .line 145
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    .line 151
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDrawerBounds:Landroid/graphics/Rect;

    .line 152
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mClipBounds:Landroid/graphics/Rect;

    .line 177
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    .line 184
    new-instance v1, Lcom/sec/android/app/twlauncher/Workspace$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Workspace$1;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideIndicator:Ljava/lang/Runnable;

    .line 195
    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    .line 196
    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 197
    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    .line 222
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    .line 223
    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->LOOP_NONE:I

    .line 224
    iput v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->LOOP_LEFT:I

    .line 225
    iput v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->LOOP_RIGHT:I

    .line 228
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 229
    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    .line 727
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDimPaint:Landroid/graphics/Paint;

    .line 728
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    .line 2465
    new-instance v1, Lcom/sec/android/app/twlauncher/Workspace$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Workspace$3;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    .line 254
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 255
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->pageIndicator_getUseLargeDrawablesOnly(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mUseLargeDrawablesOnlyForPageIndicator:Z

    .line 257
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 259
    .local v0, a:Landroid/content/res/TypedArray;
    const-string v1, "ro.csc.homescreen.defaultscreen"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    .line 261
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDelayedShortcutDisplay:Z

    .line 262
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->initWorkspace()V

    .line 265
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/PageIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$508(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$510(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/twlauncher/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    return p1
.end method

.method static synthetic access$702(Lcom/sec/android/app/twlauncher/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    return p1
.end method

.method private clearVacantCache()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->clearVacantCells()V

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 607
    :cond_0
    return-void
.end method

.method private drawDefaultIMEIText(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 915
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 916
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 918
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mHwVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 919
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mBootVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 920
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mPdaVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 921
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mPhoneVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 923
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 924
    return-void
.end method

.method private drawPageIndicator(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 963
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v2

    .line 964
    .local v2, updatedScreen:I
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 965
    .local v0, indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    if-nez v0, :cond_1

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mUseLargeDrawablesOnlyForPageIndicator:Z

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->setCurrentPage(IZ)V

    .line 968
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLeft:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorTop:I

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setOffset(II)V

    .line 970
    sget-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v3, :cond_2

    .line 971
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorOffsetY:I

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->setOffsetY(I)V

    .line 974
    :cond_2
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/PageIndicator;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    .line 975
    .local v1, redraw:Z
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    goto :goto_0
.end method

.method private estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I
    .locals 7
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "layout"
    .parameter "recycle"

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v0, :cond_0

    .line 1968
    const/4 v0, 0x0

    invoke-virtual {p6, v0, p5}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1972
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v0, p6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/CellLayout;->findNearestVacantArea(IIIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;[I)[I

    move-result-object v0

    return-object v0
.end method

.method private getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;
    .locals 2

    .prologue
    .line 1907
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v0, v1

    .line 1908
    .local v0, index:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/CellLayout;

    return-object p0

    .line 1907
    .end local v0           #index:I
    .restart local p0
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    move v0, v1

    goto :goto_0
.end method

.method private getWhichScreen()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1598
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    .line 1599
    .local v2, screenWidth:I
    const/4 v4, 0x0

    .line 1600
    .local v4, whichScreen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 1601
    .local v1, count:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    .line 1604
    .local v3, scrollX:I
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    if-lt v1, v5, :cond_1

    .line 1605
    if-gez v3, :cond_0

    .line 1606
    div-int/lit8 v5, v2, 0x2

    sub-int v5, v3, v5

    div-int v4, v5, v2

    .line 1624
    :goto_0
    return v4

    .line 1608
    :cond_0
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v3

    div-int v4, v5, v2

    goto :goto_0

    .line 1613
    :cond_1
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v6

    sub-int v0, v5, v6

    .line 1615
    .local v0, availableToScroll:I
    if-gez v3, :cond_2

    .line 1616
    const/4 v4, 0x0

    goto :goto_0

    .line 1617
    :cond_2
    if-gtz v0, :cond_3

    .line 1618
    sub-int v4, v1, v7

    goto :goto_0

    .line 1620
    :cond_3
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v3

    div-int v4, v5, v2

    goto :goto_0
.end method

.method private initPageIndicator()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 931
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v4, :cond_0

    .line 932
    new-instance v4, Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-direct {v4}, Lcom/sec/android/app/twlauncher/PageIndicator;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 935
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    .line 936
    .local v3, pageCount:I
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 938
    .local v2, indicatorWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 939
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    const/16 v5, 0xcd

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 940
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    const/16 v5, 0x99

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 944
    .local v0, indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 945
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageDrawableSmall(Landroid/graphics/drawable/Drawable;)V

    .line 946
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageCount(I)V

    .line 947
    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorGap:I

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setGap(I)V

    .line 948
    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTextSize:I

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setTextSize(I)V

    .line 949
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEnablePageIndicatorShowHide:Z

    if-eqz v4, :cond_4

    .line 950
    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    .line 955
    :goto_0
    sget-boolean v4, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v4, :cond_2

    .line 956
    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOrientation:I

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->setOrientation(I)V

    .line 958
    :cond_2
    mul-int v4, v2, v3

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorGap:I

    if-lez v3, :cond_3

    sub-int v6, v3, v7

    :cond_3
    mul-int/2addr v5, v6

    add-int v1, v4, v5

    .line 959
    .local v1, indicatorTotalWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLeft:I

    .line 960
    return-void

    .line 952
    .end local v1           #indicatorTotalWidth:I
    :cond_4
    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    goto :goto_0
.end method

.method private initWorkspace()V
    .locals 8

    .prologue
    const v5, 0x7f020057

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 271
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    .line 272
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 273
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 275
    .local v0, app:Lcom/sec/android/app/twlauncher/LauncherApplication;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getIconCache()Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 278
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchSlop:I

    .line 279
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMaximumVelocity:I

    .line 280
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->SNAP_VELOCITY:I

    .line 282
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 283
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f020041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    .line 284
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOrientation:I

    .line 286
    sget-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v3, :cond_0

    .line 287
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    .line 288
    const v3, 0x7f02004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    .line 289
    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorGap:I

    .line 290
    const v3, 0x7f090032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorOffsetY:I

    .line 291
    const v3, 0x7f090035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorTop:I

    .line 301
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 302
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 303
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 305
    const v3, 0x7f09001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTextSize:I

    .line 307
    const v3, 0x7f080002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEnablePageIndicatorShowHide:Z

    .line 308
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    .line 309
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDimPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const v5, 0x7f07000e

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 311
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v7, :cond_1

    .line 312
    const/16 v3, 0x190

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    .line 322
    :goto_1
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    .line 323
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 324
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 325
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 326
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    return-void

    .line 293
    :cond_0
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    .line 294
    const v3, 0x7f020032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    .line 295
    const v3, 0x7f09001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorGap:I

    .line 296
    const v3, 0x7f09001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicatorTop:I

    goto/16 :goto_0

    .line 314
    :cond_1
    const/16 v3, 0x258

    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    goto :goto_1
.end method

.method private onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "dragInfo"
    .parameter "cellLayout"

    .prologue
    .line 1831
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V

    .line 1832
    return-void
.end method

.method private onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1836
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v12

    .line 1837
    if-eqz v12, :cond_1

    const/4 v4, 0x1

    move v13, v4

    .line 1838
    :goto_0
    const/4 v4, 0x0

    .line 1839
    if-eqz v13, :cond_2

    .line 1840
    instance-of v5, v12, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v5, :cond_2

    .line 1841
    move-object v0, v12

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolder;

    move-object v4, v0

    .line 1842
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/sec/android/app/twlauncher/UserFolder;->onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 1900
    :cond_0
    :goto_1
    return-void

    .line 1837
    :cond_1
    const/4 v4, 0x0

    move v13, v4

    goto :goto_0

    .line 1848
    :cond_2
    check-cast p4, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1852
    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    .line 1877
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown item type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1855
    :pswitch_0
    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move-wide v5, v0

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_9

    move-object/from16 v0, p4

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move v5, v0

    if-eqz v5, :cond_9

    .line 1857
    new-instance v4, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    check-cast p4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v0, v4

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/ShortcutInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 1858
    const/4 v5, 0x1

    .line 1860
    :goto_2
    const-string v6, "WIN"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1861
    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object/from16 p4, v0

    .line 1862
    if-eqz v5, :cond_4

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.stk.StkLauncherActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object v5, v0

    if-eqz v5, :cond_3

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object v5, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 1865
    :cond_3
    const-string v5, "Toolkit SIM"

    move-object v0, v5

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1867
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const v6, 0x7f030001

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;

    move-result-object v5

    move-object v9, v5

    move-object/from16 p4, v4

    .line 1880
    :goto_3
    if-eqz p6, :cond_7

    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p5

    move-object v1, v9

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;I)V

    .line 1881
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v9, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1882
    const/4 v7, 0x1

    const/4 v8, 0x1

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v4, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 1883
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    if-eqz v4, :cond_0

    .line 1884
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object/from16 v0, p5

    move-object v1, v9

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 1885
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 1887
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v4

    if-nez v4, :cond_8

    .line 1889
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v0, p4

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object p1, v0

    invoke-virtual {v4, p1}, Lcom/sec/android/app/twlauncher/Launcher;->addShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    .line 1896
    :cond_5
    :goto_5
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-wide/16 v6, -0x64

    iget v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    move v9, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    move v10, v0

    move-object/from16 v5, p4

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    .line 1899
    if-eqz v13, :cond_0

    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    goto/16 :goto_1

    .line 1869
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const v7, 0x7f030001

    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v5, v0

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, p5

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;

    move-result-object v5

    move-object v9, v5

    move-object/from16 p4, v4

    .line 1871
    goto :goto_3

    .line 1873
    :pswitch_1
    const v6, 0x7f03000a

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v0, p4

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v5, v0

    invoke-static {v6, v7, v4, v5}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v4

    move-object v9, v4

    .line 1875
    goto/16 :goto_3

    .line 1880
    :cond_7
    const/4 v4, -0x1

    goto/16 :goto_4

    .line 1891
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v4

    if-eq p1, v4, :cond_5

    .line 1892
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v0, p4

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object/from16 p5, v0

    move-object v0, v4

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->addShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_5

    :cond_9
    move v5, v4

    move-object/from16 v4, p4

    goto/16 :goto_2

    .line 1852
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private snapToDestination()V
    .locals 1

    .prologue
    .line 1628
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1629
    return-void
.end method

.method private updateWallpaperOffset(I)V
    .locals 11
    .parameter "scrollRange"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 630
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v9

    int-to-float v6, v6

    div-float v5, v10, v6

    .line 631
    .local v5, xStep:F
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    cmpl-float v7, v5, v8

    if-nez v7, :cond_2

    move v7, v10

    :goto_0
    invoke-virtual {v6, v7, v8}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 633
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 634
    .local v1, count:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    .line 635
    .local v3, scrollX:I
    sub-int v6, v1, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v7

    mul-int/2addr v6, v7

    sub-int v0, v6, v3

    .line 637
    .local v0, availableToScroll:I
    if-gez v3, :cond_3

    .line 638
    const/4 v3, 0x0

    .line 643
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 645
    .local v4, token:Landroid/os/IBinder;
    if-eqz v4, :cond_1

    .line 646
    if-nez p1, :cond_4

    .line 647
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v7, 0x3f00

    invoke-virtual {v6, v4, v7, v8}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 657
    :cond_1
    :goto_2
    return-void

    .end local v0           #availableToScroll:I
    .end local v1           #count:I
    .end local v3           #scrollX:I
    .end local v4           #token:Landroid/os/IBinder;
    :cond_2
    move v7, v5

    .line 631
    goto :goto_0

    .line 639
    .restart local v0       #availableToScroll:I
    .restart local v1       #count:I
    .restart local v3       #scrollX:I
    :cond_3
    if-gtz v0, :cond_0

    .line 640
    sub-int v6, v1, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v7

    mul-int v3, v6, v7

    goto :goto_1

    .line 649
    .restart local v4       #token:Landroid/os/IBinder;
    :cond_4
    int-to-float v6, v3

    int-to-float v7, p1

    div-float v2, v6, v7

    .line 654
    .local v2, offset:F
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6, v4, v2, v8}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    goto :goto_2
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1916
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 1917
    .local v2, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1918
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-nez v0, :cond_1

    move v3, v6

    .line 1919
    .local v3, spanX:I
    :goto_0
    if-nez v0, :cond_2

    move v4, v6

    .line 1921
    .local v4, spanY:I
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v5, :cond_0

    .line 1922
    if-nez v0, :cond_3

    move-object v1, v7

    .line 1923
    .local v1, ignoreView:Landroid/view/View;
    :goto_2
    invoke-virtual {v2, v7, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1926
    .end local v1           #ignoreView:Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v4, v7}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v5

    return v5

    .line 1918
    .end local v3           #spanX:I
    .end local v4           #spanY:I
    :cond_1
    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    move v3, v5

    goto :goto_0

    .line 1919
    .restart local v3       #spanX:I
    :cond_2
    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    move v4, v5

    goto :goto_1

    .line 1922
    .restart local v4       #spanY:I
    :cond_3
    iget-object v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v1, v5

    goto :goto_2
.end method

.method addApplicationShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .locals 8
    .parameter "info"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 1743
    iget v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1744
    .local v5, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 1746
    .local v7, result:[I
    iget v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v1, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v5, v0, v1, v7}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 1747
    const/4 v1, 0x0

    const/4 v0, 0x0

    aget v2, v7, v0

    const/4 v0, 0x1

    aget v3, v7, v0

    move-object v0, p0

    move-object v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V

    .line 1748
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

    .line 1108
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1109
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 1110
    .local v0, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-nez v0, :cond_2

    .line 1111
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1112
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    .line 1113
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-lez v1, :cond_0

    .line 1114
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1125
    .end local v0           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_0
    :goto_0
    return-void

    .line 1116
    .restart local v0       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 1117
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 1118
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 1122
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method addInCurrentScreen(Landroid/view/View;IIII)V
    .locals 8
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 491
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 492
    return-void
.end method

.method addInCurrentScreen(Landroid/view/View;IIIIZ)V
    .locals 8
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 506
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 507
    return-void
.end method

.method addInScreen(Landroid/view/View;IIIII)V
    .locals 8
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 521
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 522
    return-void
.end method

.method addInScreen(Landroid/view/View;IIIIIZ)V
    .locals 6
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 537
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    if-lt p2, v3, :cond_1

    .line 538
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The screen must be >= 0 and < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  screen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 541
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 543
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 544
    .local v1, group:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v2, 0x0

    .line 545
    .local v2, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    if-eqz v3, :cond_2

    .line 546
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 549
    .restart local v2       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_2
    if-nez v2, :cond_5

    .line 550
    new-instance v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .end local v2           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    invoke-direct {v2, p3, p4, p5, p6}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;-><init>(IIII)V

    .line 557
    .restart local v2       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :goto_0
    if-eqz p7, :cond_6

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, p1, v3, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 558
    instance-of v3, p1, Lcom/sec/android/app/twlauncher/Folder;

    if-nez v3, :cond_3

    .line 559
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 562
    :cond_3
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder(I)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 563
    .local v0, folder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    .line 564
    :cond_4
    return-void

    .line 552
    .end local v0           #folder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_5
    iput p3, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    .line 553
    iput p4, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    .line 554
    iput p5, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    .line 555
    iput p6, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_0

    .line 557
    :cond_6
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 358
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 362
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 366
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 370
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 374
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 378
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 350
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 354
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 382
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    return-void
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 2092
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    return v0
.end method

.method clearChildrenCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1368
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 1369
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1370
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1371
    .local v2, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1369
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1374
    .end local v2           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v3

    .line 1375
    .local v3, tfz:Lcom/sec/android/app/twlauncher/TopFourZone;
    if-eqz v3, :cond_1

    .line 1376
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->setDrawingCacheEnabled(Z)V

    .line 1378
    :cond_1
    return-void
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 661
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 662
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    .line 663
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollY:I

    .line 666
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 667
    .local v0, count:I
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v1, :cond_0

    if-lt v0, v3, :cond_0

    .line 668
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_3

    .line 669
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    .line 676
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v1

    if-nez v1, :cond_1

    .line 677
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    .line 679
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    .line 720
    .end local v0           #count:I
    :cond_2
    :goto_1
    return-void

    .line 670
    .restart local v0       #count:I
    :cond_3
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    sub-int v2, v0, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 671
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    goto :goto_0

    .line 680
    .end local v0           #count:I
    :cond_4
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    if-eq v1, v6, :cond_2

    .line 681
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 682
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 683
    .restart local v0       #count:I
    if-lt v0, v3, :cond_7

    .line 684
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 686
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v1, :cond_7

    if-lt v0, v3, :cond_7

    .line 687
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-gez v1, :cond_9

    .line 688
    sub-int v1, v0, v4

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 692
    :cond_5
    :goto_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    if-ltz v1, :cond_6

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    sub-int v2, v0, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    if-le v1, v2, :cond_7

    .line 693
    :cond_6
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    rem-int/2addr v1, v2

    if-nez v1, :cond_7

    .line 694
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0, v1, v5}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 700
    :cond_7
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 701
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 702
    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    .line 703
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearChildrenCache()V

    .line 704
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-eq v1, v4, :cond_b

    .line 705
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 706
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->checkWidgetSpace(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    .line 716
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    goto/16 :goto_1

    .line 689
    :cond_9
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-lt v1, v0, :cond_5

    .line 690
    iput v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    goto :goto_2

    .line 708
    :cond_a
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_3

    .line 711
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    if-eqz v1, :cond_8

    .line 712
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->checkWidgetSpace(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 807
    const/4 v8, 0x0

    .line 811
    .local v8, restore:Z
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDelayedShortcutDisplay:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/MenuManager;->isClosing()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 813
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    goto :goto_0

    .line 818
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 819
    .local v0, childCount:I
    if-lez v0, :cond_0

    .line 822
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v9

    if-gez v9, :cond_0

    .line 830
    const/4 v9, 0x1

    sub-int v9, v0, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v10

    mul-int v7, v9, v10

    .line 831
    .local v7, maxScrollX:I
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v9, :cond_3

    .line 832
    const/4 v9, 0x1

    if-le v0, v9, :cond_3

    .line 833
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-gez v9, :cond_a

    .line 834
    const/4 v9, 0x1

    sub-int v9, v0, v9

    iput v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 842
    :cond_3
    :goto_1
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEnablePageIndicatorShowHide:Z

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_6

    .line 843
    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/PageIndicator;->show(Z)V

    .line 844
    :cond_5
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideIndicator:Ljava/lang/Runnable;

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 845
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    .line 846
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHideIndicator:Ljava/lang/Runnable;

    const-wide/16 v10, 0x3e8

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 851
    :cond_6
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_b

    const/4 v9, 0x1

    move v5, v9

    .line 853
    .local v5, fastDraw:Z
    :goto_2
    if-eqz v5, :cond_c

    .line 854
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getDrawingTime()J

    move-result-wide v10

    invoke-virtual {p0, p1, v9, v10, v11}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 900
    :cond_7
    :goto_3
    sget-boolean v9, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-nez v9, :cond_8

    .line 901
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawPageIndicator(Landroid/graphics/Canvas;)V

    .line 904
    :cond_8
    sget-boolean v9, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMEI:Z

    if-eqz v9, :cond_9

    .line 905
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawDefaultIMEIText(Landroid/graphics/Canvas;)V

    .line 908
    :cond_9
    if-eqz v8, :cond_0

    .line 909
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 835
    .end local v5           #fastDraw:Z
    :cond_a
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-lt v9, v0, :cond_3

    .line 836
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    goto :goto_1

    .line 851
    :cond_b
    const/4 v9, 0x0

    move v5, v9

    goto :goto_2

    .line 856
    .restart local v5       #fastDraw:Z
    :cond_c
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    iget v10, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    sub-int v2, v9, v10

    .line 857
    .local v2, diff:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getDrawingTime()J

    move-result-wide v3

    .line 859
    .local v3, drawingTime:J
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    if-ltz v9, :cond_11

    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    if-ge v9, v0, :cond_11

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_d

    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v9, :cond_11

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x1

    sub-int v10, v0, v10

    if-ne v9, v10, :cond_11

    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    if-ltz v9, :cond_d

    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    if-le v9, v7, :cond_11

    .line 864
    :cond_d
    if-lez v2, :cond_10

    .line 865
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    const/4 v10, 0x1

    sub-int v10, v0, v10

    if-ge v9, v10, :cond_e

    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, p1, v9, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 869
    :cond_e
    :goto_4
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, p1, v9, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 870
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, p1, v9, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 880
    :cond_f
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v9, :cond_7

    const/4 v9, 0x2

    if-lt v0, v9, :cond_7

    .line 881
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    if-gez v9, :cond_12

    .line 882
    neg-int v9, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v10

    mul-int/2addr v9, v10

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 883
    const/4 v9, 0x1

    sub-int v9, v0, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, p1, v9, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 884
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v9

    mul-int/2addr v9, v0

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_3

    .line 867
    :cond_10
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-lez v9, :cond_e

    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, p1, v9, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_4

    .line 873
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 874
    .local v1, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_5
    if-ge v6, v1, :cond_f

    .line 875
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, p1, v9, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 874
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 885
    .end local v1           #count:I
    .end local v6           #i:I
    :cond_12
    iget v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    if-le v9, v7, :cond_7

    .line 886
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v9

    mul-int/2addr v9, v0

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 887
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, p1, v9, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 888
    neg-int v9, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v10

    mul-int/2addr v9, v10

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_3
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 1088
    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 1089
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    if-lez v0, :cond_1

    .line 1091
    sput-boolean v2, Lcom/sec/android/app/twlauncher/Workspace;->isScrollAble:Z

    .line 1092
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1093
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/twlauncher/Workspace;->isScrollAble:Z

    move v0, v2

    .line 1103
    :goto_0
    return v0

    .line 1097
    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 1098
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 1099
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    move v0, v2

    .line 1100
    goto :goto_0

    .line 1103
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method drawPageIndicatorExternal(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 979
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v1, :cond_0

    .line 980
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v1

    if-ltz v1, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 988
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 989
    .local v0, save:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 991
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawPageIndicator(Landroid/graphics/Canvas;)V

    .line 993
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public drawWallpaperImage(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 17
    .parameter "canvas"
    .parameter "drawDst"

    .prologue
    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    move v12, v13

    .line 735
    .local v12, wallpaperDrawableWidth:I
    :goto_0
    const/4 v4, 0x0

    .line 740
    .local v4, d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 743
    if-eqz v4, :cond_8

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    move-object v13, v0

    const/4 v14, 0x0

    iput v14, v13, Landroid/graphics/Rect;->left:I

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    move-object v13, v0

    iput v12, v13, Landroid/graphics/Rect;->right:I

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    move-object v13, v0

    invoke-virtual {v4, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    mul-int v9, v13, v14

    .line 751
    .local v9, scrollXMax:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move v8, v0

    .line 752
    .local v8, scrollX:I
    if-gez v8, :cond_0

    const/4 v8, 0x0

    .line 753
    :cond_0
    if-le v8, v9, :cond_1

    move v8, v9

    .line 755
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 756
    .local v7, savedCanvas:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int v10, v12, v13

    .line 757
    .local v10, scrollableWidth:I
    const/4 v11, 0x0

    .line 758
    .local v11, translateX:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_2

    .line 759
    neg-int v13, v10

    int-to-float v13, v13

    int-to-float v14, v8

    int-to-float v15, v9

    div-float/2addr v14, v15

    mul-float v11, v13, v14

    .line 763
    :cond_2
    const/4 v5, 0x0

    .line 764
    .local v5, fillOuterSpace:Z
    if-gtz v10, :cond_3

    .line 766
    const/4 v5, 0x1

    .line 767
    int-to-float v13, v10

    const/high16 v14, -0x4100

    mul-float v11, v13, v14

    .line 769
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-ge v13, v14, :cond_4

    .line 770
    const/4 v5, 0x1

    .line 772
    :cond_4
    if-eqz v5, :cond_5

    .line 773
    const/high16 v13, -0x100

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 778
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    move v13, v0

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    move v13, v0

    if-eqz v13, :cond_7

    .line 779
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mSnaptoScreenStartTime:J

    move-wide v15, v0

    sub-long/2addr v13, v15

    long-to-int v3, v13

    .line 780
    .local v3, current:I
    int-to-float v13, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    move v14, v0

    int-to-float v14, v14

    div-float/2addr v13, v14

    const/high16 v14, 0x4000

    mul-float v6, v13, v14

    .line 781
    .local v6, progress:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    move v13, v0

    const/4 v14, 0x2

    if-ne v13, v14, :cond_a

    .line 782
    const/high16 v13, 0x3f80

    cmpl-float v13, v6, v13

    if-lez v13, :cond_6

    .line 783
    const/high16 v6, 0x3f80

    .line 784
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 785
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    .line 787
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v6

    neg-float v11, v13

    .line 799
    .end local v3           #current:I
    .end local v6           #progress:F
    :cond_7
    :goto_1
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move v1, v11

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 800
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 801
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 803
    .end local v5           #fillOuterSpace:Z
    .end local v7           #savedCanvas:I
    .end local v8           #scrollX:I
    .end local v9           #scrollXMax:I
    .end local v10           #scrollableWidth:I
    .end local v11           #translateX:F
    :cond_8
    return-void

    .line 732
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    .end local v12           #wallpaperDrawableWidth:I
    :cond_9
    const/4 v13, 0x1

    move v12, v13

    goto/16 :goto_0

    .line 788
    .restart local v3       #current:I
    .restart local v4       #d:Landroid/graphics/drawable/Drawable;
    .restart local v5       #fillOuterSpace:Z
    .restart local v6       #progress:F
    .restart local v7       #savedCanvas:I
    .restart local v8       #scrollX:I
    .restart local v9       #scrollXMax:I
    .restart local v10       #scrollableWidth:I
    .restart local v11       #translateX:F
    .restart local v12       #wallpaperDrawableWidth:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    move v13, v0

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 789
    const/high16 v13, 0x3f80

    cmpl-float v13, v6, v13

    if-lez v13, :cond_b

    .line 790
    const/high16 v6, 0x3f80

    .line 791
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 792
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    .line 794
    :cond_b
    const/high16 v13, 0x3f80

    sub-float/2addr v13, v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    neg-float v11, v13

    goto :goto_1
.end method

.method enableChildrenCache(II)V
    .locals 6
    .parameter "fromScreen"
    .parameter "toScreen"

    .prologue
    const/4 v5, 0x1

    .line 1344
    if-le p1, p2, :cond_0

    .line 1345
    move p1, p2

    .line 1346
    move p2, p1

    .line 1349
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 1351
    .local v0, count:I
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1352
    sub-int v4, v0, v5

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1354
    move v1, p1

    .local v1, i:I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 1355
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1356
    .local v2, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1357
    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1360
    .end local v2           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v3

    .line 1361
    .local v3, tfz:Lcom/sec/android/app/twlauncher/TopFourZone;
    if-eqz v3, :cond_2

    .line 1362
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->setDrawingCacheEnabled(Z)V

    .line 1363
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->buildDrawingCache(Z)V

    .line 1365
    :cond_2
    return-void
.end method

.method findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 3
    .parameter "occupied"

    .prologue
    const/4 v2, 0x0

    .line 583
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 584
    .local v0, group:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v1

    .line 587
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method getCurrentScreen()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    return v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/Folder;
    .locals 11
    .parameter "tag"

    .prologue
    .line 2055
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v8

    .line 2056
    .local v8, screenCount:I
    const/4 v7, 0x0

    .local v7, screen:I
    :goto_0
    if-ge v7, v8, :cond_2

    .line 2057
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2058
    .local v3, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 2059
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 2060
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2061
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 2062
    .local v6, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v9, v6, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getShortAxisCells()I

    move-result v10

    if-ne v9, v10, :cond_0

    iget v9, v6, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getLongAxisCells()I

    move-result v10

    if-ne v9, v10, :cond_0

    instance-of v9, v1, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v9, :cond_0

    .line 2063
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    move-object v4, v0

    .line 2064
    .local v4, f:Lcom/sec/android/app/twlauncher/Folder;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Folder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v9

    if-ne v9, p1, :cond_0

    move-object v9, v4

    .line 2070
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #f:Lcom/sec/android/app/twlauncher/Folder;
    .end local v5           #i:I
    .end local v6           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :goto_2
    return-object v9

    .line 2059
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v3       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v5       #i:I
    .restart local v6       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2056
    .end local v1           #child:Landroid/view/View;
    .end local v6           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2070
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #i:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 406
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v4, v6

    .line 407
    .local v4, index:I
    :goto_0
    const/4 v2, 0x0

    .line 408
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 409
    iget v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 413
    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    :goto_1
    if-nez v2, :cond_2

    move-object v6, v8

    .line 422
    :goto_2
    return-object v6

    .line 406
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #index:I
    :cond_0
    iget v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    move v4, v6

    goto :goto_0

    .line 411
    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v4       #index:I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    goto :goto_1

    .line 414
    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 415
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 416
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 417
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 418
    .local v5, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v6, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getShortAxisCells()I

    move-result v7

    if-ne v6, v7, :cond_3

    iget v6, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getLongAxisCells()I

    move-result v7

    if-ne v6, v7, :cond_3

    instance-of v6, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v6, :cond_3

    .line 419
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #child:Landroid/view/View;
    move-object v6, v0

    goto :goto_2

    .line 415
    .restart local v0       #child:Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0           #child:Landroid/view/View;
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_4
    move-object v6, v8

    .line 422
    goto :goto_2
.end method

.method getOpenFolder(I)Lcom/sec/android/app/twlauncher/Folder;
    .locals 8
    .parameter "screen"

    .prologue
    const/4 v7, 0x0

    .line 389
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 390
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v2, :cond_0

    move-object v5, v7

    .line 399
    :goto_0
    return-object v5

    .line 391
    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 392
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 393
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 394
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 395
    .local v4, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v5, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getShortAxisCells()I

    move-result v6

    if-ne v5, v6, :cond_1

    iget v5, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getLongAxisCells()I

    move-result v6

    if-ne v5, v6, :cond_1

    instance-of v5, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v5, :cond_1

    .line 396
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #child:Landroid/view/View;
    move-object v5, v0

    goto :goto_0

    .line 392
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_2
    move-object v5, v7

    .line 399
    goto :goto_0
.end method

.method getOpenFolders()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    .line 427
    .local v7, screens:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 429
    .local v3, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/Folder;>;"
    const/4 v6, 0x0

    .local v6, screen:I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 430
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 431
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 432
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 433
    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 434
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 435
    .local v5, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v8, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getShortAxisCells()I

    move-result v9

    if-ne v8, v9, :cond_1

    iget v8, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getLongAxisCells()I

    move-result v9

    if-ne v8, v9, :cond_1

    instance-of v8, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v8, :cond_1

    .line 436
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 432
    .restart local v0       #child:Landroid/view/View;
    .restart local v5       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 442
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #i:I
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_2
    return-object v3
.end method

.method getPageIndicatorArea(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2416
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/PageIndicator;->getPageTouchArea(II)I

    move-result v0

    goto :goto_0
.end method

.method public getScreenForView(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 2041
    const/4 v2, -0x1

    .line 2042
    .local v2, result:I
    if-eqz p1, :cond_1

    .line 2043
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 2044
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 2045
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2046
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move v4, v1

    .line 2051
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_1
    return v4

    .line 2045
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #vp:Landroid/view/ViewParent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :cond_1
    move v4, v2

    .line 2051
    goto :goto_1
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 7
    .parameter "tag"

    .prologue
    .line 2074
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    .line 2075
    .local v5, screenCount:I
    const/4 v4, 0x0

    .local v4, screen:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 2076
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2077
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 2078
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 2079
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2080
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_0

    move-object v6, v0

    .line 2085
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v3           #i:I
    :goto_2
    return-object v6

    .line 2078
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v3       #i:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2075
    .end local v0           #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2085
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v3           #i:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method initAddWidget()V
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    .line 928
    return-void
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x0

    return v0
.end method

.method moveToDefaultScreen()V
    .locals 4

    .prologue
    .line 2367
    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    .line 2368
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnapToScreenDuration:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(II)V

    .line 2369
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2370
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
    .line 1805
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1809
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
    .line 1820
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1828
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1816
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 1755
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v5

    .line 1756
    if-eq p1, p0, :cond_3

    .line 1757
    sub-int v2, p2, p4

    sub-int v3, p3, p5

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;)V

    .line 1799
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v0, :cond_2

    .line 1800
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 1801
    :cond_2
    return-void

    .line 1760
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_1

    .line 1761
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1762
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move v4, v0

    .line 1763
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    if-eq v4, v0, :cond_6

    .line 1764
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1765
    invoke-virtual {p1, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->removeView(Landroid/view/View;)V

    .line 1768
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1769
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrop()  both cell and cell parent are NULL : originalCellLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v2, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cell.getParent()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1772
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1773
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrop() cell screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1778
    :cond_5
    invoke-virtual {v5, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;)V

    .line 1780
    :cond_6
    sub-int v7, p2, p4

    sub-int v8, p3, p5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v9, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v10, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    iget-object v13, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v6, p0

    move-object v12, v5

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 1782
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    if-eqz v0, :cond_2

    .line 1783
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    invoke-virtual {v5, v11, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 1785
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1786
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 1787
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-wide/16 v2, -0x64

    iget v5, p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iget v6, p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    .line 1790
    instance-of v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v0, :cond_7

    .line 1791
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 1794
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 1795
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    goto/16 :goto_0

    .line 1762
    :cond_8
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    move v4, v0

    goto/16 :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;ZLjava/lang/Object;)V
    .locals 3
    .parameter "target"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    .line 1985
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1987
    if-eqz p2, :cond_1

    .line 1988
    if-eq p1, p0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v2, :cond_0

    .line 1989
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v2, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1990
    .local v1, cellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1994
    .local v0, cell:Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->removeView(Landroid/view/View;)V

    .line 2003
    .end local v0           #cell:Landroid/view/View;
    .end local v1           #cellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2004
    return-void

    .line 1997
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v2, :cond_0

    .line 1998
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v2, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1999
    .restart local v1       #cellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropAborted(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x64

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1130
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    .line 1131
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAllAppsVisible()Z

    move-result v1

    .line 1132
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v0, v5

    .line 1340
    :goto_0
    return v0

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 1148
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1150
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1153
    if-ne v0, v6, :cond_4

    .line 1154
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-ne v1, v7, :cond_3

    move v0, v7

    .line 1155
    goto :goto_0

    .line 1156
    :cond_3
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-ne v1, v6, :cond_4

    move v0, v5

    .line 1157
    goto :goto_0

    .line 1161
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1165
    sparse-switch v0, :sswitch_data_0

    .line 1340
    :cond_5
    :goto_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-ne v0, v7, :cond_15

    move v0, v7

    goto :goto_0

    .line 1167
    :sswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    if-eqz v0, :cond_9

    .line 1168
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v0, :cond_6

    .line 1169
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1173
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1174
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1176
    :cond_6
    iput v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1178
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 1179
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 1180
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    .line 1181
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    .line 1183
    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinchStart:I

    sub-int v6, v0, v2

    sub-int/2addr v0, v2

    mul-int/2addr v0, v6

    sub-int v2, v1, v3

    sub-int/2addr v1, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-int v0, v4, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinch:I

    .line 1185
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v0

    if-ltz v0, :cond_8

    :cond_7
    move v0, v5

    goto/16 :goto_0

    .line 1187
    :cond_8
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinch:I

    if-le v0, v8, :cond_5

    .line 1188
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    .line 1189
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    .line 1190
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    move v0, v7

    .line 1191
    goto/16 :goto_0

    .line 1210
    :cond_9
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDownX:F

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 1214
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 1216
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchSlop:I

    .line 1217
    if-le v0, v3, :cond_b

    move v4, v7

    .line 1218
    :goto_2
    if-le v2, v3, :cond_c

    move v3, v7

    .line 1220
    :goto_3
    if-nez v4, :cond_a

    if-eqz v3, :cond_f

    .line 1222
    :cond_a
    if-ge v0, v2, :cond_d

    if-eqz v3, :cond_d

    .line 1223
    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1235
    :goto_4
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v0, :cond_5

    .line 1236
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1240
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1241
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    goto/16 :goto_1

    :cond_b
    move v4, v5

    .line 1217
    goto :goto_2

    :cond_c
    move v3, v5

    .line 1218
    goto :goto_3

    .line 1224
    :cond_d
    if-eqz v4, :cond_e

    .line 1226
    iput v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1227
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    sub-int/2addr v0, v7

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->enableChildrenCache(II)V

    goto :goto_4

    .line 1231
    :cond_e
    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    goto :goto_4

    .line 1244
    :cond_f
    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    goto/16 :goto_1

    .line 1251
    :sswitch_1
    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDownX:F

    .line 1252
    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionY:F

    .line 1253
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1260
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollY:I

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchedPageIndicatorIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    :cond_10
    move v0, v7

    :goto_5
    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    goto/16 :goto_1

    :cond_11
    move v0, v5

    goto :goto_5

    .line 1266
    :sswitch_2
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-eq v0, v7, :cond_12

    .line 1268
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1269
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1271
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.wallpaper.tap"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1277
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearChildrenCache()V

    .line 1278
    iput v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1279
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1281
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    if-eqz v0, :cond_5

    .line 1282
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    .line 1283
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v0

    if-ltz v0, :cond_14

    :cond_13
    move v0, v5

    goto/16 :goto_0

    .line 1284
    :cond_14
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinch:I

    if-le v0, v8, :cond_5

    .line 1285
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    .line 1286
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    goto/16 :goto_1

    .line 1304
    :sswitch_3
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    if-nez v0, :cond_5

    .line 1305
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 1306
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 1307
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    .line 1308
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    .line 1310
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMultiTouchUsed:Z

    .line 1311
    sub-int v4, v0, v2

    sub-int/2addr v0, v2

    mul-int/2addr v0, v4

    sub-int v2, v1, v3

    sub-int/2addr v1, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mMovePinchStart:I

    .line 1317
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v0, :cond_5

    .line 1318
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1322
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1323
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    goto/16 :goto_1

    :cond_15
    move v0, v5

    .line 1340
    goto/16 :goto_0

    .line 1165
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
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1032
    const/4 v1, 0x0

    .line 1033
    .local v1, childLeft:I
    const/4 v2, 0x0

    .line 1035
    .local v2, childTop:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v4

    .line 1036
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 1037
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1038
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 1039
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1040
    .local v3, childWidth:I
    add-int v6, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1041
    add-int/2addr v1, v3

    .line 1036
    .end local v3           #childWidth:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1045
    .end local v0           #child:Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->initPageIndicator()V

    .line 1046
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/4 v4, 0x0

    const-string v3, "Workspace can only be used in EXACTLY mode."

    .line 999
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1001
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1002
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1003
    if-eq v1, v2, :cond_0

    .line 1004
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1007
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1008
    if-eq v1, v2, :cond_1

    .line 1009
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1013
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    move v2, v4

    .line 1014
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1015
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 1014
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1019
    :cond_2
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1020
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    mul-int/2addr v2, v0

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 1021
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1022
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset(I)V

    .line 1026
    :cond_3
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIgnoreRestore:Z

    .line 1028
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1068
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1069
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v2

    .line 1070
    .local v2, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v2, :cond_0

    .line 1071
    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    .line 1083
    .end local v2           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :goto_0
    return v3

    .line 1074
    .restart local v2       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_0
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1075
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    .line 1079
    .local v1, focusableScreen:I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1080
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 1083
    .end local v0           #child:Landroid/view/View;
    .end local v1           #focusableScreen:I
    .end local v2           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1077
    .restart local v2       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .restart local v1       #focusableScreen:I
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1725
    move-object v0, p1

    check-cast v0, Landroid/view/AbsSavedState;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1726
    instance-of v2, p1, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    if-nez v2, :cond_1

    .line 1735
    :cond_0
    :goto_0
    return-void

    .line 1730
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    move-object v1, v0

    .line 1731
    .local v1, savedState:Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    iget v2, v1, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIgnoreRestore:Z

    if-nez v2, :cond_0

    .line 1732
    iget v2, v1, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 1733
    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1718
    new-instance v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1719
    .local v0, state:Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    .line 1720
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const-string v3, ","

    .line 332
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getWidth() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getHeight() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    .line 337
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    .line 343
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    .line 345
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 346
    return-void

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    .line 341
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "ev"

    .prologue
    .line 1383
    sget-boolean v19, Lcom/sec/android/app/twlauncher/Workspace;->isScrollAble:Z

    if-nez v19, :cond_0

    .line 1384
    const/16 v19, 0x1

    sput-boolean v19, Lcom/sec/android/app/twlauncher/Workspace;->isScrollAble:Z

    .line 1388
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v19

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->isAllAppsVisible()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1389
    :cond_1
    const/16 v19, 0x0

    .line 1594
    :goto_0
    return v19

    .line 1392
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 1393
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1395
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1397
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1398
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 1399
    .local v17, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 1402
    .local v18, y:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 1403
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v20

    const/16 v21, 0x1

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    move/from16 v19, v0

    if-nez v19, :cond_5

    .line 1404
    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    .line 1409
    :cond_5
    packed-switch v4, :pswitch_data_0

    .line 1594
    :cond_6
    :goto_1
    const/16 v19, 0x1

    goto :goto_0

    .line 1415
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_8

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1423
    :cond_7
    :goto_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mDownX:F

    .line 1424
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionY:F

    goto :goto_1

    .line 1418
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v19

    if-eqz v19, :cond_9

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    .line 1419
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move/from16 v19, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollY:I

    move/from16 v20, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mTouchedPageIndicatorIndex:I

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    goto :goto_2

    .line 1428
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1429
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 1430
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    goto/16 :goto_1

    .line 1434
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v19, v19, v17

    move/from16 v0, v19

    float-to-int v0, v0

    move v6, v0

    .line 1435
    .local v6, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionY:F

    move/from16 v19, v0

    sub-float v19, v19, v18

    move/from16 v0, v19

    float-to-int v0, v0

    move v7, v0

    .line 1437
    .local v7, deltaY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1438
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchSlop:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_b

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchSlop:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    .line 1439
    :cond_b
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    .line 1446
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 1447
    if-gez v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v19

    const/16 v20, 0x1

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v20

    mul-int v19, v19, v20

    move v0, v6

    move/from16 v1, v19

    if-le v0, v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 1448
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1453
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mHideIndicator:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1458
    :cond_10
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mLastMotionX:F

    .line 1460
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    .line 1461
    .local v5, childCount:I
    const/16 v19, 0x1

    sub-int v19, v5, v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v20

    mul-int v12, v19, v20

    .line 1463
    .local v12, maxScrollX:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    const/16 v19, 0x2

    move v0, v5

    move/from16 v1, v19

    if-lt v0, v1, :cond_11

    .line 1464
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    goto/16 :goto_1

    .line 1468
    :cond_11
    if-gez v6, :cond_13

    .line 1469
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    neg-int v0, v0

    move v13, v0

    .line 1470
    .local v13, minScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move/from16 v19, v0

    move/from16 v0, v19

    move v1, v13

    if-le v0, v1, :cond_6

    .line 1471
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move/from16 v19, v0

    if-lez v19, :cond_12

    .line 1472
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    .line 1476
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v19

    if-nez v19, :cond_6

    .line 1477
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto/16 :goto_1

    .line 1474
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move/from16 v19, v0

    sub-int v19, v13, v19

    move/from16 v0, v19

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    goto :goto_3

    .line 1480
    .end local v13           #minScrollX:I
    :cond_13
    if-lez v6, :cond_6

    .line 1481
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v19

    const/16 v20, 0x1

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getRight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v12, v19, v20

    .line 1482
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move/from16 v19, v0

    move/from16 v0, v19

    move v1, v12

    if-ge v0, v1, :cond_6

    .line 1483
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move/from16 v19, v0

    sub-int v19, v12, v19

    move/from16 v0, v19

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v19

    if-nez v19, :cond_6

    .line 1485
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto/16 :goto_1

    .line 1493
    .end local v5           #childCount:I
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v12           #maxScrollX:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 1494
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1c

    .line 1495
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move/from16 v19, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollY:I

    move/from16 v20, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v9

    .line 1496
    .local v9, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v19

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    move/from16 v19, v0

    if-eqz v19, :cond_18

    .line 1497
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    move/from16 v19, v0

    if-nez v19, :cond_15

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1499
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1501
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1503
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 1520
    :cond_15
    :goto_4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsSingleTap:Z

    .line 1582
    .end local v9           #index:I
    :cond_16
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    .line 1583
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1585
    :cond_17
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mHideIndicator:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1505
    .restart local v9       #index:I
    :cond_18
    const/16 v19, -0x1

    move v0, v9

    move/from16 v1, v19

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTouchedPageIndicatorIndex:I

    move/from16 v19, v0

    move v0, v9

    move/from16 v1, v19

    if-ne v0, v1, :cond_19

    .line 1506
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto :goto_4

    .line 1507
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v19

    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-eqz v19, :cond_15

    .line 1508
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1a

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddWidget(I)V

    goto :goto_4

    .line 1511
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1512
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1514
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1516
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    goto/16 :goto_4

    .line 1522
    .end local v9           #index:I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v14, v0

    .line 1523
    .local v14, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mMaximumVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object v0, v14

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1524
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move v15, v0

    .line 1526
    .local v15, velocityX:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    .line 1528
    .restart local v5       #childCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 1529
    .local v8, display:Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v19

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1d

    const/16 v19, 0x1

    move/from16 v10, v19

    .line 1530
    .local v10, isPortrait:Z
    :goto_6
    if-eqz v10, :cond_1e

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v19

    move/from16 v11, v19

    .line 1531
    .local v11, iwidth:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-eqz v19, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    move/from16 v16, v19

    .line 1534
    .local v16, wallpaperDrawableWidth:I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->SNAP_VELOCITY:I

    move/from16 v19, v0

    move v0, v15

    move/from16 v1, v19

    if-le v0, v1, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move/from16 v19, v0

    if-ltz v19, :cond_21

    .line 1536
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move/from16 v19, v0

    const/16 v20, 0x1

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1538
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    .line 1539
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move/from16 v19, v0

    const/16 v20, 0x1

    sub-int v19, v19, v20

    if-gez v19, :cond_20

    const/16 v19, 0x1

    move v0, v5

    move/from16 v1, v19

    if-le v0, v1, :cond_20

    move v0, v11

    move/from16 v1, v16

    if-eq v0, v1, :cond_20

    .line 1540
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/Workspace;->mSnaptoScreenStartTime:J

    .line 1541
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 1542
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    goto/16 :goto_5

    .line 1529
    .end local v10           #isPortrait:Z
    .end local v11           #iwidth:I
    .end local v16           #wallpaperDrawableWidth:I
    :cond_1d
    const/16 v19, 0x0

    move/from16 v10, v19

    goto/16 :goto_6

    .line 1530
    .restart local v10       #isPortrait:Z
    :cond_1e
    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v19

    move/from16 v11, v19

    goto/16 :goto_7

    .line 1531
    .restart local v11       #iwidth:I
    :cond_1f
    const/16 v19, 0x1

    move/from16 v16, v19

    goto :goto_8

    .line 1544
    .restart local v16       #wallpaperDrawableWidth:I
    :cond_20
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    goto/16 :goto_5

    .line 1548
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->SNAP_VELOCITY:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move v0, v15

    move/from16 v1, v19

    if-ge v0, v1, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move/from16 v19, v0

    const/16 v20, 0x1

    sub-int v20, v5, v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_23

    .line 1550
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1552
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    .line 1553
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move v1, v5

    if-lt v0, v1, :cond_22

    const/16 v19, 0x1

    move v0, v5

    move/from16 v1, v19

    if-le v0, v1, :cond_22

    move v0, v11

    move/from16 v1, v16

    if-eq v0, v1, :cond_22

    .line 1554
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/Workspace;->mSnaptoScreenStartTime:J

    .line 1555
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 1556
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    goto/16 :goto_5

    .line 1558
    :cond_22
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    goto/16 :goto_5

    .line 1563
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToDestination()V

    .line 1565
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    .line 1566
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v19

    if-gez v19, :cond_24

    const/16 v19, 0x1

    move v0, v5

    move/from16 v1, v19

    if-le v0, v1, :cond_24

    move v0, v11

    move/from16 v1, v16

    if-eq v0, v1, :cond_24

    .line 1567
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/Workspace;->mSnaptoScreenStartTime:J

    .line 1568
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 1569
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    goto/16 :goto_5

    .line 1570
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v19

    move/from16 v0, v19

    move v1, v5

    if-lt v0, v1, :cond_25

    const/16 v19, 0x1

    move v0, v5

    move/from16 v1, v19

    if-le v0, v1, :cond_25

    move v0, v11

    move/from16 v1, v16

    if-eq v0, v1, :cond_25

    .line 1571
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/Workspace;->mSnaptoScreenStartTime:J

    .line 1572
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 1573
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    goto/16 :goto_5

    .line 1575
    :cond_25
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    goto/16 :goto_5

    .line 1589
    .end local v5           #childCount:I
    .end local v8           #display:Landroid/view/Display;
    .end local v10           #isPortrait:Z
    .end local v11           #iwidth:I
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:I
    .end local v16           #wallpaperDrawableWidth:I
    :pswitch_3
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mHideIndicator:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method pauseScreen(I)V
    .locals 7
    .parameter "which"

    .prologue
    .line 2374
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2375
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v0, :cond_1

    .line 2384
    :cond_0
    return-void

    .line 2376
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 2377
    .local v2, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2378
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2379
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2380
    .local v3, tag:Ljava/lang/Object;
    instance-of v5, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v5, :cond_2

    .line 2381
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 2377
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method removeInScreen(Landroid/view/View;I)V
    .locals 5
    .parameter "child"
    .parameter "screen"

    .prologue
    .line 568
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    if-lt p2, v2, :cond_1

    .line 569
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The screen must be >= 0 and < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 572
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 574
    .local v0, group:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 575
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 576
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 579
    :cond_2
    const-string v2, "Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeInScreen group:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  child:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  screen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void
.end method

.method removeItems(Ljava/util/ArrayList;)V
    .locals 9
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
    .line 2201
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    .line 2202
    .local v7, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2203
    .local v4, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 2205
    .local v5, widgets:Landroid/appwidget/AppWidgetManager;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2206
    .local v3, packageNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2207
    .local v6, appCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_0

    .line 2208
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2207
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2211
    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    .line 2212
    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2215
    .local v2, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    new-instance v0, Lcom/sec/android/app/twlauncher/Workspace$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace$2;-><init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/CellLayout;Ljava/util/HashSet;Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 2211
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2324
    .end local v2           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_1
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1050
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1051
    .local v0, screen:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1052
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1054
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-boolean v1, v1, Lcom/sec/android/app/twlauncher/Launcher;->isHomeKeyToDefaultPage:Z

    if-nez v1, :cond_2

    .line 1055
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 1061
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1063
    :goto_1
    return v1

    .line 1057
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iput-boolean v2, v1, Lcom/sec/android/app/twlauncher/Launcher;->isHomeKeyToDefaultPage:Z

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1063
    goto :goto_1
.end method

.method resume(I)V
    .locals 5
    .parameter "which"

    .prologue
    .line 2401
    move v0, p1

    .line 2402
    .local v0, screen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    .line 2403
    .local v2, width:I
    if-eqz v2, :cond_1

    if-ltz v0, :cond_1

    .line 2404
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    .line 2405
    .local v1, scroller:Landroid/widget/Scroller;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2406
    :cond_0
    mul-int v3, v0, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 2408
    .end local v1           #scroller:Landroid/widget/Scroller;
    :cond_1
    return-void
.end method

.method resumeScreen(I)V
    .locals 7
    .parameter "which"

    .prologue
    .line 2388
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2389
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v0, :cond_1

    .line 2398
    :cond_0
    return-void

    .line 2390
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 2391
    .local v2, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2392
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2393
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2394
    .local v3, tag:Ljava/lang/Object;
    instance-of v5, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v5, :cond_2

    .line 2395
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 2391
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public scrollLeft()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 2007
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 2009
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_1

    .line 2010
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2011
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 2020
    :cond_0
    :goto_0
    return-void

    .line 2016
    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2017
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 2023
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 2025
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_1

    .line 2026
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2028
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 2038
    :cond_0
    :goto_0
    return-void

    .line 2033
    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2035
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto :goto_0
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 2100
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 2101
    return-void
.end method

.method setAtuoScrollScreen(I)V
    .locals 3
    .parameter "screen"

    .prologue
    .line 2457
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    .line 2458
    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 2459
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    .line 2461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 2462
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2463
    return-void
.end method

.method setCurrentScreen(I)V
    .locals 3
    .parameter "currentScreen"

    .prologue
    const/4 v2, 0x0

    .line 464
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 465
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    .line 466
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 467
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 468
    return-void
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 1980
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    .line 1981
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 1976
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 1977
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 616
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 617
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 618
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 619
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 618
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 621
    :cond_0
    return-void
.end method

.method setShowIndicator()V
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOpenFlag:Z

    .line 478
    return-void
.end method

.method snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    .line 1632
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(II)V

    .line 1633
    return-void
.end method

.method snapToScreen(II)V
    .locals 10
    .parameter "whichScreen"
    .parameter "duration"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1636
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1637
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->enableChildrenCache(II)V

    .line 1638
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 1640
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    .line 1642
    .local v7, childCount:I
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    if-lt v7, v0, :cond_6

    .line 1643
    if-ltz p1, :cond_1

    if-ge p1, v7, :cond_1

    .line 1644
    sub-int v0, v7, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1652
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    if-eq p1, v0, :cond_7

    move v6, v1

    .line 1653
    .local v6, changingScreens:Z
    :goto_1
    if-eqz v6, :cond_2

    .line 1654
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->pauseScreen(I)V

    .line 1657
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    .line 1658
    .local v8, focusedChild:Landroid/view/View;
    if-eqz v8, :cond_3

    if-eqz v6, :cond_3

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v8, v0, :cond_3

    .line 1659
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    .line 1662
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v0

    mul-int v9, p1, v0

    .line 1663
    .local v9, newX:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    sub-int v3, v9, v0

    .line 1665
    .local v3, delta:I
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_4

    .line 1666
    if-gez p1, :cond_8

    .line 1667
    sub-int p1, v7, v1

    .line 1673
    :cond_4
    :goto_2
    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mNextScreen:I

    .line 1675
    if-gtz p2, :cond_5

    .line 1676
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 p2, v0, 0x2

    .line 1678
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollX:I

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1679
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 1680
    return-void

    .line 1649
    .end local v3           #delta:I
    .end local v6           #changingScreens:Z
    .end local v8           #focusedChild:Landroid/view/View;
    .end local v9           #newX:I
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_7
    move v6, v2

    .line 1652
    goto :goto_1

    .line 1668
    .restart local v3       #delta:I
    .restart local v6       #changingScreens:Z
    .restart local v8       #focusedChild:Landroid/view/View;
    .restart local v9       #newX:I
    :cond_8
    if-lt p1, v7, :cond_4

    .line 1669
    const/4 p1, 0x0

    goto :goto_2
.end method

.method startDrag(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 7
    .parameter "cellInfo"

    .prologue
    .line 1683
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1687
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1714
    :cond_0
    :goto_0
    return-void

    .line 1691
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;

    if-eqz v4, :cond_0

    .line 1695
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1697
    .local v3, ii:Lcom/sec/android/app/twlauncher/ItemInfo;
    instance-of v4, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v4, :cond_2

    .line 1698
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v4, v0

    invoke-virtual {v5, v6, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 1701
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 1703
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1704
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    iput v5, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1706
    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1708
    .local v2, current:Lcom/sec/android/app/twlauncher/CellLayout;
    sget-boolean v4, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v4, :cond_3

    .line 1709
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 1711
    :cond_3
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 1712
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    const/4 v5, 0x0

    invoke-interface {v4, v1, p0, v3, v5}, Lcom/sec/android/app/twlauncher/DragController;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 1713
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    goto :goto_0
.end method

.method stopAutoScrollRunnable()V
    .locals 1

    .prologue
    .line 2494
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 2496
    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .locals 20
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
    .line 2329
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v9

    .line 2330
    const/4 v5, 0x0

    move v10, v5

    :goto_0
    if-ge v10, v9, :cond_3

    .line 2331
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2332
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v11

    .line 2333
    const/4 v6, 0x0

    move v12, v6

    :goto_1
    if-ge v12, v11, :cond_2

    .line 2334
    invoke-virtual {v5, v12}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2335
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 2336
    instance-of v7, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v7, :cond_1

    .line 2337
    check-cast v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .line 2341
    iget-object v7, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2342
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 2343
    iget v14, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-nez v14, :cond_1

    const-string v14, "android.intent.action.MAIN"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v13, :cond_1

    .line 2345
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2346
    const/4 v7, 0x0

    move v15, v7

    :goto_2
    if-ge v15, v14, :cond_1

    .line 2347
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2348
    iget-object v7, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    move-object v7, v0

    move-object v0, v6

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2350
    move-object v0, v8

    check-cast v0, Landroid/widget/TextView;

    move-object v7, v0

    const/16 v16, 0x0

    new-instance v17, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    move-object/from16 v18, v0

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2346
    :cond_0
    add-int/lit8 v7, v15, 0x1

    move v15, v7

    goto :goto_2

    .line 2333
    :cond_1
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    goto/16 :goto_1

    .line 2330
    :cond_2
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    goto/16 :goto_0

    .line 2359
    :cond_3
    return-void
.end method

.method updateWallpaperOffset()V
    .locals 2

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset(I)V

    .line 625
    return-void
.end method
