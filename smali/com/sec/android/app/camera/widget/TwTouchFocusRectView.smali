.class public Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;
.super Landroid/widget/RelativeLayout;
.source "TwTouchFocusRectView.java"


# instance fields
.field private mFocusFailImageView:Landroid/widget/ImageView;

.field private mFocusSuccessImageView:Landroid/widget/ImageView;

.field private mLeftBottomImage:I

.field private mLeftBottomImageView:Landroid/widget/ImageView;

.field private mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

.field private mLeftTopImage:I

.field private mLeftTopImageView:Landroid/widget/ImageView;

.field private mLeftTopMargin:I

.field private mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

.field private mPhysicalRectHeight:I

.field private mPhysicalRectWidth:I

.field private mRectDistance:I

.field private mRightBottomImage:I

.field private mRightBottomImageView:Landroid/widget/ImageView;

.field private mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

.field private mRightTopImage:I

.field private mRightTopImageView:Landroid/widget/ImageView;

.field private mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

.field private mShrinkHandler:Landroid/os/Handler;

.field private mShrinkRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    .line 67
    const/16 v0, 0x80

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;-><init>(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->init()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    .line 67
    const/16 v0, 0x80

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;-><init>(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    .line 87
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->init()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    .line 67
    const/16 v0, 0x80

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;-><init>(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    .line 92
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->init()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/16 v3, 0x80

    const/4 v2, -0x2

    .line 96
    const v0, 0x7f020025

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImage:I

    .line 97
    const v0, 0x7f020026

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImage:I

    .line 98
    const v0, 0x7f020027

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImage:I

    .line 99
    const v0, 0x7f020028

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImage:I

    .line 101
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    .line 102
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    .line 103
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    .line 104
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    const/16 v1, 0x386

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    const/16 v1, 0x387

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 121
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    .line 155
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    const v1, 0x7f0201fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    const v1, 0x7f020136

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;)V

    .line 161
    return-void
.end method


# virtual methods
.method public doShrink()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 202
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    .line 203
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    const/16 v1, 0x10

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    .line 205
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getXDelta()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mPhysicalRectWidth:I

    if-le v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getYDelta()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mPhysicalRectHeight:I

    if-le v0, v1, :cond_1

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public getXDelta()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getYDelta()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    return v0
.end method
