.class public Lcom/sec/android/app/camera/widget/TwImageButton;
.super Landroid/widget/RelativeLayout;
.source "TwImageButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field protected mButtonText:Landroid/widget/TextView;

.field public mDimmed:Z

.field protected mDimmedBackground:I

.field protected mDimmedImage:I

.field public mDisabled:Z

.field protected mImageButton:Landroid/widget/ImageButton;

.field protected mNormalBackground:I

.field protected mNormalImage:I

.field protected mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mPopupTextLayout:Landroid/widget/LinearLayout;

.field protected mPressedBackground:I

.field protected mPressedImage:I

.field protected mTextColor:I

.field protected mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    .line 57
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/high16 v1, 0x4140

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    .line 57
    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    .line 58
    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    .line 98
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 100
    .local v0, buttonLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 101
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 102
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2
    .parameter "context"
    .parameter "normalImage"
    .parameter "pressedImage"
    .parameter "dimmedImage"

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    .line 57
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;)V

    .line 83
    iput p2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    .line 84
    iput p3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    .line 85
    iput p4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedImage:I

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    .line 57
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 62
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwImageButton;->init(Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    .line 57
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 67
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwImageButton;->init(Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method


# virtual methods
.method public SetClickSoundDisabled()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 295
    return-void
.end method

.method public SetClickSoundEnabled()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method protected actionInBounds(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 252
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getWidth()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 258
    :goto_0
    return v0

    .line 255
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_3

    :cond_2
    move v0, v1

    .line 256
    goto :goto_0

    .line 258
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addTextLayout(IIIIIII)V
    .locals 3
    .parameter "xAxis"
    .parameter "yAxis"
    .parameter "xRightMargin"
    .parameter "gravity"
    .parameter "fontSize"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 199
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p6, p7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 200
    .local v0, rp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 201
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setGravity(I)V

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    int-to-float v2, p5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 203
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    return-void
.end method

.method protected createButton()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/sec/android/app/camera/widget/TwImageButton$1;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton$1;-><init>(Lcom/sec/android/app/camera/widget/TwImageButton;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    .line 160
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    return-void
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwImageButton:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    .local v0, attr:Landroid/content/res/TypedArray;
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    .line 114
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    .line 115
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedImage:I

    .line 117
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    .line 118
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    .line 119
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedBackground:I

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 125
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 289
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "arg0"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 311
    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    if-eqz v2, :cond_0

    move v2, v4

    .line 354
    :goto_0
    return v2

    .line 315
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    if-eqz v2, :cond_1

    move v2, v4

    .line 316
    goto :goto_0

    .line 319
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_2

    .line 320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->actionInBounds(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 322
    .local v1, res:Z
    if-nez v1, :cond_2

    move v2, v1

    .line 323
    goto :goto_0

    .line 327
    .end local v1           #res:Z
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    move v2, v5

    .line 354
    goto :goto_0

    .line 329
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    .line 330
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    .line 331
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/widget/TwImageButton;->showToolTip(Z)V

    goto :goto_1

    .line 334
    :pswitch_2
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    .line 335
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    .line 336
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/widget/TwImageButton;->showToolTip(Z)V

    .line 338
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->actionInBounds(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 340
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_3

    .line 341
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 342
    .local v0, ev:Landroid/view/MotionEvent;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 343
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, v0}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 348
    .end local v0           #ev:Landroid/view/MotionEvent;
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_3

    .line 349
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public refreshButtonImage()V
    .locals 2

    .prologue
    .line 268
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 269
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 276
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    if-eqz v0, :cond_2

    .line 277
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    .line 281
    :goto_1
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 279
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public registerPopupTextLayout(Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter "layout"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPopupTextLayout:Landroid/widget/LinearLayout;

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->showToolTip(Z)V

    .line 108
    return-void
.end method

.method public setBackgroundResources(III)V
    .locals 0
    .parameter "normalBackground"
    .parameter "pressedBackground"
    .parameter "dimmedBackground"

    .prologue
    .line 240
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    .line 241
    iput p2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    .line 242
    iput p3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedBackground:I

    .line 243
    return-void
.end method

.method protected setButtonImage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 367
    :cond_0
    return-void
.end method

.method public setDimmed(Z)V
    .locals 1
    .parameter "dimmed"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    .line 168
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundDisabled()V

    .line 170
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    .line 171
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedBackground:I

    if-eqz v0, :cond_0

    .line 172
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundEnabled()V

    .line 176
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    .line 177
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    if-eqz v0, :cond_0

    .line 178
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setDimmedImage(I)V
    .locals 0
    .parameter "dimmedImage"

    .prologue
    .line 224
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedImage:I

    .line 225
    return-void
.end method

.method public setDisabled(Z)V
    .locals 1
    .parameter "disabled"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 185
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundDisabled()V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundEnabled()V

    goto :goto_0
.end method

.method public setImageResources(III)V
    .locals 0
    .parameter "normalImage"
    .parameter "pressedImage"
    .parameter "dimmedImage"

    .prologue
    .line 246
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    .line 247
    iput p2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    .line 248
    iput p3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedImage:I

    .line 249
    return-void
.end method

.method public setNormalBackground(I)V
    .locals 0
    .parameter "normalBackground"

    .prologue
    .line 228
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    .line 229
    return-void
.end method

.method public setNormalImage(I)V
    .locals 0
    .parameter "normalImage"

    .prologue
    .line 216
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    .line 217
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 304
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 308
    return-void
.end method

.method public setPressed()V
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    .line 263
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    if-eqz v0, :cond_0

    .line 264
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    .line 265
    :cond_0
    return-void
.end method

.method public setPressedBackground(I)V
    .locals 0
    .parameter "pressedBackground"

    .prologue
    .line 232
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    .line 233
    return-void
.end method

.method public setPressedImage(I)V
    .locals 0
    .parameter "pressedImage"

    .prologue
    .line 220
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    .line 221
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_0
    return-void
.end method

.method protected showToolTip(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPopupTextLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPopupTextLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    :cond_0
    return-void

    .line 359
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method
