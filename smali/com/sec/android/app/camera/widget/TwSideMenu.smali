.class public Lcom/sec/android/app/camera/widget/TwSideMenu;
.super Landroid/widget/LinearLayout;
.source "TwSideMenu.java"


# instance fields
.field private mBottomButtonBg:I

.field private mButtonRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/camera/widget/TwSelectButton;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mButtons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/widget/TwSelectButton;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private mMidButtonBg:I

.field private mResourceData:Ljava/util/HashMap;
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

.field private mTopButtonBg:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mResourceData:Ljava/util/HashMap;

    .line 43
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mMenuButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtonRes:Ljava/util/HashMap;

    .line 53
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->init(Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwSideMenu:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, attr:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mTopButtonBg:I

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mMidButtonBg:I

    .line 61
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mBottomButtonBg:I

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method


# virtual methods
.method public addSideMenuButton(ILandroid/widget/LinearLayout;)V
    .locals 8
    .parameter "menuid"
    .parameter "popupTextLayout"

    .prologue
    const/4 v7, 0x1

    .line 78
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mResourceData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    .line 80
    .local v4, resourceBundle:Lcom/sec/android/app/camera/SideMenuResourceBundle;
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/SideMenuResourceBundle;->getResourceId(I)I

    move-result v1

    .line 81
    .local v1, dimmedImage:I
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/SideMenuResourceBundle;->getResourceId(I)I

    move-result v2

    .line 82
    .local v2, normalImage:I
    invoke-virtual {v4, v7}, Lcom/sec/android/app/camera/SideMenuResourceBundle;->getResourceId(I)I

    move-result v3

    .line 84
    .local v3, pressedImage:I
    new-instance v0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, v2, v3, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;-><init>(Landroid/content/Context;III)V

    .line 86
    .local v0, button:Lcom/sec/android/app/camera/widget/TwSelectButton;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addView(Landroid/view/View;)V

    .line 87
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mMenuButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->registerPopupTextLayout(Landroid/widget/LinearLayout;)V

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 93
    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mTopButtonBg:I

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setPressedBackground(I)V

    .line 97
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtonRes:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/SideMenuResourceBundle;->getButtons()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void

    .line 95
    :cond_0
    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mMidButtonBg:I

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setPressedBackground(I)V

    goto :goto_0
.end method

.method public dimButton(IZ)V
    .locals 2
    .parameter "menuid"
    .parameter "dim"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setDimmed(Z)V

    .line 169
    return-void
.end method

.method public getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;
    .locals 2
    .parameter "menu"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/widget/TwImageButton;

    return-object p0
.end method

.method public initSideMenu(Ljava/util/HashMap;Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter
    .parameter "touchListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/SideMenuResourceBundle;",
            ">;",
            "Landroid/view/View$OnTouchListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, resourceData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sec/android/app/camera/SideMenuResourceBundle;>;"
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mResourceData:Ljava/util/HashMap;

    .line 68
    iput-object p2, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mMenuButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 69
    return-void
.end method

.method public resetPressedButtons()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 106
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSelectButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setSelected(Z)V

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method public setBottomButton(I)V
    .locals 2
    .parameter "menuid"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mBottomButtonBg:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setPressedBackground(I)V

    .line 173
    return-void
.end method

.method public setButtonLocked()V
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 113
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSelectButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setDisabled(Z)V

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method public setButtonUnlocked()V
    .locals 3

    .prologue
    .line 119
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 120
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSelectButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setDisabled(Z)V

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method public updateButtonImage(II)V
    .locals 5
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 132
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtonRes:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtonRes:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 165
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 136
    .restart local p0
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtonRes:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 137
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v2, 0x7

    if-eq p1, v2, :cond_3

    .line 139
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 142
    .local v0, button:Lcom/sec/android/app/camera/widget/TwSelectButton;
    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setNormalImage(I)V

    .line 144
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setPressedImage(I)V

    .line 145
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->refreshButtonImage()V

    goto :goto_0

    .line 151
    .end local v0           #button:Lcom/sec/android/app/camera/widget/TwSelectButton;
    .restart local p0
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwSideMenu;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 154
    .restart local v0       #button:Lcom/sec/android/app/camera/widget/TwSelectButton;
    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setNormalImage(I)V

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setPressedImage(I)V

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setDimmedImage(I)V

    .line 158
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSelectButton;->refreshButtonImage()V

    goto/16 :goto_0
.end method
