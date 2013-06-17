.class public Lcom/sec/android/app/camera/widget/TwGridView;
.super Landroid/widget/RelativeLayout;
.source "TwGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;,
        Lcom/sec/android/app/camera/widget/TwGridView$TouchEventConsumer;,
        Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    }
.end annotation


# instance fields
.field private mAttrs:Landroid/util/AttributeSet;

.field private mClickPass:Z

.field private mClickSound:Z

.field private mCurrentPage:I

.field private mDescriptionPanel:Landroid/view/View;

.field private mFocusID:I

.field private mGridAdapter:Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;

.field private mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

.field mGridButtonListener:Landroid/view/View$OnClickListener;

.field private mGridDescriptionX:I

.field private mGridDescriptionY:I

.field private mGridLayoutHeight:I

.field private mGridLayoutWidth:I

.field private mGridLayoutWithoutScroll:I

.field private mGridMaxItemsPerPage:I

.field private mGridSaveButtonX:I

.field private mGridSaveButtonY:I

.field private mGridScrollX:I

.field private mGridScrollY:I

.field private mGridStyle:I

.field private mGridView:Landroid/widget/GridView;

.field private mGridViewLayout:Landroid/widget/RelativeLayout;

.field private mGridViewLayoutX:I

.field private mGridViewLayoutY:I

.field private mImageButtonX:I

.field private mImageButtonY:I

.field private mImageText:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

.field private mNumOfColumns:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParentContext:Landroid/content/Context;

.field private mSaveButton:Landroid/widget/ImageButton;

.field private mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

.field mScrollListener:Landroid/view/View$OnClickListener;

.field private mSelectID:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mToTalPages:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 69
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    .line 70
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 75
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    .line 80
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    .line 92
    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mClickSound:Z

    .line 93
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mClickPass:Z

    .line 99
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    .line 106
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mDescriptionPanel:Landroid/view/View;

    .line 119
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 127
    iput v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageText:I

    .line 132
    iput v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonX:I

    .line 133
    iput v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonY:I

    .line 135
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    .line 136
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mAttrs:Landroid/util/AttributeSet;

    .line 691
    new-instance v0, Lcom/sec/android/app/camera/widget/TwGridView$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView$5;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonListener:Landroid/view/View$OnClickListener;

    .line 710
    new-instance v0, Lcom/sec/android/app/camera/widget/TwGridView$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView$6;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollListener:Landroid/view/View$OnClickListener;

    .line 173
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    .line 70
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 75
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    .line 80
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    .line 92
    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mClickSound:Z

    .line 93
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mClickPass:Z

    .line 99
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    .line 106
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mDescriptionPanel:Landroid/view/View;

    .line 119
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 127
    iput v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageText:I

    .line 132
    iput v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonX:I

    .line 133
    iput v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonY:I

    .line 135
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    .line 136
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mAttrs:Landroid/util/AttributeSet;

    .line 691
    new-instance v0, Lcom/sec/android/app/camera/widget/TwGridView$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView$5;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonListener:Landroid/view/View$OnClickListener;

    .line 710
    new-instance v0, Lcom/sec/android/app/camera/widget/TwGridView$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView$6;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollListener:Landroid/view/View$OnClickListener;

    .line 181
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 183
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/TwGridView;->initialize(Landroid/util/AttributeSet;)V

    .line 184
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/MenuResourceBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/widget/TwGridView;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSaveButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/widget/TwGridView;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/widget/TwGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/widget/TwGridView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwGridView;->updateDescriptionPanel(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/widget/TwGridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mClickPass:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/widget/TwGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mClickPass:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/TwGridView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/TwGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonX:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/widget/TwGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonY:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/widget/TwGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageText:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/widget/TwGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mFocusID:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/widget/TwGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mFocusID:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/widget/TwGridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mClickSound:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/widget/TwGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSelectID:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/widget/TwGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSelectID:I

    return p1
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "attrs"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeTitleTextView(Landroid/util/AttributeSet;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeGridView(Landroid/util/AttributeSet;)V

    .line 192
    return-void
.end method

.method private initializeGridView(Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "attrs"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwGridView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 231
    .local v0, gridData:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    .line 233
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mNumOfColumns:I

    .line 235
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    .line 238
    new-instance v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0x9

    const v3, 0x7f02007a

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonBackgroundNormal:I

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0xa

    const v3, 0x7f02007b

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonBackgroundFocus:I

    .line 243
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonTextSize:I

    .line 245
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonLineX:I

    .line 247
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonLineY:I

    .line 249
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonLineRightMargin:I

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonWidth:I

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonHeight:I

    .line 255
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonHorizontalSpacing:I

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonVerticalSpacing:I

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0x1b

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridTextLineSpacing:I

    .line 265
    const/16 v1, 0x14

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridDescriptionX:I

    .line 267
    const/16 v1, 0x15

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridDescriptionY:I

    .line 270
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridScrollX:I

    .line 272
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridScrollY:I

    .line 274
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutWithoutScroll:I

    .line 277
    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridSaveButtonX:I

    .line 279
    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridSaveButtonY:I

    .line 282
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayout:Landroid/widget/RelativeLayout;

    .line 287
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    iget v2, v2, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonHorizontalSpacing:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayoutX:I

    .line 290
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    iget v2, v2, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonVerticalSpacing:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayoutY:I

    .line 294
    const/16 v1, 0x18

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageText:I

    .line 295
    const/16 v1, 0x19

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonX:I

    .line 296
    const/16 v1, 0x1a

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonY:I

    .line 297
    new-instance v1, Lcom/sec/android/app/camera/widget/TwGridView$1;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/sec/android/app/camera/widget/TwGridView$1;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    .line 337
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mNumOfColumns:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 338
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setGravity(I)V

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    iget v2, v2, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonHorizontalSpacing:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    iget v2, v2, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonVerticalSpacing:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    iget v2, v2, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 343
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 344
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 345
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setScrollingCacheEnabled(Z)V

    .line 346
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setDrawingCacheEnabled(Z)V

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 350
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 351
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 353
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutWidth:I

    .line 355
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutHeight:I

    .line 358
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 359
    return-void
.end method

.method private initializeTitleTextView(Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "attrs"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    .line 199
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/android/app/camera/R$styleable;->TwGridViewTitle:[I

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 200
    .local v2, title:Landroid/content/res/TypedArray;
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, textData:Ljava/lang/CharSequence;
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mAttrs:Landroid/util/AttributeSet;

    .line 203
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    .line 204
    if-eqz v1, :cond_0

    .line 205
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f09

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 208
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 209
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f08

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    const/high16 v4, 0x4000

    const/high16 v5, -0x100

    invoke-virtual {v3, v4, v8, v8, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 213
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 216
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v0, v3, v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 220
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/camera/widget/TwGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
    return-void
.end method

.method private makeDescriptionOkPanel()V
    .locals 9

    .prologue
    const v8, 0x7f03002e

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 461
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    if-ne v2, v7, :cond_0

    .line 463
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030013

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mDescriptionPanel:Landroid/view/View;

    .line 465
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 466
    .local v0, rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridDescriptionX:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridDescriptionY:I

    invoke-virtual {v0, v2, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 467
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mDescriptionPanel:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/camera/widget/TwGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    const/4 v0, 0x0

    .line 469
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mFocusID:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/widget/TwGridView;->updateDescriptionPanel(I)V

    .line 471
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mDescriptionPanel:Landroid/view/View;

    new-instance v3, Lcom/sec/android/app/camera/widget/TwGridView$TouchEventConsumer;

    invoke-direct {v3, p0, v6}, Lcom/sec/android/app/camera/widget/TwGridView$TouchEventConsumer;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;Lcom/sec/android/app/camera/widget/TwGridView$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 474
    .end local v0           #rp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    if-ne v2, v7, :cond_2

    .line 475
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03002d

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 476
    .local v1, v:Landroid/view/View;
    const v2, 0x7f0a00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSaveButton:Landroid/widget/ImageButton;

    .line 477
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSaveButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/sec/android/app/camera/widget/TwGridView$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/widget/TwGridView$2;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 493
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 494
    .restart local v0       #rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridSaveButtonX:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridSaveButtonY:I

    invoke-virtual {v0, v2, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 495
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/widget/TwGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    .end local v0           #rp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 496
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 497
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 498
    .restart local v1       #v:Landroid/view/View;
    const v2, 0x7f0a00ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSaveButton:Landroid/widget/ImageButton;

    .line 499
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSaveButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/sec/android/app/camera/widget/TwGridView$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/widget/TwGridView$3;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 515
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 516
    .restart local v0       #rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridSaveButtonX:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridSaveButtonY:I

    invoke-virtual {v0, v2, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 517
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/widget/TwGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 518
    .end local v0           #rp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #v:Landroid/view/View;
    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 519
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 520
    .restart local v1       #v:Landroid/view/View;
    const v2, 0x7f0a00ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSaveButton:Landroid/widget/ImageButton;

    .line 521
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSaveButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/sec/android/app/camera/widget/TwGridView$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/widget/TwGridView$4;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 538
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSaveButton:Landroid/widget/ImageButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private setScrollBarText()V
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mToTalPages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScroller;->setPageText(Ljava/lang/String;)V

    .line 563
    :cond_0
    return-void
.end method

.method private updateDescriptionPanel(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 655
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p1}, Lcom/sec/android/app/camera/MenuResourceBase;->findBundle(II)Lcom/sec/android/app/camera/MenuResourceBundle;

    move-result-object v0

    .line 657
    .local v0, bundle:Lcom/sec/android/app/camera/MenuResourceBundle;
    if-eqz v0, :cond_0

    .line 658
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mDescriptionPanel:Landroid/view/View;

    const v3, 0x7f0a0071

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/MenuResourceBundle;->getResourceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 660
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mDescriptionPanel:Landroid/view/View;

    const v3, 0x7f0a0073

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 661
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/MenuResourceBundle;->getResourceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    .end local v1           #text:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private updatePageSize()V
    .locals 7

    .prologue
    .line 821
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    rem-int v1, v3, v4

    .line 823
    .local v1, lastPageItems:I
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mToTalPages:I

    if-ne v3, v4, :cond_0

    if-lez v1, :cond_0

    .line 824
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mNumOfColumns:I

    div-int v2, v3, v4

    .line 825
    .local v2, removeNumOfRows:I
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutHeight:I

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    iget v4, v4, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonHeight:I

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    iget v5, v5, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonVerticalSpacing:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v2

    sub-int v0, v3, v4

    .line 826
    .local v0, gridLayoutHeight:I
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutWidth:I

    invoke-direct {v4, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 832
    .end local v0           #gridLayoutHeight:I
    .end local v2           #removeNumOfRows:I
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->setScrollBarText()V

    .line 833
    return-void

    .line 829
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutHeight:I

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public changeSelectedItem(I)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 729
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 730
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 731
    .local v1, item:Lcom/sec/android/app/camera/widget/TwImageButton;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 732
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressed()V

    .line 729
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 734
    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    goto :goto_1

    .line 738
    .end local v1           #item:Lcom/sec/android/app/camera/widget/TwImageButton;
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mFocusID:I

    .line 739
    return-void
.end method

.method public findPosFromTag(I)I
    .locals 3
    .parameter "tag"

    .prologue
    .line 743
    const/4 v0, 0x0

    .local v0, position:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 744
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/MenuResourceBundle;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;->getResourceID(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    move v1, v0

    .line 749
    :goto_1
    return v1

    .line 743
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public initializeView(Lcom/sec/android/app/camera/MenuResourceBase;I)V
    .locals 12
    .parameter "menuBase"
    .parameter "selectedID"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    .line 367
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 368
    .local v3, rl:Landroid/widget/RelativeLayout;
    iput p2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSelectID:I

    .line 369
    iput p2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mFocusID:I

    .line 370
    new-instance v8, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;)V

    iput-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridAdapter:Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;

    .line 371
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayout:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 374
    iget v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutWithoutScroll:I

    if-eqz v8, :cond_0

    .line 375
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/MenuResourceBase;->getTitle()I

    move-result v8

    const v9, 0x7f0700ad

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/MenuResourceBase;->getNumberOfItems()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 376
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mAttrs:Landroid/util/AttributeSet;

    sget-object v10, Lcom/sec/android/app/camera/R$styleable;->TwGridViewTitle:[I

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 377
    .local v7, title:Landroid/content/res/TypedArray;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 380
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v8, 0x3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    add-int/lit8 v9, v9, 0x1a

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 385
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    iget v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayoutY:I

    const/16 v9, 0x1a

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayoutY:I

    .line 388
    iget v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutHeight:I

    add-int/lit8 v8, v8, 0x3b

    iput v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutHeight:I

    .line 395
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7           #title:Landroid/content/res/TypedArray;
    :cond_0
    :goto_0
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutWidth:I

    iget v9, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutHeight:I

    invoke-direct {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 396
    .local v4, rp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 397
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    const/4 v4, 0x0

    .line 400
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v4           #rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutWidth:I

    iget v9, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutHeight:I

    invoke-direct {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 403
    .restart local v4       #rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayoutX:I

    .line 404
    .local v6, tGridViewLayoutX:I
    iget v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutWithoutScroll:I

    if-nez v8, :cond_1

    .line 405
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/MenuResourceBase;->getNumberOfItems()I

    move-result v8

    iget v9, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    if-gt v8, v9, :cond_1

    .line 406
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060073

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 407
    .local v5, scrollerWidth:F
    iget v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridScrollX:I

    iget v9, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayoutX:I

    iget v10, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutWidth:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    iget v10, v10, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonHorizontalSpacing:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-float v0, v8

    .line 409
    .local v0, gapWidth:F
    int-to-float v8, v6

    add-float v9, v5, v0

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 413
    .end local v0           #gapWidth:F
    .end local v5           #scrollerWidth:F
    :cond_1
    iget v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayoutY:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v6, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 414
    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/widget/TwGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    const/4 v4, 0x0

    .line 417
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridAdapter:Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 419
    const/4 v8, 0x1

    iput v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    .line 420
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/MenuResourceBase;->getNumberOfItems()I

    move-result v8

    iget v9, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    div-int/2addr v8, v9

    iput v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mToTalPages:I

    .line 421
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/MenuResourceBase;->getNumberOfItems()I

    move-result v8

    iget v9, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    rem-int/2addr v8, v9

    if-lez v8, :cond_2

    .line 422
    iget v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mToTalPages:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mToTalPages:I

    .line 425
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/MenuResourceBase;->getNumberOfItems()I

    move-result v8

    iget v9, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    if-le v8, v9, :cond_6

    .line 426
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f03001f

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/sec/android/app/camera/widget/TwScroller;

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    .line 427
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v4           #rp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 428
    .restart local v4       #rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridScrollX:I

    iget v9, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridScrollY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 429
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    invoke-virtual {p0, v8, v4}, Lcom/sec/android/app/camera/widget/TwGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/widget/TwScroller;->setVisibility(I)V

    .line 431
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->setScrollBarText()V

    .line 432
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/widget/TwScroller;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    const/4 v4, 0x0

    .line 438
    :goto_1
    iget v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_3

    .line 439
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->makeDescriptionOkPanel()V

    .line 448
    :cond_3
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwGridView;->findPosFromTag(I)I

    move-result v2

    .line 449
    .local v2, position:I
    iget v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    div-int v8, v2, v8

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    .line 450
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    if-eqz v8, :cond_4

    .line 451
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->updatePageSize()V

    .line 453
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->scrollToPageHeadItem()V

    .line 454
    return-void

    .line 389
    .end local v2           #position:I
    .end local v4           #rp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #tGridViewLayoutX:I
    .restart local p1
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/MenuResourceBase;->getTitle()I

    move-result v8

    const v9, 0x7f0700b1

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/MenuResourceBase;->getNumberOfItems()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 390
    const/16 v8, 0x50

    iput v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayoutX:I

    goto/16 :goto_0

    .line 435
    .restart local v4       #rp:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v6       #tGridViewLayoutX:I
    :cond_6
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    goto :goto_1
.end method

.method protected processScrollDown()V
    .locals 2

    .prologue
    .line 791
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mToTalPages:I

    if-ne v0, v1, :cond_0

    .line 792
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    .line 796
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->updatePageSize()V

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridAdapter:Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 799
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->scrollToPageHeadItem()V

    .line 800
    return-void

    .line 794
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    goto :goto_0
.end method

.method protected processScrollUp()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 806
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    .line 807
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mToTalPages:I

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    .line 811
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->updatePageSize()V

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridAdapter:Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 814
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->scrollToPageHeadItem()V

    .line 815
    return-void

    .line 809
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    goto :goto_0
.end method

.method scrollToPageHeadItem()V
    .locals 3

    .prologue
    .line 784
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 785
    return-void
.end method

.method public setClickPass(Z)V
    .locals 0
    .parameter "clickpass"

    .prologue
    .line 681
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mClickPass:Z

    .line 682
    return-void
.end method

.method public setClickSoundDisabled()V
    .locals 3

    .prologue
    .line 776
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mClickSound:Z

    .line 777
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 778
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 779
    .local v1, item:Lcom/sec/android/app/camera/widget/TwImageButton;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundDisabled()V

    .line 777
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 781
    .end local v1           #item:Lcom/sec/android/app/camera/widget/TwImageButton;
    :cond_0
    return-void
.end method

.method public setCurrentSelectedItem(I)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 753
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mFocusID:I

    .line 754
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSelectID:I

    .line 755
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/TwGridView;->changeSelectedItem(I)V

    .line 757
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/TwGridView;->findPosFromTag(I)I

    move-result v1

    .line 758
    .local v1, position:I
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    div-int v2, v1, v2

    add-int/lit8 v0, v2, 0x1

    .line 760
    .local v0, page:I
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    if-le v0, v2, :cond_0

    .line 761
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    if-eq v0, v2, :cond_1

    .line 762
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->processScrollDown()V

    goto :goto_0

    .line 764
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    if-ge v0, v2, :cond_1

    .line 765
    :goto_1
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    if-eq v0, v2, :cond_1

    .line 766
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->processScrollUp()V

    goto :goto_1

    .line 770
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 771
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwGridView;->updateDescriptionPanel(I)V

    .line 773
    :cond_2
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "clickListener"

    .prologue
    .line 669
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 670
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSaveButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    :cond_0
    return-void
.end method
