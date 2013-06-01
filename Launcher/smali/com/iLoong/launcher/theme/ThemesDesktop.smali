.class public Lcom/iLoong/launcher/theme/ThemesDesktop;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/iLoong/launcher/SetupMenu/w;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/iLoong/launcher/theme/ThemePagePointer;

.field private d:Lcom/iLoong/launcher/theme/ThemesGridLayout;

.field private e:Landroid/widget/Button;

.field private f:Landroid/content/Context;

.field private g:Ljava/util/Vector;

.field private h:Landroid/view/LayoutInflater;

.field private i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->i:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->h:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/i;->g()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->g:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/iLoong/launcher/theme/ThemesDesktop;->c()V

    return-void
.end method

.method private c()V
    .locals 9

    const/16 v3, 0x34

    const/high16 v8, 0x40c0

    const/4 v5, 0x0

    const/4 v7, -0x2

    const/4 v6, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->b:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->b:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/iLoong/launcher/theme/ThemesDesktop;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->a:Landroid/widget/TextView;

    const v2, 0x7f0c00b4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->a:Landroid/widget/TextView;

    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->a:Landroid/widget/TextView;

    sget v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v2, v8

    float-to-int v2, v2

    sget v3, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v3, v8

    float-to-int v3, v3

    sget v4, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/iLoong/launcher/theme/ThemePagePointer;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->f:Landroid/content/Context;

    invoke-direct {v0, v1, v5}, Lcom/iLoong/launcher/theme/ThemePagePointer;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->c:Lcom/iLoong/launcher/theme/ThemePagePointer;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->c:Lcom/iLoong/launcher/theme/ThemePagePointer;

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/theme/ThemePagePointer;->setOrientation(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->c:Lcom/iLoong/launcher/theme/ThemePagePointer;

    invoke-virtual {v1}, Lcom/iLoong/launcher/theme/ThemePagePointer;->b()I

    move-result v1

    invoke-direct {v0, v7, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->c:Lcom/iLoong/launcher/theme/ThemePagePointer;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/iLoong/launcher/theme/ThemesGridLayout;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/theme/ThemesGridLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->d:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->d:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    invoke-virtual {v0, v1, v7, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    const/high16 v0, 0x42a8

    sget v1, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x43a8

    sget v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->f:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0xb5

    const/16 v4, 0xb5

    const/16 v5, 0xb5

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v0, 0x50

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v2, v3}, Lcom/iLoong/launcher/theme/ThemesDesktop;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->F:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->f:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->e:Landroid/widget/Button;

    const v3, 0x7f0c00b8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->e:Landroid/widget/Button;

    const/high16 v3, -0x100

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->e:Landroid/widget/Button;

    const/high16 v3, 0x4140

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->e:Landroid/widget/Button;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->e:Landroid/widget/Button;

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
    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->c:Lcom/iLoong/launcher/theme/ThemePagePointer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->c:Lcom/iLoong/launcher/theme/ThemePagePointer;

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/ThemePagePointer;->a()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->i:Ljava/util/ArrayList;

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

.method public a(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->c:Lcom/iLoong/launcher/theme/ThemePagePointer;

    invoke-virtual {v0, p2}, Lcom/iLoong/launcher/theme/ThemePagePointer;->b(I)V

    return-void
.end method

.method public b()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/theme/ThemesDesktop;->g:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v8

    int-to-float v2, v8

    const/high16 v3, 0x4080

    div-float/2addr v2, v3

    const v3, 0x3f666666

    add-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/theme/ThemesDesktop;->c:Lcom/iLoong/launcher/theme/ThemePagePointer;

    invoke-virtual {v3, v2}, Lcom/iLoong/launcher/theme/ThemePagePointer;->a(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/theme/ThemesDesktop;->c:Lcom/iLoong/launcher/theme/ThemePagePointer;

    invoke-virtual {v2}, Lcom/iLoong/launcher/theme/ThemePagePointer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x40c0

    sget v4, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/theme/ThemesDesktop;->c:Lcom/iLoong/launcher/theme/ThemePagePointer;

    invoke-virtual {v3, v2}, Lcom/iLoong/launcher/theme/ThemePagePointer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/theme/ThemesDesktop;->d:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    invoke-virtual {v2}, Lcom/iLoong/launcher/theme/ThemesGridLayout;->removeAllViews()V

    const/high16 v2, 0x4400

    sget v3, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v9, v2

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getInstance()Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    move-result-object v2

    iget v2, v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    float-to-int v10, v2

    int-to-float v2, v9

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    float-to-int v11, v2

    const/high16 v2, 0x432a

    sget v3, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v12, v2

    const/high16 v2, 0x4380

    sget v3, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v13, v2

    const/4 v5, 0x0

    const/4 v2, 0x4

    move v7, v2

    :goto_0
    add-int/lit8 v2, v8, 0x4

    if-lt v7, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/theme/ThemesDesktop;->d:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/theme/ThemesGridLayout;->setLoop(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/theme/ThemesDesktop;->d:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/theme/ThemesGridLayout;->setOverScroll(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/theme/ThemesDesktop;->d:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/theme/ThemesGridLayout;->setScrollingSpeed(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/theme/ThemesDesktop;->d:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/iLoong/launcher/theme/ThemesGridLayout;->setSwitchListener(Lcom/iLoong/launcher/SetupMenu/w;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/theme/ThemesDesktop;->d:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/theme/ThemesGridLayout;->c(I)V

    return-void

    :cond_0
    const/4 v4, -0x1

    new-instance v14, Lcom/iLoong/launcher/SetupMenu/PageGridView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/theme/ThemesDesktop;->f:Landroid/content/Context;

    invoke-direct {v14, v2}, Lcom/iLoong/launcher/SetupMenu/PageGridView;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getInstance()Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    move-result-object v2

    iget v2, v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mWidth:I

    invoke-direct {v15, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v14, v10, v11, v2, v3}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->setCellDimensions(IIII)V

    if-gt v7, v8, :cond_1

    const/4 v2, 0x4

    move v3, v2

    :goto_1
    const/4 v2, 0x0

    move v6, v5

    move v5, v2

    :goto_2
    if-lt v5, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/theme/ThemesDesktop;->d:Lcom/iLoong/launcher/theme/ThemesGridLayout;

    invoke-virtual {v2, v14, v15}, Lcom/iLoong/launcher/theme/ThemesGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v7, 0x4

    move v7, v2

    move v5, v6

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v8, 0x4

    sub-int/2addr v2, v7

    move v3, v2

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/theme/ThemesDesktop;->h:Landroid/view/LayoutInflater;

    const v16, 0x7f030018

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    new-instance v17, Lcom/iLoong/launcher/theme/b;

    invoke-direct/range {v17 .. v17}, Lcom/iLoong/launcher/theme/b;-><init>()V

    const v2, 0x7f08002b

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/iLoong/launcher/theme/b;->b:Landroid/widget/TextView;

    const v2, 0x7f080029

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/iLoong/launcher/theme/b;->a:Landroid/widget/ImageView;

    const v2, 0x7f08002a

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/iLoong/launcher/theme/b;->c:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/theme/ThemesDesktop;->g:Ljava/util/Vector;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iLoong/launcher/theme/d;

    move-object/from16 v0, v17

    iput v6, v0, Lcom/iLoong/launcher/theme/b;->d:I

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/iLoong/launcher/theme/b;->b:Landroid/widget/TextView;

    move-object/from16 v18, v0

    iget-object v0, v2, Lcom/iLoong/launcher/theme/d;->b:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/iLoong/launcher/theme/d;->c()Landroid/graphics/Bitmap;

    move-result-object v18

    if-eqz v18, :cond_3

    int-to-double v0, v12

    move-wide/from16 v19, v0

    const-wide v21, 0x3fe999999999999aL

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    int-to-double v0, v13

    move-wide/from16 v20, v0

    const-wide v22, 0x3feb333333333333L

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iLoong/launcher/theme/ThemesDesktop;->i:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/iLoong/launcher/theme/b;->c:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-boolean v2, v2, Lcom/iLoong/launcher/theme/d;->c:Z

    if-nez v2, :cond_4

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/iLoong/launcher/theme/b;->a:Landroid/widget/ImageView;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_3
    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    rem-int/lit8 v17, v5, 0x2

    if-nez v17, :cond_5

    add-int/lit8 v2, v4, 0x1

    :goto_4
    new-instance v4, Lcom/iLoong/launcher/SetupMenu/l;

    move/from16 v0, v17

    invoke-direct {v4, v0, v2}, Lcom/iLoong/launcher/SetupMenu/l;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v4}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    move v4, v2

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/iLoong/launcher/theme/b;->a:Landroid/widget/ImageView;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_3

    :cond_5
    move v2, v4

    goto :goto_4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->f:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/iLoong/launcher/theme/b;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->f:Landroid/content/Context;

    const-class v3, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    check-cast v0, Lcom/iLoong/launcher/theme/b;

    const-class v2, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lcom/iLoong/launcher/theme/b;->d:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemesDesktop;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
