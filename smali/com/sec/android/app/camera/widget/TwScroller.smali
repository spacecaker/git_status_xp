.class public Lcom/sec/android/app/camera/widget/TwScroller;
.super Landroid/widget/RelativeLayout;
.source "TwScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;
    }
.end annotation


# instance fields
.field protected mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field protected mPageText:Landroid/widget/TextView;

.field protected mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwScroller;->init(Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwScroller;->init(Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;)V
    .locals 23
    .parameter "context"
    .parameter "parameters"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v21, Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/TwScroller;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/sec/android/app/camera/widget/TwImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/TwScroller;->mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 56
    new-instance v21, Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/TwScroller;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/sec/android/app/camera/widget/TwImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/TwScroller;->mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 57
    new-instance v21, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/TwScroller;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/TwScroller;->mPageText:Landroid/widget/TextView;

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getUpButtonNormalImageId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/camera/widget/TwImageButton;->setNormalImage(I)V

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getUpButtonPressedImageId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressedImage(I)V

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getUpButtonDimmedImageId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmedImage(I)V

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/camera/widget/TwImageButton;->setTag(Ljava/lang/Object;)V

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getDownButtonNormalImageId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/camera/widget/TwImageButton;->setNormalImage(I)V

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getDownButtonPressedImageId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressedImage(I)V

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getDownButtonDimmedImageId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmedImage(I)V

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/camera/widget/TwImageButton;->setTag(Ljava/lang/Object;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getUpButtonX()I

    move-result v19

    .line 72
    .local v19, upButtonX:I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getUpButtonY()I

    move-result v20

    .line 73
    .local v20, upButtonY:I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getDownButtonX()I

    move-result v8

    .line 74
    .local v8, downButtonX:I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getDownButtonY()I

    move-result v9

    .line 75
    .local v9, downButtonY:I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getPageTextX()I

    move-result v16

    .line 76
    .local v16, pageTextX:I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getPageTextY()I

    move-result v17

    .line 77
    .local v17, pageTextY:I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getPageTextWidth()I

    move-result v15

    .line 78
    .local v15, pageTextWidth:I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getPageTextHeight()I

    move-result v13

    .line 79
    .local v13, pageTextHeight:I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getPageTextFontSize()I

    move-result v12

    .line 80
    .local v12, pageTextFontSize:I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getButtonWidth()I

    move-result v6

    .line 81
    .local v6, buttonWidth:I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getButtonHeight()I

    move-result v5

    .line 82
    .local v5, buttonHeight:I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getLayoutWidth()I

    move-result v11

    .line 83
    .local v11, layoutWidth:I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->getLayoutHeight()I

    move-result v10

    .line 85
    .local v10, layoutHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mPageText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move v0, v12

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mPageText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x11

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mPageText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v18

    move v1, v6

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 90
    .local v18, upButtonParams:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v21, v11, v6

    sub-int v21, v21, v19

    sub-int v22, v10, v5

    sub-int v22, v22, v20

    invoke-virtual/range {v18 .. v22}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v7, downButtonParams:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v21, v11, v6

    sub-int v21, v21, v8

    sub-int v22, v10, v5

    sub-int v22, v22, v9

    move-object v0, v7

    move v1, v8

    move v2, v9

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 95
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v14, v15, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 96
    .local v14, pageTextParams:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v21, v11, v15

    sub-int v21, v21, v16

    sub-int v22, v10, v13

    sub-int v22, v22, v17

    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mPageText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScroller;->addView(Landroid/view/View;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mPageText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScroller;->addView(Landroid/view/View;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScroller;->addView(Landroid/view/View;)V

    .line 105
    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 25
    .parameter "attrs"

    .prologue
    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/TwScroller;->getContext()Landroid/content/Context;

    move-result-object v22

    sget-object v23, Lcom/sec/android/app/camera/R$styleable;->TwScroller:[I

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 111
    .local v5, attr:Landroid/content/res/TypedArray;
    new-instance v22, Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/TwScroller;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcom/sec/android/app/camera/widget/TwImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/TwScroller;->mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 112
    new-instance v22, Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/TwScroller;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcom/sec/android/app/camera/widget/TwImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/TwScroller;->mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 113
    new-instance v22, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/TwScroller;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/TwScroller;->mPageText:Landroid/widget/TextView;

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v22, v0

    const/16 v23, 0xd

    const/16 v24, 0x0

    move-object v0, v5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/widget/TwImageButton;->setNormalImage(I)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v22, v0

    const/16 v23, 0xf

    const/16 v24, 0x0

    move-object v0, v5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressedImage(I)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v22, v0

    const/16 v23, 0xe

    const/16 v24, 0x0

    move-object v0, v5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmedImage(I)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/widget/TwImageButton;->setTag(Ljava/lang/Object;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v22, v0

    const/16 v23, 0x10

    const/16 v24, 0x0

    move-object v0, v5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/widget/TwImageButton;->setNormalImage(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v22, v0

    const/16 v23, 0x12

    const/16 v24, 0x0

    move-object v0, v5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressedImage(I)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v22, v0

    const/16 v23, 0x11

    const/16 v24, 0x0

    move-object v0, v5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmedImage(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/widget/TwImageButton;->setTag(Ljava/lang/Object;)V

    .line 127
    const/16 v22, 0x2

    const/16 v23, 0x0

    move-object v0, v5

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 128
    .local v20, upButtonX:I
    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object v0, v5

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 129
    .local v21, upButtonY:I
    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object v0, v5

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move v9, v0

    .line 130
    .local v9, downButtonX:I
    const/16 v22, 0x5

    const/16 v23, 0x0

    move-object v0, v5

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move v10, v0

    .line 131
    .local v10, downButtonY:I
    const/16 v22, 0x6

    const/16 v23, 0x0

    move-object v0, v5

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v17, v0

    .line 132
    .local v17, pageTextX:I
    const/16 v22, 0x7

    const/16 v23, 0x0

    move-object v0, v5

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v18, v0

    .line 133
    .local v18, pageTextY:I
    const/16 v22, 0xa

    const/16 v23, 0x0

    move-object v0, v5

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    .line 134
    .local v16, pageTextWidth:I
    const/16 v22, 0xb

    const/16 v23, 0x0

    move-object v0, v5

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move v14, v0

    .line 135
    .local v14, pageTextHeight:I
    const/16 v22, 0xc

    const/16 v23, 0x0

    move-object v0, v5

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    .line 136
    .local v13, pageTextFontSize:F
    const/16 v22, 0x8

    const/16 v23, 0x0

    move-object v0, v5

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move v7, v0

    .line 137
    .local v7, buttonWidth:I
    const/16 v22, 0x9

    const/16 v23, 0x0

    move-object v0, v5

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move v6, v0

    .line 138
    .local v6, buttonHeight:I
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v0, v5

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move v12, v0

    .line 139
    .local v12, layoutWidth:I
    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object v0, v5

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move v11, v0

    .line 141
    .local v11, layoutHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mPageText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mPageText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x11

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setGravity(I)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mPageText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v19

    move v1, v7

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 146
    .local v19, upButtonParams:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v22, v12, v7

    sub-int v22, v22, v20

    sub-int v23, v11, v6

    sub-int v23, v23, v21

    invoke-virtual/range {v19 .. v23}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 148
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v8, downButtonParams:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v22, v12, v7

    sub-int v22, v22, v9

    sub-int v23, v11, v6

    sub-int v23, v23, v10

    move-object v0, v8

    move v1, v9

    move v2, v10

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 151
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v0, v15

    move/from16 v1, v16

    move v2, v14

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 152
    .local v15, pageTextParams:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v22, v12, v16

    sub-int v22, v22, v17

    sub-int v23, v11, v14

    sub-int v23, v23, v18

    move-object v0, v15

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mPageText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScroller;->addView(Landroid/view/View;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mPageText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScroller;->addView(Landroid/view/View;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwScroller;->mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScroller;->addView(Landroid/view/View;)V

    .line 162
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScroller;->mUpButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScroller;->mDownButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    return-void
.end method

.method public setPageText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScroller;->mPageText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method
