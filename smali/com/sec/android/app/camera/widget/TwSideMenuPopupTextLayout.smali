.class public Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;
.super Landroid/widget/LinearLayout;
.source "TwSideMenuPopupTextLayout.java"


# instance fields
.field private mLayoutHeight:I

.field private mLeftImageBackground:I

.field private mPopupTexts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field mResourceData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/SideMenuResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mRightImageBackground:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mLeftImageBackground:I

    .line 43
    iput v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mRightImageBackground:I

    .line 44
    iput v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mLayoutHeight:I

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mPopupTexts:Ljava/util/HashMap;

    .line 49
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->init(Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwSideMenuPopupTextLayout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, attr:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mLeftImageBackground:I

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mRightImageBackground:I

    .line 60
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mLayoutHeight:I

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method


# virtual methods
.method public addEmptyPopupText(II)Landroid/widget/LinearLayout;
    .locals 11
    .parameter "menuid"
    .parameter "buttonScale"

    .prologue
    const/4 v10, -0x2

    .line 116
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mPopupTexts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    .line 117
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 118
    .local v2, popupTextLayout:Landroid/widget/LinearLayout;
    const/16 v8, 0x10

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 120
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mLayoutHeight:I

    mul-int/2addr v8, p2

    invoke-direct {v3, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v3, popupTextParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, left:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    .local v1, leftLP:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 130
    .local v6, text:Landroid/widget/TextView;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 132
    .local v7, textLP:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 135
    .local v4, right:Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v5, rightLP:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mPopupTexts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .end local v0           #left:Landroid/widget/ImageView;
    .end local v1           #leftLP:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #popupTextLayout:Landroid/widget/LinearLayout;
    .end local v3           #popupTextParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #right:Landroid/widget/ImageView;
    .end local v5           #rightLP:Landroid/widget/LinearLayout$LayoutParams;
    .end local v6           #text:Landroid/widget/TextView;
    .end local v7           #textLP:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mPopupTexts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public addPopupText(I)Landroid/widget/LinearLayout;
    .locals 12
    .parameter "menuid"

    .prologue
    const/4 v11, -0x2

    .line 76
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mPopupTexts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_0

    .line 77
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    .local v2, popupTextLayout:Landroid/widget/LinearLayout;
    const/16 v9, 0x10

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 80
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mLayoutHeight:I

    invoke-direct {v3, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v3, popupTextParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, left:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v1, leftLP:Landroid/widget/LinearLayout$LayoutParams;
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mLeftImageBackground:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v7, text:Landroid/widget/TextView;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v8, textLP:Landroid/widget/LinearLayout$LayoutParams;
    const v9, 0x7f0200e1

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 92
    const/16 v9, 0x11

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mResourceData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    .line 94
    .local v4, resourceBundle:Lcom/sec/android/app/camera/SideMenuResourceBundle;
    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Lcom/sec/android/app/camera/SideMenuResourceBundle;->getResourceId(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 95
    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    invoke-virtual {v2, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 99
    .local v5, right:Landroid/widget/ImageView;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    .local v6, rightLP:Landroid/widget/LinearLayout$LayoutParams;
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mRightImageBackground:I

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mPopupTexts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .end local v0           #left:Landroid/widget/ImageView;
    .end local v1           #leftLP:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #popupTextLayout:Landroid/widget/LinearLayout;
    .end local v3           #popupTextParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #resourceBundle:Lcom/sec/android/app/camera/SideMenuResourceBundle;
    .end local v5           #right:Landroid/widget/ImageView;
    .end local v6           #rightLP:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #text:Landroid/widget/TextView;
    .end local v8           #textLP:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mPopupTexts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public initResources(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/SideMenuResourceBundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, resourceData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sec/android/app/camera/SideMenuResourceBundle;>;"
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->mResourceData:Ljava/util/HashMap;

    .line 68
    return-void
.end method
