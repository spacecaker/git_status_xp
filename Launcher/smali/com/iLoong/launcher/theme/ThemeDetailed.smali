.class public Lcom/iLoong/launcher/theme/ThemeDetailed;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/iLoong/launcher/SetupMenu/w;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iLoong/launcher/theme/d;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/iLoong/launcher/theme/ThemePagePointer;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Ljava/util/ArrayList;

.field private i:Lcom/iLoong/launcher/theme/ThemesGridLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->h:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->a:Landroid/content/Context;

    return-void
.end method

.method private b()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v5, 0x40c0

    const/4 v7, -0x1

    const/4 v6, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->c:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->c:Landroid/widget/LinearLayout;

    const/16 v2, 0xfa

    const/16 v3, 0xfa

    const/16 v4, 0xfa

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/iLoong/launcher/theme/ThemeDetailed;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x34

    const/16 v2, 0x34

    const/16 v3, 0x34

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->e:Landroid/widget/TextView;

    const v2, 0x7f0c00b4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->e:Landroid/widget/TextView;

    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->e:Landroid/widget/TextView;

    sget v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sget v3, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sget v4, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v2, v3, v8, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/iLoong/launcher/theme/ThemePagePointer;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v9}, Lcom/iLoong/launcher/theme/ThemePagePointer;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->d:Lcom/iLoong/launcher/theme/ThemePagePointer;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->d:Lcom/iLoong/launcher/theme/ThemePagePointer;

    invoke-virtual {v0, v8}, Lcom/iLoong/launcher/theme/ThemePagePointer;->setOrientation(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->d:Lcom/iLoong/launcher/theme/ThemePagePointer;

    invoke-virtual {v1}, Lcom/iLoong/launcher/theme/ThemePagePointer;->b()I

    move-result v1

    invoke-direct {v0, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->d:Lcom/iLoong/launcher/theme/ThemePagePointer;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/iLoong/launcher/theme/ThemesGridLayout;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/theme/ThemesGridLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->i:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->i:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x42a8

    sget v1, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x4328

    sget v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0xb5

    const/16 v4, 0xb5

    const/16 v5, 0xb5

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v0, 0x50

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v2, v3}, Lcom/iLoong/launcher/theme/ThemeDetailed;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->f:Landroid/widget/Button;

    const v3, 0x7f0c00b6

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->f:Landroid/widget/Button;

    const/high16 v3, -0x100

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->f:Landroid/widget/Button;

    const/high16 v3, 0x4140

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->f:Landroid/widget/Button;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->f:Landroid/widget/Button;

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aR:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->g:Landroid/widget/Button;

    const v3, 0x7f0c00b7

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->g:Landroid/widget/Button;

    const/high16 v3, -0x100

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->g:Landroid/widget/Button;

    const/high16 v3, 0x4140

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->g:Landroid/widget/Button;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->g:Landroid/widget/Button;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->d:Lcom/iLoong/launcher/theme/ThemePagePointer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->d:Lcom/iLoong/launcher/theme/ThemePagePointer;

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/ThemePagePointer;->a()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 14

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/i;->g()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/theme/d;

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->b:Lcom/iLoong/launcher/theme/d;

    invoke-direct {p0}, Lcom/iLoong/launcher/theme/ThemeDetailed;->b()V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->b:Lcom/iLoong/launcher/theme/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/d;->d()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getInstance()Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    move-result-object v0

    iget v6, v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mWidth:I

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getInstance()Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mHeight:I

    int-to-float v0, v0

    const v1, 0x3f333333

    mul-float/2addr v0, v1

    float-to-int v7, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->d:Lcom/iLoong/launcher/theme/ThemePagePointer;

    invoke-virtual {v0, v8}, Lcom/iLoong/launcher/theme/ThemePagePointer;->a(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->d:Lcom/iLoong/launcher/theme/ThemePagePointer;

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/ThemePagePointer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x40c0

    sget v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->d:Lcom/iLoong/launcher/theme/ThemePagePointer;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/theme/ThemePagePointer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/iLoong/launcher/SetupMenu/PageGridView;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/SetupMenu/PageGridView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v2, v9}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->setCellDimensions(IIII)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->a:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->b:Lcom/iLoong/launcher/theme/d;

    invoke-virtual {v9, v2}, Lcom/iLoong/launcher/theme/d;->a(Landroid/widget/TextView;)V

    const/high16 v9, -0x100

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->a:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/high16 v2, 0x42a0

    sget v10, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v2, v10

    float-to-int v2, v2

    new-instance v10, Lcom/iLoong/launcher/SetupMenu/l;

    invoke-direct {v10, v4, v5}, Lcom/iLoong/launcher/SetupMenu/l;-><init>(II)V

    iput v2, v10, Lcom/iLoong/launcher/SetupMenu/l;->topMargin:I

    iput v2, v10, Lcom/iLoong/launcher/SetupMenu/l;->leftMargin:I

    invoke-virtual {v0, v9, v10}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->i:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    invoke-virtual {v2, v0, v1}, Lcom/iLoong/launcher/theme/ThemesGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v8, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->g:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->b:Lcom/iLoong/launcher/theme/d;

    iget-boolean v0, v0, Lcom/iLoong/launcher/theme/d;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->g:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->i:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/ThemesGridLayout;->setLoop(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->i:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/ThemesGridLayout;->setOverScroll(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->i:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/ThemesGridLayout;->setScrollingSpeed(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->i:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/theme/ThemesGridLayout;->setSwitchListener(Lcom/iLoong/launcher/SetupMenu/w;)V

    return-void

    :cond_1
    new-instance v9, Lcom/iLoong/launcher/SetupMenu/PageGridView;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->a:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/iLoong/launcher/SetupMenu/PageGridView;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, v6, v7, v0, v1}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->setCellDimensions(IIII)V

    new-instance v11, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->a:Landroid/content/Context;

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->b:Lcom/iLoong/launcher/theme/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v0, "theme/preview/"

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x11

    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/iLoong/launcher/SetupMenu/l;

    invoke-direct {v1, v4, v5}, Lcom/iLoong/launcher/SetupMenu/l;-><init>(II)V

    const/high16 v11, 0x40c0

    sget v12, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v1, Lcom/iLoong/launcher/SetupMenu/l;->topMargin:I

    invoke-virtual {v9, v0, v1}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->i:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    invoke-virtual {v0, v9, v10}, Lcom/iLoong/launcher/theme/ThemesGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->b:Lcom/iLoong/launcher/theme/d;

    iget-boolean v0, v0, Lcom/iLoong/launcher/theme/d;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->g:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->b:Lcom/iLoong/launcher/theme/d;

    iget-boolean v0, v0, Lcom/iLoong/launcher/theme/d;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->g:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->d:Lcom/iLoong/launcher/theme/ThemePagePointer;

    invoke-virtual {v0, p2}, Lcom/iLoong/launcher/theme/ThemePagePointer;->b(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->i:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    const/4 v1, 0x1

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getInstance()Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    move-result-object v2

    iget v2, v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mWidth:I

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/theme/ThemesGridLayout;->a(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->b:Lcom/iLoong/launcher/theme/d;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/i;->b(Lcom/iLoong/launcher/theme/d;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailed;->b:Lcom/iLoong/launcher/theme/d;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/i;->a(Lcom/iLoong/launcher/theme/d;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
