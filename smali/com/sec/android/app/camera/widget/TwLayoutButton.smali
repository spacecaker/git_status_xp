.class public Lcom/sec/android/app/camera/widget/TwLayoutButton;
.super Landroid/widget/RelativeLayout;
.source "TwLayoutButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mButtonHeight:I

.field private mButtonLeftMargin:I

.field private mButtonWidth:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 33
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonWidth:I

    .line 34
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonHeight:I

    .line 35
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonLeftMargin:I

    .line 38
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 33
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonWidth:I

    .line 34
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonHeight:I

    .line 35
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonLeftMargin:I

    .line 43
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 33
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonWidth:I

    .line 34
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonHeight:I

    .line 35
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonLeftMargin:I

    .line 48
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->init()V

    .line 49
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0, p0}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0, p0}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    new-instance v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->performClick()Z

    .line 86
    :cond_0
    return v1
.end method

.method public setButtonParams(IIIIII)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "leftMargin"
    .parameter "imageResource"
    .parameter "tag"
    .parameter "pressedImage"

    .prologue
    .line 63
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonWidth:I

    .line 64
    iput p2, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonHeight:I

    .line 65
    iput p3, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonLeftMargin:I

    .line 66
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonWidth:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    iget v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButtonLeftMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setTag(Ljava/lang/Object;)V

    .line 70
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v1, p6}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressedImage(I)V

    .line 71
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/widget/TwImageButton;->setNormalImage(I)V

    .line 72
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/widget/TwLayoutButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 74
    return-void
.end method

.method public setDisabled(Z)V
    .locals 1
    .parameter "disable"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 91
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "onClickListener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwLayoutButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 60
    return-void
.end method
