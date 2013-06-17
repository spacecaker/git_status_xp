.class public Lcom/sec/android/app/camera/widget/TwStopMotionPreview;
.super Landroid/widget/RelativeLayout;
.source "TwStopMotionPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;,
        Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;
    }
.end annotation


# instance fields
.field private final DONE_BUTTON_TAG:I

.field private final FINISH_EDIT_BUTTON_TAG:I

.field private final LEFT_ARROW_TAG:I

.field private final RIGHT_ARROW_TAG:I

.field private mArrowHeight:I

.field private mArrowWidth:I

.field public mButtonLeftMargin:I

.field private mCurrentImageSwitcherCount:I

.field private mCurrentImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSelectedPos:I

.field public mDeleteButtonHeight:I

.field public mDeleteButtonWidth:I

.field private mDisabled:Z

.field private mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mDoneButtonHeight:I

.field private mDoneButtonLeftMargin:I

.field private mDoneButtonResources:[I

.field private mDoneButtonWidth:I

.field private mDragDistance:I

.field public mImageSwitcherHeight:I

.field private mImageSwitcherLayoutMarginLeft:I

.field public mImageSwitcherMarginTop:I

.field public mImageSwitcherWidth:I

.field private mLeftArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

.field private mLeftArrowLeftMargin:I

.field private mLeftMargins:[I

.field private mNumDragEvents:I

.field public mNumberOfImageSwitcherViews:I

.field private mNumberOfImages:I

.field private mPreviousMotionEvent:Landroid/view/MotionEvent;

.field private mRightArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

.field private mRightArrowLeftMargin:I

.field private mSelectedView:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

.field private mSelectedViewInitialLeftMargin:I

.field private mShowDeleteButton:Z

.field private mSlider:I

.field public mSpacing:I

.field private mSwitcherLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;",
            ">;"
        }
    .end annotation
.end field

.field mTwListener:Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;

.field private mViewDragged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSelectedView:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    .line 46
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mPreviousMotionEvent:Landroid/view/MotionEvent;

    .line 47
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSelectedViewInitialLeftMargin:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    .line 50
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 52
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherLayoutMarginLeft:I

    .line 54
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumDragEvents:I

    .line 55
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDragDistance:I

    .line 57
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mViewDragged:Z

    .line 59
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSpacing:I

    .line 60
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherWidth:I

    .line 61
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDeleteButtonWidth:I

    .line 62
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDeleteButtonHeight:I

    .line 63
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mButtonLeftMargin:I

    .line 64
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherHeight:I

    .line 65
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherMarginTop:I

    .line 66
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImageSwitcherViews:I

    .line 67
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImageSwitcherCount:I

    .line 69
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSlider:I

    .line 70
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImages:Ljava/util/List;

    .line 73
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButtonLeftMargin:I

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButtonResources:[I

    .line 75
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButtonWidth:I

    .line 76
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButtonHeight:I

    .line 77
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->DONE_BUTTON_TAG:I

    .line 78
    const/16 v0, 0x65

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->FINISH_EDIT_BUTTON_TAG:I

    .line 79
    const/16 v0, 0x66

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->LEFT_ARROW_TAG:I

    .line 80
    const/16 v0, 0x67

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->RIGHT_ARROW_TAG:I

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentSelectedPos:I

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mShowDeleteButton:Z

    .line 83
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDisabled:Z

    .line 99
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mTwListener:Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mThumbnails:Ljava/util/List;

    .line 128
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->init(Landroid/util/AttributeSet;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSelectedView:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    .line 46
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mPreviousMotionEvent:Landroid/view/MotionEvent;

    .line 47
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSelectedViewInitialLeftMargin:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    .line 50
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 52
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherLayoutMarginLeft:I

    .line 54
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumDragEvents:I

    .line 55
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDragDistance:I

    .line 57
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mViewDragged:Z

    .line 59
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSpacing:I

    .line 60
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherWidth:I

    .line 61
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDeleteButtonWidth:I

    .line 62
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDeleteButtonHeight:I

    .line 63
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mButtonLeftMargin:I

    .line 64
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherHeight:I

    .line 65
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherMarginTop:I

    .line 66
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImageSwitcherViews:I

    .line 67
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImageSwitcherCount:I

    .line 69
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSlider:I

    .line 70
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImages:Ljava/util/List;

    .line 73
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButtonLeftMargin:I

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButtonResources:[I

    .line 75
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButtonWidth:I

    .line 76
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButtonHeight:I

    .line 77
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->DONE_BUTTON_TAG:I

    .line 78
    const/16 v0, 0x65

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->FINISH_EDIT_BUTTON_TAG:I

    .line 79
    const/16 v0, 0x66

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->LEFT_ARROW_TAG:I

    .line 80
    const/16 v0, 0x67

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->RIGHT_ARROW_TAG:I

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentSelectedPos:I

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mShowDeleteButton:Z

    .line 83
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDisabled:Z

    .line 99
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mTwListener:Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mThumbnails:Ljava/util/List;

    .line 133
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->init(Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method private doFling()V
    .locals 2

    .prologue
    .line 594
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImageSwitcherViews:I

    if-gt v0, v1, :cond_0

    .line 602
    :goto_0
    return-void

    .line 597
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDragDistance:I

    if-lez v0, :cond_1

    .line 598
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->rightShift()V

    goto :goto_0

    .line 600
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->leftShift()V

    goto :goto_0
.end method

.method private findMinDelta([ILandroid/widget/RelativeLayout$LayoutParams;)I
    .locals 6
    .parameter "deltas"
    .parameter "lp"

    .prologue
    const/4 v5, 0x0

    .line 420
    const/4 v1, 0x0

    .line 421
    .local v1, destinationIndex:I
    aget v4, p1, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 422
    .local v3, minDelta:I
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftMargins:[I

    aget v4, v4, v5

    iput v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 423
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    .line 424
    .local v0, count:I
    array-length v4, p1

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    if-ge v4, v5, :cond_0

    .line 425
    array-length v0, p1

    .line 427
    :cond_0
    const/4 v2, 0x1

    .local v2, ix:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 428
    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_1

    .line 429
    aget v3, p1, v2

    .line 430
    move v1, v2

    .line 431
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftMargins:[I

    aget v4, v4, v2

    iput v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 427
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    :cond_2
    return v1
.end method

.method private getViewAtPoint(II)Landroid/view/View;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 379
    const/4 v0, 0x0

    .local v0, ix:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 380
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 381
    .local v3, view:Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 382
    .local v1, outRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 383
    .local v2, point:Landroid/graphics/Point;
    invoke-virtual {v3, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 384
    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-le p1, v4, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->right:I

    if-ge p1, v4, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-le p2, v4, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v4, :cond_0

    move-object v4, v3

    .line 389
    .end local v1           #outRect:Landroid/graphics/Rect;
    .end local v2           #point:Landroid/graphics/Point;
    .end local v3           #view:Landroid/view/View;
    :goto_1
    return-object v4

    .line 379
    .restart local v1       #outRect:Landroid/graphics/Rect;
    .restart local v2       #point:Landroid/graphics/Point;
    .restart local v3       #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .end local v1           #outRect:Landroid/graphics/Rect;
    .end local v2           #point:Landroid/graphics/Point;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 14
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v13, -0x1

    const/4 v12, 0x4

    const/16 v11, 0xf

    const/4 v3, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/R$styleable;->TwStopMotionPreview:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 140
    .local v7, attr:Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v7, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSpacing:I

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v7, v4, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherWidth:I

    .line 147
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDeleteButtonWidth:I

    .line 150
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDeleteButtonHeight:I

    .line 154
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v7, v12, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mButtonLeftMargin:I

    .line 158
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImageSwitcherViews:I

    .line 162
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftArrowLeftMargin:I

    .line 166
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mRightArrowLeftMargin:I

    .line 170
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mArrowWidth:I

    .line 173
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mArrowHeight:I

    .line 176
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherLayoutMarginLeft:I

    .line 180
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButtonWidth:I

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v7, v11, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButtonHeight:I

    .line 187
    new-instance v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButtonResources:[I

    const/4 v1, 0x7

    invoke-virtual {v7, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    aput v1, v0, v3

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButtonResources:[I

    const/16 v1, 0x8

    invoke-virtual {v7, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    aput v1, v0, v4

    .line 194
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButtonLeftMargin:I

    .line 198
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherHeight:I

    .line 202
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherMarginTop:I

    .line 206
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButtonWidth:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButtonHeight:I

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 208
    .local v8, doneButtonParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButtonLeftMargin:I

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 209
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setTag(Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setNormalImage(I)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressedImage(I)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setNormalBackground(I)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressedBackground(I)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {p0, v0, v8}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 222
    new-instance v0, Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/TwLayoutButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    .line 223
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherLayoutMarginLeft:I

    invoke-direct {v9, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 225
    .local v9, leftArrowParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {p0, v0, v9}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setTag(Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mArrowWidth:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mArrowHeight:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftArrowLeftMargin:I

    const v4, 0x7f0201c8

    const/16 v5, 0x66

    const v6, 0x7f0201c7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setButtonParams(IIIIII)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setVisibility(I)V

    .line 235
    new-instance v0, Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/TwLayoutButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mRightArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    .line 236
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherLayoutMarginLeft:I

    invoke-direct {v10, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 238
    .local v10, rightArrowParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mRightArrowLeftMargin:I

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mRightArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mArrowWidth:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mArrowHeight:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftArrowLeftMargin:I

    const v4, 0x7f0201ca

    const/16 v5, 0x67

    const v6, 0x7f0201c9

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setButtonParams(IIIIII)V

    .line 242
    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mRightArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {p0, v0, v10}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mRightArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setTag(Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mRightArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mRightArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setVisibility(I)V

    .line 247
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    return-void
.end method

.method private initMargins()V
    .locals 4

    .prologue
    .line 251
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImageSwitcherViews:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftMargins:[I

    .line 252
    const/4 v0, 0x0

    .local v0, ix:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftMargins:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftMargins:[I

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSpacing:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherWidth:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherLayoutMarginLeft:I

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    return-void
.end method

.method private isFling()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 505
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumDragEvents:I

    if-nez v1, :cond_0

    move v1, v3

    .line 512
    :goto_0
    return v1

    .line 508
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDragDistance:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumDragEvents:I

    div-int v0, v1, v2

    .line 509
    .local v0, ratio:I
    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 510
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 512
    goto :goto_0
.end method

.method private leftShift()V
    .locals 5

    .prologue
    .line 605
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentSelectedPos:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImageSwitcherViews:I

    sub-int/2addr v1, v2

    if-gez v1, :cond_1

    .line 613
    :cond_0
    return-void

    .line 608
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentSelectedPos:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentSelectedPos:I

    .line 609
    const/4 v0, 0x0

    .local v0, jx:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImages:Ljava/util/List;

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentSelectedPos:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImageSwitcherViews:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mShowDeleteButton:Z

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->setImageSwitcherImage(IZ)V

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private normalizeViews()V
    .locals 8

    .prologue
    .line 396
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSelectedView:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 397
    .local v3, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImageSwitcherViews:I

    new-array v0, v5, [I

    .line 398
    .local v0, deltas:[I
    const/4 v2, 0x0

    .local v2, ix:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 399
    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftMargins:[I

    aget v6, v6, v2

    iget v7, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSpacing:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    aput v5, v0, v2

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSelectedView:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 402
    .local v4, originIndex:I
    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->findMinDelta([ILandroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    .line 404
    .local v1, destinationIndex:I
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSelectedView:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget v5, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImageSwitcherCount:I

    if-ge v1, v5, :cond_1

    .line 406
    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v6, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSelectedViewInitialLeftMargin:I

    if-eq v5, v6, :cond_1

    .line 407
    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->moveView(II)V

    .line 410
    :cond_1
    return-void
.end method

.method private refresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 581
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentSelectedPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentSelectedPos:I

    .line 582
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImageSwitcherViews:I

    if-le v0, v1, :cond_0

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mRightArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setVisibility(I)V

    .line 586
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->leftShift()V

    .line 588
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentSelectedPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    if-ge v0, v1, :cond_1

    .line 589
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->rightShift()V

    goto :goto_0

    .line 591
    :cond_1
    return-void
.end method

.method private rightShift()V
    .locals 5

    .prologue
    .line 616
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentSelectedPos:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    if-ge v1, v2, :cond_0

    .line 617
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentSelectedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentSelectedPos:I

    .line 618
    const/4 v0, 0x0

    .local v0, jx:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImages:Ljava/util/List;

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentSelectedPos:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImageSwitcherViews:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mShowDeleteButton:Z

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->setImageSwitcherImage(IZ)V

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    .end local v0           #jx:I
    :cond_0
    return-void
.end method

.method private viewDragged()Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mViewDragged:Z

    return v0
.end method


# virtual methods
.method public addImageSwitchers()V
    .locals 4

    .prologue
    .line 258
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftMargins:[I

    if-nez v2, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->initMargins()V

    .line 262
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 263
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImages:Ljava/util/List;

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImageSwitcherCount:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImageSwitcherViews:I

    if-ge v2, v3, :cond_3

    .line 268
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherWidth:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 271
    .local v1, switcherLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v1, :cond_2

    .line 292
    .end local v1           #switcherLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 273
    .restart local v1       #switcherLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftMargins:[I

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImageSwitcherCount:I

    aget v2, v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 274
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mImageSwitcherMarginTop:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 275
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 276
    new-instance v0, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/widget/TwStopMotionPreview;)V

    .line 277
    .local v0, switcherLayout:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mShowDeleteButton:Z

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->setImageSwitcherImage(IZ)V

    .line 280
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->addView(Landroid/view/View;)V

    .line 281
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImageSwitcherCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImageSwitcherCount:I

    .line 284
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    .line 285
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSlider:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSlider:I

    .line 286
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSlider:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSlider:I

    .line 287
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->refresh()V

    goto :goto_0

    .line 289
    .end local v0           #switcherLayout:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;
    .end local v1           #switcherLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    .line 290
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->refresh()V

    goto :goto_0
.end method

.method public addThumbNailImage([B)V
    .locals 3
    .parameter "jpegData"

    .prologue
    .line 295
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mContext:Landroid/content/Context;

    const-string v1, "Can\'t capture more than 50 pictures"

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 302
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mThumbnails:Ljava/util/List;

    new-instance v1, Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;-><init>(Lcom/sec/android/app/camera/widget/TwStopMotionPreview;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->addImageSwitchers()V

    goto :goto_0
.end method

.method public deleteImageAt(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 654
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImages:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 655
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentSelectedPos:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentSelectedPos:I

    .line 656
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    .line 658
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    if-nez v3, :cond_1

    .line 659
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mTwListener:Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;

    if-eqz v3, :cond_0

    .line 660
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mTwListener:Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;

    invoke-interface {v3}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;->onTwStopMotionRestoreMenu()V

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    if-ne v3, v5, :cond_2

    .line 664
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mTwListener:Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;

    if-eqz v3, :cond_0

    .line 665
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mThumbnails:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImages:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;

    .line 667
    .local v2, tmpImg:Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->reset()V

    .line 668
    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;->getCaptureData()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->addThumbNailImage([B)V

    .line 669
    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;->clear()V

    .line 671
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mTwListener:Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;

    invoke-interface {v3}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;->onTwStopMotionCaptureEditingStarted()V

    goto :goto_0

    .line 674
    .end local v2           #tmpImg:Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;
    :cond_2
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImageSwitcherCount:I

    if-le v3, v4, :cond_3

    .line 675
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->leftShift()V

    .line 676
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->rightShift()V

    goto :goto_0

    .line 678
    :cond_3
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 679
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImageSwitcherCount:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImageSwitcherCount:I

    .line 681
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setVisibility(I)V

    .line 682
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mRightArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setVisibility(I)V

    .line 683
    const/4 v1, 0x0

    .line 684
    .local v1, jx:I
    :goto_1
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    if-ge v1, v3, :cond_5

    .line 685
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->setImageSwitcherImage(IZ)V

    .line 684
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 687
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v0, deleteList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;>;"
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 689
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 691
    :cond_6
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 692
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->removeView(Landroid/view/View;)V

    .line 693
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public getThumbnailAt(I)[B
    .locals 1
    .parameter "pos"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mThumbnails:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;->getCaptureData()[B

    move-result-object v0

    return-object v0
.end method

.method public moveView(II)V
    .locals 13
    .parameter "orgIx"
    .parameter "destIx"

    .prologue
    .line 444
    iget v10, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentSelectedPos:I

    iget v11, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImageSwitcherViews:I

    sub-int/2addr v10, v11

    add-int/lit8 v3, v10, 0x1

    .line 445
    .local v3, delta:I
    if-gez v3, :cond_0

    .line 446
    const/4 v3, 0x0

    .line 449
    :cond_0
    sub-int v10, p1, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 451
    .local v8, numItems:I
    iget v10, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImageSwitcherCount:I

    new-array v0, v10, [I

    .line 452
    .local v0, array:[I
    iget v10, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImageSwitcherCount:I

    new-array v7, v10, [I

    .line 454
    .local v7, newArray:[I
    const/4 v4, 0x0

    .local v4, ix:I
    :goto_0
    iget v10, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImageSwitcherCount:I

    if-ge v4, v10, :cond_1

    .line 455
    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImages:Ljava/util/List;

    add-int v11, v4, v3

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v0, v4

    .line 456
    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImages:Ljava/util/List;

    add-int v11, v4, v3

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v7, v4

    .line 454
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 459
    :cond_1
    aget v10, v0, p1

    aput v10, v7, p2

    .line 460
    if-ge p2, p1, :cond_2

    .line 461
    const/4 v1, 0x0

    .line 462
    .local v1, count:I
    add-int/lit8 p2, p2, 0x1

    .line 463
    :goto_1
    if-ge v1, v8, :cond_3

    .line 464
    const/4 v10, 0x1

    sub-int v10, p2, v10

    aget v10, v0, v10

    aput v10, v7, p2

    .line 465
    add-int/lit8 p2, p2, 0x1

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 468
    .end local v1           #count:I
    :cond_2
    if-ge p1, p2, :cond_7

    .line 469
    const/4 v1, 0x0

    .line 470
    .restart local v1       #count:I
    :goto_2
    if-ge v1, v8, :cond_3

    .line 471
    add-int/lit8 v10, p1, 0x1

    aget v10, v0, v10

    aput v10, v7, p1

    .line 472
    add-int/lit8 p1, p1, 0x1

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 478
    :cond_3
    const/4 v2, 0x0

    .local v2, counter:I
    :goto_3
    array-length v10, v7

    if-ge v2, v10, :cond_4

    .line 479
    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImages:Ljava/util/List;

    add-int v11, v3, v2

    aget v12, v7, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 482
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v9, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;>;"
    const/4 v4, 0x0

    :goto_4
    iget v10, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImageSwitcherCount:I

    if-ge v4, v10, :cond_5

    .line 484
    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    .line 485
    .local v5, layout:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;
    invoke-virtual {v5}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->disableAnimation()V

    .line 486
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 488
    .end local v5           #layout:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;
    :cond_5
    const/4 v4, 0x0

    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_6

    .line 489
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    .line 490
    .restart local v5       #layout:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;
    invoke-virtual {v5}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 491
    .local v6, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftMargins:[I

    aget v10, v10, v4

    iput v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 492
    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImages:Ljava/util/List;

    add-int v11, v4, v3

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-boolean v11, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mShowDeleteButton:Z

    invoke-virtual {v5, v10, v11}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->setImageSwitcherImage(IZ)V

    .line 488
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 496
    .end local v5           #layout:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;
    .end local v6           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    iput-object v9, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    .line 498
    const/4 v4, 0x0

    :goto_6
    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_7

    .line 499
    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    .line 500
    .restart local v5       #layout:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;
    invoke-virtual {v5}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->enableAnimation()V

    .line 498
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 502
    .end local v1           #count:I
    .end local v2           #counter:I
    .end local v5           #layout:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;
    .end local v9           #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;>;"
    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const-string v8, "TwStopMotionPreview"

    .line 521
    iget-boolean v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDisabled:Z

    if-eqz v4, :cond_0

    .line 578
    :goto_0
    return-void

    .line 525
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 526
    .local v2, tag:I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 575
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->deleteImageAt(I)V

    goto :goto_0

    .line 528
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/16 v5, 0x65

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/TwImageButton;->setTag(Ljava/lang/Object;)V

    .line 529
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v5, 0x7f020044

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/TwImageButton;->setNormalImage(I)V

    .line 530
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v5, 0x7f020045

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressedImage(I)V

    .line 531
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 532
    iput-boolean v7, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mShowDeleteButton:Z

    .line 534
    const/4 v1, 0x0

    .local v1, ix:I
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 535
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->showDeleteButton()V

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 538
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mTwListener:Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;

    invoke-interface {v4}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;->onTwStopMotionPreviewEditingStarted()V

    goto :goto_0

    .line 542
    .end local v1           #ix:I
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->leftShift()V

    goto :goto_0

    .line 546
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->rightShift()V

    goto :goto_0

    .line 550
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 552
    const-string v4, "TwStopMotionPreview"

    const-string v4, "onClick : FINISH_EDIT_BUTTON_TAG"

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .local v3, tempJpegs:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;>;"
    const/4 v1, 0x0

    .restart local v1       #ix:I
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 555
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mThumbnails:Ljava/util/List;

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 557
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mThumbnails:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 558
    iput-object v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mThumbnails:Ljava/util/List;

    .line 560
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mTwListener:Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;

    if-eqz v4, :cond_4

    .line 561
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mThumbnails:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 562
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mThumbnails:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    if-ne v0, v4, :cond_3

    .line 563
    const-string v4, "TwStopMotionPreview"

    const-string v4, "chkAppendFrameComplete : TRUE"

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mTwListener:Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getThumbnailAt(I)[B

    move-result-object v5

    invoke-interface {v4, v5, v7}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;->onTwStopMotionPreviewEditingFinished([BZ)V

    .line 561
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 566
    :cond_3
    const-string v4, "TwStopMotionPreview"

    const-string v4, "chkAppendFrameComplete : FALSE"

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mTwListener:Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getThumbnailAt(I)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;->onTwStopMotionPreviewEditingFinished([BZ)V

    goto :goto_4

    .line 571
    .end local v0           #i:I
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mThumbnails:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 526
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->addImageSwitchers()V

    .line 650
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 314
    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDisabled:Z

    if-eqz v2, :cond_0

    move v2, v5

    .line 367
    :goto_0
    return v2

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    move v2, v5

    .line 318
    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    move v2, v5

    .line 367
    goto :goto_0

    .line 322
    :pswitch_0
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    if-ne v2, v5, :cond_3

    move v2, v5

    .line 323
    goto :goto_0

    .line 325
    :cond_3
    iput-object v6, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mPreviousMotionEvent:Landroid/view/MotionEvent;

    .line 326
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSelectedView:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    if-eqz v2, :cond_4

    .line 327
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->normalizeViews()V

    .line 329
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->isFling()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->viewDragged()Z

    move-result v2

    if-nez v2, :cond_5

    .line 330
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->doFling()V

    .line 332
    :cond_5
    iput-boolean v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mViewDragged:Z

    goto :goto_1

    .line 336
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    if-ne v2, v5, :cond_6

    move v2, v5

    .line 337
    goto :goto_0

    .line 339
    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumDragEvents:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumDragEvents:I

    .line 340
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mPreviousMotionEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_7

    .line 341
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDragDistance:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mPreviousMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDragDistance:I

    .line 342
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mPreviousMotionEvent:Landroid/view/MotionEvent;

    .line 343
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSelectedView:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->isFling()Z

    move-result v2

    if-nez v2, :cond_2

    .line 344
    iput-boolean v5, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mViewDragged:Z

    .line 345
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSelectedView:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 346
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 347
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSelectedView:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 350
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mPreviousMotionEvent:Landroid/view/MotionEvent;

    .line 351
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mPreviousMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mPreviousMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->getViewAtPoint(II)Landroid/view/View;

    move-result-object v1

    .line 352
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_8

    instance-of v2, v1, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    if-eqz v2, :cond_8

    .line 353
    check-cast v1, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    .end local v1           #view:Landroid/view/View;
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSelectedView:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    .line 354
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSelectedView:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSelectedViewInitialLeftMargin:I

    goto/16 :goto_1

    .line 356
    .restart local v1       #view:Landroid/view/View;
    :cond_8
    iput-object v6, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSelectedView:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    goto/16 :goto_1

    .line 362
    .end local v1           #view:Landroid/view/View;
    :pswitch_2
    iput v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumDragEvents:I

    .line 363
    iput v4, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDragDistance:I

    goto/16 :goto_1

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 700
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 701
    iput v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentImageSwitcherCount:I

    .line 702
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setVisibility(I)V

    .line 703
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mRightArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setVisibility(I)V

    .line 704
    iput v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mNumberOfImages:I

    .line 705
    iput v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSlider:I

    .line 706
    iput v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mCurrentSelectedPos:I

    .line 708
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 709
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setNormalImage(I)V

    .line 710
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v2, 0x7f020043

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressedImage(I)V

    .line 711
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v2, 0x7f020041

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setNormalBackground(I)V

    .line 712
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v2, 0x7f020040

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressedBackground(I)V

    .line 713
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 714
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setTag(Ljava/lang/Object;)V

    .line 716
    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mShowDeleteButton:Z

    .line 717
    const/4 v0, 0x0

    .local v0, ix:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->removeView(Landroid/view/View;)V

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 721
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSelectedView:Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    .line 723
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mThumbnails:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 724
    return-void
.end method

.method public setButtonLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 638
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDisabled:Z

    .line 639
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 640
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setDisabled(Z)V

    .line 641
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mRightArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setDisabled(Z)V

    .line 642
    const/4 v0, 0x0

    .local v0, ix:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->setDisabled(Z)V

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    :cond_0
    return-void
.end method

.method public setButtonUnlocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 628
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDisabled:Z

    .line 629
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mDoneButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 630
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mLeftArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setDisabled(Z)V

    .line 631
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mRightArrow:Lcom/sec/android/app/camera/widget/TwLayoutButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setDisabled(Z)V

    .line 632
    const/4 v0, 0x0

    .local v0, ix:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mSwitcherLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwImageSwitcherLayout;->setDisabled(Z)V

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    :cond_0
    return-void
.end method

.method public setTwStopMotionPreviewEventListener(Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview;->mTwListener:Lcom/sec/android/app/camera/widget/TwStopMotionPreview$TwStopMotionPreviewEventListener;

    .line 103
    return-void
.end method
