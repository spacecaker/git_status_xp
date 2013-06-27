.class public Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
.super Landroid/widget/FrameLayout;
.source "QuickViewWorkspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;
    }
.end annotation


# static fields
.field private static final ADD_BTN_TAG:Ljava/lang/Object;


# instance fields
.field private mAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

.field private mAnimationDuration:I

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationStyle:I

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

.field private mChildRects:[Landroid/graphics/Rect;

.field private mClickCheck:Z

.field private mCurrentPage:I

.field private mCurrentRects:[Landroid/graphics/Rect;

.field private mDeleteIndex:I

.field private mDeleteView:Landroid/view/View;

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private final mDragPaint:Landroid/graphics/Paint;

.field private mDragState:I

.field private mDraggingIndex:I

.field private mDraggingView:Landroid/view/View;

.field private mEnabledChildAnimation:Z

.field private mFinishRects:[Landroid/graphics/Rect;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mMovePinch:I

.field private mMovePinchStart:I

.field private mMultiTouchUsed:Z

.field private mOrientation:I

.field private mOriginDragIndex:I

.field private mPinchIndex:I

.field private mPinchOutIndex:I

.field private mPinchOutProcess:Z

.field private mPressBitmap:Landroid/graphics/Bitmap;

.field private mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

.field private mScreenBgDrawablePadding:Landroid/graphics/Rect;

.field private mScreenRect:Landroid/graphics/Rect;

.field private mStartRects:[Landroid/graphics/Rect;

.field private mTempRects:[Landroid/graphics/Rect;

.field private mTmpLocation:[I

.field private mTmpLocation2:[I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchedView:Landroid/view/View;

.field private final mTrashPaint:Landroid/graphics/Paint;

.field private mUseFullScreenInLandScapeMode:Z

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWorkspaceScreenCountOnOpen:I

.field private mWorkspaceScreenIndexOnOpen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStyle:I

    .line 97
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    new-array v0, v0, [Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    .line 112
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 113
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 129
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    .line 130
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutProcess:Z

    .line 131
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mClickCheck:Z

    .line 133
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 134
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressBitmap:Landroid/graphics/Bitmap;

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTrashPaint:Landroid/graphics/Paint;

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragPaint:Landroid/graphics/Paint;

    .line 145
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    .line 146
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    .line 156
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 935
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    .line 936
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    .line 178
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->init()V

    .line 179
    return-void
.end method

.method private addScreen()V
    .locals 5

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 996
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v2, v1, v4

    .line 997
    .local v2, index:I
    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 998
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1000
    .local v0, add:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    move-result-object v3

    .line 1001
    .local v3, screen:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1003
    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-lt v1, v4, :cond_1

    .line 1004
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 1007
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onAdd()V

    .line 1008
    return-void
.end method

.method private applyDeleteZone()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 953
    iput v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 954
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 955
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 956
    .local v0, viewBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 957
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 959
    .local v4, height:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 960
    .local v5, scale:Landroid/graphics/Matrix;
    const/high16 v7, 0x3f80

    .line 961
    .local v7, scaleFactor:F
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    move v2, v1

    .line 963
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 964
    return-void
.end method

.method private drop(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    const-string v4, "QuickViewWorkspace"

    .line 902
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 903
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 906
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isDeleteZone(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 907
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 908
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 909
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapScreen(I)V

    .line 911
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    .line 912
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 914
    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    .line 916
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isIncludeItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteWorkScreen()V

    .line 933
    :goto_0
    return-void

    .line 920
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeScreen()V

    goto :goto_0

    .line 925
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v0

    .line 926
    .local v0, dropedIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    .line 927
    const-string v1, "QuickViewWorkspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapScreen(I)V

    goto :goto_0

    .line 930
    :cond_2
    const-string v1, "QuickViewWorkspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid drop index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapScreen(I)V

    goto :goto_0
.end method

.method private enableWorkspaceScreensCache()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 677
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    .line 678
    .local v3, ws:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 680
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 681
    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 682
    .local v0, celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 683
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 680
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 685
    .end local v0           #celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_0
    return-void
.end method

.method private endDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 892
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 893
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 894
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 895
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    .line 896
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    .line 897
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    .line 898
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    .line 899
    return-void
.end method

.method private getTouchedIndex(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, -0x1

    .line 729
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-nez v2, :cond_0

    move v2, v5

    .line 737
    :goto_0
    return v2

    .line 730
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    array-length v0, v2

    .line 731
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 732
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 731
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 733
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollX:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    add-int/2addr v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    .line 734
    goto :goto_0

    :cond_3
    move v2, v5

    .line 737
    goto :goto_0
.end method

.method private getViewLayout(I)V
    .locals 12
    .parameter

    .prologue
    .line 1418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    .line 1419
    new-array v0, p1, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    .line 1422
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 1423
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 1424
    const-string v2, "quickviewlayout"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1426
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 1430
    :cond_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v2, :cond_5

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    .line 1432
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1435
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1436
    const-string v4, "quickviewset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1437
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 1438
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1439
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 1440
    const/4 v4, 0x0

    .line 1442
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_4

    :cond_3
    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    .line 1443
    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    .line 1444
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "quickviewset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1460
    :cond_4
    if-eq v4, p1, :cond_0

    .line 1461
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xml item count mismatch : item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1466
    :catch_0
    move-exception v0

    .line 1467
    const-string v1, "QuickViewWorkspace"

    const-string v2, "Got exception parsing quickviews."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1468
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1473
    :cond_5
    :goto_1
    return-void

    .line 1447
    :cond_6
    :try_start_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1448
    const-string v6, "quickview"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1449
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/sec/android/app/twlauncher/R$styleable;->QuickView:[I

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1450
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1451
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1452
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1453
    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1454
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    aput-object v11, v10, v4

    .line 1455
    :cond_7
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    invoke-virtual {v10, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1456
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1457
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1469
    :catch_1
    move-exception v0

    .line 1470
    const-string v1, "QuickViewWorkspace"

    const-string v2, "Got exception parsing quickviews."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1471
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private init()V
    .locals 9

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 184
    new-instance v6, Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    invoke-direct {v6}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    .line 185
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 189
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherConfig;->landscapeScreen_isUseFullScreenQuickView(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 194
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 195
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    .line 197
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 198
    .local v4, srcColor:I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTrashPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v4, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 200
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 201
    .local v5, srcColor2:I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v5, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 203
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v2, v6, :cond_0

    .line 204
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

    new-instance v7, Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

    invoke-direct {v7, p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;-><init>(Lcom/sec/android/app/twlauncher/QuickViewWorkspace;)V

    aput-object v7, v6, v2

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setClipChildren(Z)V

    .line 208
    return-void
.end method

.method private isAvailableRect(Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "rect"

    .prologue
    .line 1395
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_1

    .line 1399
    :cond_0
    const/4 v0, 0x0

    .line 1401
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isDeleteZone(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 940
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    .line 941
    .local v0, dz:Lcom/sec/android/app/twlauncher/DeleteZone;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->getDeleteAreaRect(Landroid/graphics/Rect;)V

    .line 944
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->getLocationOnScreen([I)V

    .line 945
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationInWindow([I)V

    .line 946
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 948
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method private isIncludeItem()Z
    .locals 13

    .prologue
    .line 967
    const/4 v5, 0x0

    .line 968
    .local v5, ret:Z
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v8

    .line 970
    .local v8, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 971
    .local v4, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 973
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 974
    invoke-virtual {v4, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 975
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 977
    .local v6, tag:Ljava/lang/Object;
    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v3, v0

    .line 979
    .local v3, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget-wide v9, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    .line 980
    const/4 v5, 0x0

    .line 991
    .end local v3           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .end local v6           #tag:Ljava/lang/Object;
    .end local v7           #view:Landroid/view/View;
    :cond_0
    :goto_1
    return v5

    .line 984
    .restart local v3       #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .restart local v6       #tag:Ljava/lang/Object;
    .restart local v7       #view:Landroid/view/View;
    :cond_1
    iget-wide v9, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v11, -0x64

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    .line 986
    const/4 v5, 0x1

    .line 987
    goto :goto_1

    .line 973
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private makeAddBtn()Landroid/view/View;
    .locals 2

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    move-result-object v0

    .line 848
    .local v0, v:Landroid/view/View;
    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 849
    return-object v0
.end method

.method private makeScreen(I)Landroid/view/View;
    .locals 3
    .parameter "index"

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-lt v1, v2, :cond_0

    .line 854
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mClickCheck:Z

    .line 859
    :goto_0
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 860
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 862
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 863
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 865
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 866
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 867
    return-object v0

    .line 856
    .end local v0           #v:Landroid/view/View;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mClickCheck:Z

    goto :goto_0
.end method

.method private onAdd()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 1067
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1068
    .local v1, count:I
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    .line 1070
    .local v3, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030016

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1071
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1072
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getCellLayoutId(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->setId(I)V

    .line 1073
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1074
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_0

    .line 1075
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1077
    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {v3, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1079
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 1081
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    .line 1082
    return-void
.end method

.method private onRemove()V
    .locals 12

    .prologue
    .line 1086
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    .line 1090
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    invoke-virtual {v5, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1091
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v6

    .line 1092
    const/4 v2, 0x0

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_b

    .line 1093
    invoke-virtual {v1, v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1094
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1096
    instance-of v2, v2, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v2, :cond_0

    .line 1092
    :goto_1
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_0

    .line 1102
    :cond_0
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v2, v0

    .line 1104
    iget-wide v8, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v10, -0x1

    cmp-long v4, v8, v10

    if-nez v4, :cond_1

    .line 1161
    :goto_2
    return-void

    .line 1106
    :cond_1
    iget-wide v8, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v4, v8, v10

    if-nez v4, :cond_8

    .line 1107
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v3, :cond_4

    .line 1108
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v3, v0

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/Launcher;->removeSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 1127
    :cond_2
    :goto_3
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v3, :cond_9

    .line 1128
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v3, v0

    .line 1129
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v4, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 1130
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/Launcher;->removeFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 1142
    :cond_3
    :goto_4
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v3, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_1

    .line 1109
    :cond_4
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v3, :cond_5

    .line 1110
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v3, v0

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/Launcher;->removeAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    goto :goto_3

    .line 1111
    :cond_5
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v3, :cond_6

    .line 1112
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v3, v0

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/Launcher;->removeShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_3

    .line 1113
    :cond_6
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v3, :cond_7

    .line 1114
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    move-object v3, v0

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/Launcher;->removeFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_3

    .line 1116
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "What\'s that????? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1119
    :cond_8
    instance-of v4, v3, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v4, :cond_2

    .line 1120
    check-cast v3, Lcom/sec/android/app/twlauncher/UserFolder;

    .line 1121
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 1124
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_3

    .line 1131
    :cond_9
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v3, :cond_a

    .line 1132
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v3, v0

    .line 1133
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getAppWidgetHost()Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    move-result-object v4

    .line 1134
    if-eqz v4, :cond_3

    .line 1135
    iget v3, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_4

    .line 1137
    :cond_a
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v3, :cond_3

    .line 1138
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v3, v0

    .line 1139
    invoke-static {}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v4

    .line 1140
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4, v8, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto/16 :goto_4

    .line 1145
    :cond_b
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    invoke-virtual {v5, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1146
    invoke-virtual {v5, v1}, Lcom/sec/android/app/twlauncher/Workspace;->removeView(Landroid/view/View;)V

    .line 1148
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateAppInfoInDatabase()V

    .line 1149
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 1151
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    .line 1152
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1154
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 1155
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-gt v1, v2, :cond_c

    .line 1156
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    .line 1157
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 1160
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    goto/16 :goto_2
.end method

.method private onSwap(I)V
    .locals 4
    .parameter "dropedIndex"

    .prologue
    .line 1049
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    .line 1051
    .local v1, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1055
    .local v0, v:Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    .line 1057
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    .line 1060
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateAppInfoInDatabase()V

    .line 1061
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 1062
    return-void
.end method

.method private setCloseEndRect(I)V
    .locals 14
    .parameter

    .prologue
    .line 1291
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    .line 1293
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationOnScreen([I)V

    .line 1294
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 1297
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1299
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1300
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1301
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1302
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1303
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1305
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    .line 1306
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1307
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 1310
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 1311
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 1312
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 1313
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 1315
    sget v11, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-le v0, v11, :cond_0

    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    .line 1317
    :cond_0
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    array-length v11, v11

    if-eq v11, v0, :cond_2

    .line 1318
    :cond_1
    new-array v11, v0, [Landroid/graphics/Rect;

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    .line 1319
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v0, :cond_2

    .line 1320
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    aput-object v13, v12, v11

    .line 1319
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1324
    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v11, v11, p1

    sub-int v7, v5, v7

    sub-int v9, v2, v9

    add-int/2addr v3, v5

    add-int/2addr v3, v8

    add-int/2addr v2, v4

    add-int/2addr v2, v10

    invoke-virtual {v11, v7, v9, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1330
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    if-eqz v2, :cond_3

    .line 1332
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    sub-int v1, v6, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1335
    :cond_3
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStyle:I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-nez v1, :cond_9

    .line 1337
    :cond_4
    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_7

    .line 1338
    const-string v1, "QuickViewWorkspace"

    const-string v2, "setCloseEndRect : 9:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const/4 v1, 0x4

    if-le v0, v1, :cond_5

    const/4 v1, 0x3

    .line 1342
    :goto_1
    div-int v2, p1, v1

    .line 1343
    rem-int v3, p1, v1

    .line 1345
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_b

    .line 1346
    if-ne v4, p1, :cond_6

    .line 1345
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1340
    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    .line 1348
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1349
    div-int v5, v4, v1

    .line 1350
    rem-int v6, v4, v1

    .line 1352
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    sub-int/2addr v6, v3

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int/2addr v6, v8

    sub-int/2addr v5, v2

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int/2addr v5, v8

    invoke-virtual {v7, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 1355
    :cond_7
    const-string v1, "QuickViewWorkspace"

    const-string v2, "setCloseEndRect : X"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const/4 v1, 0x1

    sub-int v1, p1, v1

    :goto_4
    if-ltz v1, :cond_8

    .line 1358
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1359
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1357
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1362
    :cond_8
    add-int/lit8 v1, p1, 0x1

    :goto_5
    if-ge v1, v0, :cond_b

    .line 1363
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    const/4 v4, 0x1

    sub-int v4, v1, v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1364
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1362
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1368
    :cond_9
    const-string v1, "QuickViewWorkspace"

    const-string v2, "setCloseEndRect : NEW:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v1, v1, p1

    .line 1370
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, p1

    .line 1377
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1378
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1380
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v0, :cond_b

    .line 1381
    if-ne v5, p1, :cond_a

    .line 1380
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1382
    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v5

    .line 1383
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    .line 1384
    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    .line 1386
    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    .line 1387
    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    .line 1388
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget v9, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v7

    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    iget v11, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v11

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v11

    invoke-virtual {v8, v9, v10, v7, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    .line 1392
    :cond_b
    return-void
.end method

.method private setDeleteZoneState(Z)V
    .locals 1
    .parameter "dragOver"

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setDragEnterForced(Z)V

    .line 1165
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    .line 1166
    return-void
.end method

.method private setOpenStartRect(I)V
    .locals 14
    .parameter

    .prologue
    .line 1191
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    .line 1193
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationOnScreen([I)V

    .line 1194
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 1197
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1199
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1200
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1201
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1202
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1203
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1205
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    .line 1206
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1207
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 1210
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 1211
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 1212
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 1213
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 1215
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    array-length v11, v11

    if-eq v11, v0, :cond_1

    .line 1216
    :cond_0
    new-array v11, v0, [Landroid/graphics/Rect;

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    .line 1217
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v0, :cond_1

    .line 1218
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    aput-object v13, v12, v11

    .line 1217
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1222
    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v11, v11, p1

    sub-int v7, v5, v7

    sub-int v9, v2, v9

    add-int/2addr v3, v5

    add-int/2addr v3, v8

    add-int/2addr v2, v4

    add-int/2addr v2, v10

    invoke-virtual {v11, v7, v9, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1229
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    if-eqz v2, :cond_2

    .line 1231
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    sub-int v1, v6, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1234
    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStyle:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-nez v1, :cond_8

    .line 1236
    :cond_3
    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_6

    .line 1237
    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    const/4 v1, 0x3

    .line 1239
    :goto_1
    div-int v2, p1, v1

    .line 1240
    rem-int v3, p1, v1

    .line 1242
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_a

    .line 1243
    if-ne v4, p1, :cond_5

    .line 1242
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1237
    :cond_4
    const/4 v1, 0x2

    goto :goto_1

    .line 1245
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1246
    div-int v5, v4, v1

    .line 1247
    rem-int v6, v4, v1

    .line 1249
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    sub-int/2addr v6, v3

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int/2addr v6, v8

    sub-int/2addr v5, v2

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int/2addr v5, v8

    invoke-virtual {v7, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 1252
    :cond_6
    const/4 v1, 0x1

    sub-int v1, p1, v1

    :goto_4
    if-ltz v1, :cond_7

    .line 1253
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1254
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1252
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1257
    :cond_7
    add-int/lit8 v1, p1, 0x1

    :goto_5
    if-ge v1, v0, :cond_a

    .line 1258
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    const/4 v4, 0x1

    sub-int v4, v1, v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1259
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1257
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1263
    :cond_8
    const-string v1, "QuickViewWorkspace"

    const-string v2, "setOpenStartRect : NEW:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v1, v1, p1

    .line 1265
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, p1

    .line 1272
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1275
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v0, :cond_a

    .line 1276
    if-ne v4, p1, :cond_9

    .line 1275
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1277
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v4

    .line 1278
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    .line 1279
    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v7

    .line 1281
    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    .line 1282
    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 1283
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget v8, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v6

    iget v9, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v5

    iget v10, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v10

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v10

    invoke-virtual {v7, v8, v9, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    .line 1288
    :cond_a
    return-void
.end method

.method private startDrag(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 871
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 872
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    .line 873
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    .line 874
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 875
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    .line 877
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 878
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 879
    .local v0, viewBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 880
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 882
    .local v4, height:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 883
    .local v5, scale:Landroid/graphics/Matrix;
    const/high16 v7, 0x3f80

    .line 884
    .local v7, scaleFactor:F
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 886
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressBitmap:Landroid/graphics/Bitmap;

    .line 888
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 889
    return-void
.end method

.method private swapScreen(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    .line 1045
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onSwap(I)V

    .line 1046
    return-void
.end method

.method private updateAppInfoInDatabase()V
    .locals 11

    .prologue
    .line 1169
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v8

    .line 1170
    .local v8, work:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v9

    .line 1173
    .local v9, workCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v9, :cond_2

    .line 1174
    invoke-virtual {v8, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1175
    .local v1, child:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1176
    .local v2, childCount:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    if-ge v6, v2, :cond_1

    .line 1177
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1178
    .local v5, itemView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 1179
    .local v7, tag:Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 1180
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v4, v0

    .line 1181
    .local v4, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget v10, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-eq v10, v3, :cond_0

    .line 1182
    iput v3, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1183
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v10, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 1176
    .end local v4           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1173
    .end local v5           #itemView:Landroid/view/View;
    .end local v7           #tag:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1188
    .end local v1           #child:Landroid/view/ViewGroup;
    .end local v2           #childCount:I
    .end local v6           #j:I
    :cond_2
    return-void
.end method

.method private updateTag()V
    .locals 5

    .prologue
    .line 1011
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1012
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1013
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1014
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1015
    .local v3, tag:Ljava/lang/Object;
    sget-object v4, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    .line 1016
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1012
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1019
    .end local v0           #child:Landroid/view/View;
    .end local v3           #tag:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private updateWallpaperOffset(IIF)V
    .locals 7
    .parameter "newCurScreenIndex"
    .parameter "newScreenCount"
    .parameter "progress"

    .prologue
    const/4 v6, 0x1

    .line 327
    const/high16 v2, 0x3f00

    .line 328
    .local v2, wallpaperOffsetOnOpen:F
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    if-le v4, v6, :cond_0

    .line 329
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenIndexOnOpen:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 332
    :cond_0
    const/high16 v0, 0x3f00

    .line 333
    .local v0, targetWallpaperOffsetOnClose:F
    if-le p2, v6, :cond_1

    .line 334
    int-to-float v4, p1

    sub-int v5, p2, v6

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 337
    :cond_1
    sub-float v4, v0, v2

    mul-float/2addr v4, p3

    add-float v3, v2, v4

    .line 340
    .local v3, woffset:F
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 342
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 343
    .local v1, token:Landroid/os/IBinder;
    if-eqz v1, :cond_2

    .line 344
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 346
    :cond_2
    return-void
.end method


# virtual methods
.method cancelDeleteView()V
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 806
    :goto_0
    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 801
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 803
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    .line 804
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 805
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    goto :goto_0
.end method

.method cancelDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 775
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 779
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    .line 781
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    .line 787
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 788
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 789
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    .line 790
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 791
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    .line 792
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    .line 793
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    .line 794
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    .line 795
    return-void
.end method

.method close()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 714
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    .line 715
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mEnabledChildAnimation:Z

    .line 716
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setVisibility(I)V

    .line 718
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    .line 719
    .local v0, vDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 721
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->disableWorkspaceScreensCache()V

    .line 722
    return-void
.end method

.method disableWorkspaceScreensCache()V
    .locals 5

    .prologue
    .line 688
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    .line 689
    .local v3, ws:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 691
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 692
    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 694
    .local v0, celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 691
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 696
    .end local v0           #celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v12

    .line 214
    .local v12, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getWidth()I

    move-result v19

    .line 215
    .local v19, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getHeight()I

    move-result v16

    .line 216
    .local v16, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getDrawingTime()J

    move-result-wide v14

    .line 218
    .local v14, drawingTime:J
    sget v5, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-le v12, v5, :cond_0

    sget v12, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    .line 220
    :cond_0
    if-eqz v19, :cond_1

    if-nez v16, :cond_2

    .line 323
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStartTime:J

    .line 225
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setOpenStartRect(I)V

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->requestLayout()V

    .line 230
    new-array v5, v12, [Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    .line 231
    new-array v5, v12, [Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    .line 232
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_4

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v5, v17

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object v6, v0

    aget-object v6, v6, v17

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v5, v17

    .line 232
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 237
    .end local v17           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStartTime:J

    .line 239
    const/4 v5, 0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->requestLayout()V

    .line 243
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setCloseEndRect(I)V

    .line 244
    new-array v5, v12, [Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    .line 245
    new-array v5, v12, [Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    .line 246
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_2
    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_4

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v5, v17

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object v6, v0

    aget-object v6, v6, v17

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v5, v17

    .line 246
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 256
    .end local v17           #i:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 257
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_3
    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_6

    .line 258
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 259
    .local v11, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    move-object v5, v0

    if-eq v11, v5, :cond_5

    .line 260
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 257
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 263
    .end local v11           #child:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollX:I

    move v5, v0

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    move v5, v0

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollX:I

    move v5, v0

    add-int v5, v5, v19

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    move v5, v0

    add-int v5, v5, v16

    int-to-float v9, v5

    sget-object v10, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_0

    .line 266
    .end local v17           #i:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_13

    .line 267
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStartTime:J

    move-wide v7, v0

    sub-long/2addr v5, v7

    long-to-int v13, v5

    .line 269
    .local v13, current:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    move v5, v0

    if-lt v13, v5, :cond_9

    .line 270
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    move v13, v0

    .line 271
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_9

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 276
    :cond_9
    int-to-float v5, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    move v6, v0

    int-to-float v6, v6

    div-float v18, v5, v6

    .line 277
    .local v18, progress:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v6

    if-eq v5, v6, :cond_a

    .line 278
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateWallpaperOffset(IIF)V

    .line 284
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    move v5, v0

    if-lt v13, v5, :cond_b

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    const/4 v5, 0x7

    :goto_4
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 288
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    array-length v5, v5

    if-eq v5, v12, :cond_d

    .line 289
    :cond_c
    const-string v5, "QuickViewWorkspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dipathDraw mAnimationState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mCurrnetRect.length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v7, v0

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  array count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    if-lez v12, :cond_d

    new-array v5, v12, [Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    .line 293
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v8, v0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    .line 295
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_5
    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_11

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_10

    .line 295
    :cond_e
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 285
    .end local v17           #i:I
    :cond_f
    const/16 v5, 0x8

    goto/16 :goto_4

    .line 297
    .restart local v17       #i:I
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 298
    .restart local v11       #child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v5

    sget-object v10, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v6, v0

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v7, v0

    aget-object v7, v7, v17

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v8, v0

    aget-object v8, v8, v17

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isAvailableRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_6

    .line 307
    .end local v11           #child:Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    if-ltz v5, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    if-ge v5, v12, :cond_12

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move/from16 v17, v0

    .line 309
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 310
    .restart local v11       #child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v5

    sget-object v10, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v6, v0

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v7, v0

    aget-object v7, v7, v17

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v8, v0

    aget-object v8, v8, v17

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 316
    .end local v11           #child:Landroid/view/View;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    goto/16 :goto_0

    .line 319
    .end local v13           #current:I
    .end local v17           #i:I
    .end local v18           #progress:F
    :cond_13
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_7
    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_1

    .line 320
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 319
    add-int/lit8 v17, v17, 0x1

    goto :goto_7
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 27
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 593
    const/4 v12, 0x0

    .line 594
    .local v12, ret:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 595
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStartTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move v7, v0

    .line 597
    .local v7, current:I
    move v0, v7

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v11, v22, v23

    .line 598
    .local v11, progress:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    move v5, v11

    .line 599
    .local v5, backgroundAlpha:F
    :goto_0
    const/high16 v22, 0x3f80

    move/from16 v0, v22

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 600
    const/16 v22, 0x0

    move/from16 v0, v22

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    const/high16 v23, 0x437f

    mul-float v23, v23, v5

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v26

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 611
    .end local v5           #backgroundAlpha:F
    .end local v7           #current:I
    .end local v11           #progress:F
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 613
    .local v17, tag:Ljava/lang/Object;
    sget-object v22, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 614
    check-cast v17, Ljava/lang/Integer;

    .end local v17           #tag:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 617
    .local v16, screen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 619
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v15, v22, v23

    .line 623
    .local v15, scaleV:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v14, v22, v23

    .line 624
    .local v14, scaleH:F
    cmpl-float v22, v15, v14

    if-lez v22, :cond_6

    move v13, v14

    .line 626
    .local v13, scale:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 631
    const/16 v22, 0x11

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v13

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v13

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-static/range {v22 .. v26}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    .line 635
    .local v20, xOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 637
    .local v21, yOffset:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v22

    add-int v22, v22, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v23

    add-int v23, v23, v21

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 639
    move-object/from16 v0, p1

    move v1, v13

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 640
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 648
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 661
    .end local v6           #child:Landroid/view/View;
    .end local v13           #scale:F
    .end local v14           #scaleH:F
    .end local v15           #scaleV:F
    .end local v16           #screen:I
    .end local v20           #xOffset:I
    .end local v21           #yOffset:I
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 662
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v8, v0

    .line 664
    .local v8, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTrashPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object v1, v8

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 673
    .end local v8           #dragBitmap:Landroid/graphics/Bitmap;
    :cond_2
    :goto_4
    return v12

    .line 598
    .restart local v7       #current:I
    .restart local v11       #progress:F
    :cond_3
    const/high16 v22, 0x3f80

    sub-float v22, v22, v11

    move/from16 v5, v22

    goto/16 :goto_0

    .line 605
    .end local v7           #current:I
    .end local v11           #progress:F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 606
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 608
    :cond_5
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v12

    goto/16 :goto_1

    .restart local v6       #child:Landroid/view/View;
    .restart local v14       #scaleH:F
    .restart local v15       #scaleV:F
    .restart local v16       #screen:I
    :cond_6
    move v13, v15

    .line 624
    goto/16 :goto_2

    .line 652
    .end local v6           #child:Landroid/view/View;
    .end local v14           #scaleH:F
    .end local v15           #scaleV:F
    .end local v16           #screen:I
    .restart local v17       #tag:Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 653
    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 654
    .local v9, height:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v23

    sub-int v23, v23, v19

    div-int/lit8 v23, v23, 0x2

    add-int v10, v22, v23

    .line 655
    .local v10, left:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v23

    sub-int v23, v23, v9

    div-int/lit8 v23, v23, 0x2

    add-int v18, v22, v23

    .line 657
    .local v18, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    add-int v23, v10, v19

    add-int v24, v18, v9

    move-object/from16 v0, v22

    move v1, v10

    move/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .line 666
    .end local v9           #height:I
    .end local v10           #left:I
    .end local v17           #tag:Ljava/lang/Object;
    .end local v18           #top:I
    .end local v19           #width:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressBitmap:Landroid/graphics/Bitmap;

    move-object v8, v0

    .line 667
    .restart local v8       #dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object v1, v8

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4
.end method

.method public drawCloseAnimation()V
    .locals 2

    .prologue
    .line 1411
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1412
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 1413
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    .line 1415
    :cond_0
    return-void
.end method

.method public drawOpenAnimation()V
    .locals 1

    .prologue
    .line 1406
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 1407
    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    .line 1408
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 754
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    return v0
.end method

.method public getDeleteIndex()I
    .locals 1

    .prologue
    .line 741
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    return v0
.end method

.method initScreen(I)V
    .locals 8
    .parameter "screenCount"

    .prologue
    const v7, 0x7f02012c

    .line 809
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeAllViews()V

    .line 811
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setBackgroundResource(I)V

    .line 813
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 814
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    .line 816
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 817
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 819
    .local v4, resources:Landroid/content/res/Resources;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 820
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    .line 822
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 823
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 824
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    .line 828
    const v5, 0x7f02005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    .line 830
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 831
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    .line 830
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 834
    :cond_0
    sget v5, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge p1, v5, :cond_1

    .line 835
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 842
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 844
    return-void
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 758
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 760
    :cond_0
    const/4 v0, 0x0

    .line 762
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isOpened()Z
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 579
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 580
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    .line 581
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    .line 582
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mClickCheck:Z

    if-eqz v0, :cond_0

    .line 585
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addScreen()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 401
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 402
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 404
    .local v5, y:F
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    move v8, v12

    .line 469
    :goto_0
    return v8

    .line 408
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 469
    :cond_1
    :goto_1
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    if-eqz v8, :cond_3

    move v8, v12

    goto :goto_0

    .line 410
    :sswitch_0
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutProcess:Z

    if-eqz v8, :cond_1

    .line 411
    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 413
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v6, v8

    .line 414
    .local v6, y1:I
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v3, v8

    .line 415
    .local v3, x1:I
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 416
    .local v7, y2:I
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v4, v8

    .line 418
    .local v4, x2:I
    sub-int v8, v6, v7

    sub-int v9, v6, v7

    mul-int/2addr v8, v9

    sub-int v9, v3, v4

    sub-int v10, v3, v4

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMovePinchStart:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMovePinch:I

    .line 420
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMovePinch:I

    const/16 v9, 0x64

    if-le v8, v9, :cond_1

    .line 421
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutIndex:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 422
    .local v1, childOnPinch:Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v8, v9, :cond_1

    .line 424
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    .line 425
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutProcess:Z

    .line 426
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutIndex:I

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    .line 427
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    .line 428
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    move v8, v12

    .line 429
    goto :goto_0

    .line 436
    .end local v1           #childOnPinch:Landroid/view/View;
    .end local v3           #x1:I
    .end local v4           #x2:I
    .end local v6           #y1:I
    .end local v7           #y2:I
    :sswitch_1
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    .line 437
    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    goto :goto_1

    .line 441
    :sswitch_2
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    if-eqz v8, :cond_2

    .line 442
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    .line 443
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutProcess:Z

    goto :goto_1

    .line 445
    :cond_2
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 446
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->endDrag()V

    goto :goto_1

    .line 451
    :sswitch_3
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    if-nez v8, :cond_1

    .line 452
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    .line 454
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v6, v8

    .line 455
    .restart local v6       #y1:I
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v3, v8

    .line 456
    .restart local v3       #x1:I
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 457
    .restart local v7       #y2:I
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v4, v8

    .line 459
    .restart local v4       #x2:I
    invoke-direct {p0, v3, v6}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v8

    invoke-direct {p0, v4, v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 460
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutProcess:Z

    .line 461
    sub-int v8, v6, v7

    sub-int v9, v6, v7

    mul-int/2addr v8, v9

    sub-int v9, v3, v4

    sub-int v10, v3, v4

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMovePinchStart:I

    .line 463
    invoke-direct {p0, v3, v6}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutIndex:I

    goto/16 :goto_1

    .end local v3           #x1:I
    .end local v4           #x2:I
    .end local v6           #y1:I
    .end local v7           #y2:I
    :cond_3
    move v8, v11

    .line 469
    goto/16 :goto_0

    .line 408
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
    const-string v8, "QuickViewWorkspace"

    .line 351
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 353
    .local v1, count:I
    const/4 v4, 0x1

    if-ge v1, v4, :cond_1

    .line 387
    :cond_0
    return-void

    .line 355
    :cond_1
    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-le v1, v4, :cond_2

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    .line 357
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    array-length v4, v4

    if-eq v4, v1, :cond_4

    .line 358
    :cond_3
    if-lez v1, :cond_4

    new-array v4, v1, [Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    .line 361
    :cond_4
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getViewLayout(I)V

    .line 362
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 363
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 364
    .local v0, child:Landroid/view/View;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 366
    .local v3, r:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_7

    .line 367
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v4, v2

    .line 369
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    if-nez v4, :cond_6

    .line 370
    const-string v4, "QuickViewWorkspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getChildCount() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v4, "QuickViewWorkspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'i\' value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getViewLayout(I)V

    .line 375
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 377
    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 378
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mEnabledChildAnimation:Z

    if-eqz v4, :cond_8

    .line 379
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    .line 380
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v2

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 362
    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 383
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v2

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v2

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 565
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 574
    :goto_0
    return v0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 568
    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 572
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->startDrag(Landroid/view/View;)V

    :cond_2
    move v0, v2

    .line 574
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 392
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 393
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "ev"

    .prologue
    .line 474
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 475
    .local v0, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 476
    .local v8, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 479
    .local v9, y:F
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_0

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/16 v12, 0x8

    if-eq v11, v12, :cond_0

    const/4 v11, 0x0

    .line 561
    :goto_0
    return v11

    .line 481
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 561
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v11, 0x1

    goto :goto_0

    .line 485
    :pswitch_1
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    sub-float/2addr v11, v8

    float-to-int v2, v11

    .line 486
    .local v2, deltaX:I
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    sub-float/2addr v11, v9

    float-to-int v3, v11

    .line 488
    .local v3, deltaY:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    .line 489
    .local v6, touchSlop:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v11, v6, :cond_5

    const/4 v11, 0x1

    move v10, v11

    .line 491
    .local v10, yMoved:Z
    :goto_2
    if-eqz v10, :cond_2

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    if-nez v11, :cond_2

    .line 492
    const/4 v11, 0x1

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 495
    :cond_2
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 496
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 497
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_3

    .line 498
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    .line 499
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 500
    iget v11, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v2

    iput v11, v5, Landroid/graphics/Rect;->left:I

    .line 501
    iget v11, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v3

    iput v11, v5, Landroid/graphics/Rect;->top:I

    .line 502
    iget v11, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v2

    iput v11, v5, Landroid/graphics/Rect;->right:I

    .line 503
    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v3

    iput v11, v5, Landroid/graphics/Rect;->bottom:I

    .line 505
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    iget v13, v5, Landroid/graphics/Rect;->right:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 507
    .end local v5           #r:Landroid/graphics/Rect;
    :cond_3
    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    .line 508
    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    .line 511
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 513
    .local v7, v:Landroid/view/View;
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v4

    .line 514
    .local v4, index:I
    const/4 v11, -0x1

    if-eq v4, v11, :cond_4

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    if-eq v4, v11, :cond_4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v11, v12, :cond_4

    .line 515
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 516
    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 517
    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    .line 523
    :cond_4
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isDeleteZone(II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 524
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->applyDeleteZone()V

    .line 525
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    goto/16 :goto_1

    .line 489
    .end local v1           #child:Landroid/view/View;
    .end local v4           #index:I
    .end local v7           #v:Landroid/view/View;
    .end local v10           #yMoved:Z
    :cond_5
    const/4 v11, 0x0

    move v10, v11

    goto :goto_2

    .line 527
    .restart local v1       #child:Landroid/view/View;
    .restart local v4       #index:I
    .restart local v7       #v:Landroid/view/View;
    .restart local v10       #yMoved:Z
    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 528
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 530
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    .line 532
    :cond_7
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 533
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v4

    .line 534
    const/4 v11, -0x1

    if-eq v4, v11, :cond_1

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    if-eq v4, v11, :cond_1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v11, v12, :cond_1

    .line 535
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 536
    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 537
    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    goto/16 :goto_1

    .line 546
    .end local v1           #child:Landroid/view/View;
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #index:I
    .end local v6           #touchSlop:I
    .end local v7           #v:Landroid/view/View;
    .end local v10           #yMoved:Z
    :pswitch_2
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 547
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drop(II)V

    .line 550
    :cond_8
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-nez v11, :cond_9

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    if-eqz v11, :cond_a

    .line 552
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    .line 555
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->endDrag()V

    goto/16 :goto_1

    .line 481
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method open()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 699
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mEnabledChildAnimation:Z

    .line 700
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setVisibility(I)V

    .line 702
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    .line 703
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    .line 704
    .local v0, vDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 705
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->resetMode()V

    .line 707
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    .line 708
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenIndexOnOpen:I

    .line 710
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->enableWorkspaceScreensCache()V

    .line 711
    return-void
.end method

.method public removeScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1022
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1023
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1038
    :goto_0
    return-void

    .line 1027
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 1029
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    .line 1030
    .local v0, count:I
    if-lt v0, v3, :cond_2

    sub-int v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    .line 1032
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 1035
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onRemove()V

    .line 1037
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    goto :goto_0
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 767
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 768
    return-void
.end method
