.class public Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/iLoong/launcher/SetupMenu/w;


# static fields
.field public static a:Z


# instance fields
.field private b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/HashMap;

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/widget/FrameLayout;

.field private i:Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;

.field private j:Lcom/iLoong/launcher/SetupMenu/h;

.field private k:Landroid/view/animation/TranslateAnimation;

.field private l:Landroid/view/animation/TranslateAnimation;

.field private m:Landroid/view/animation/AnimationSet;

.field private n:Landroid/view/animation/AnimationSet;

.field private o:Z

.field private p:Z

.field private q:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->o:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->p:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->q:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->e:Landroid/content/Context;

    new-instance v0, Lcom/iLoong/launcher/SetupMenu/h;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/SetupMenu/h;-><init>(Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;)V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->j:Lcom/iLoong/launcher/SetupMenu/h;

    invoke-virtual {p0, p0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->i:Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;->b(I)V

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->g:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->m:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private k()V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->a:Z

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->i:Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/PageGridView;

    if-eqz v0, :cond_0

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->getChildCount()I

    move-result v1

    if-lt v3, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/SetupMenu/v;

    invoke-virtual {v1}, Lcom/iLoong/launcher/SetupMenu/v;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iLoong/launcher/SetupMenu/a;

    iget v2, v2, Lcom/iLoong/launcher/SetupMenu/a;->b:I

    const/16 v4, 0x3e9

    if-ne v2, v4, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->t()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/iLoong/launcher/SetupMenu/v;->c()V

    :cond_2
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/iLoong/launcher/SetupMenu/v;->d()V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->p:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->o:Z

    invoke-direct {p0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->j()V

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->a(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->k()V

    return-void
.end method

.method public a(IILandroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->i:Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/PageGridView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->getChildCount()I

    move-result v1

    if-lt v3, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iLoong/launcher/SetupMenu/a;

    iget v2, v2, Lcom/iLoong/launcher/SetupMenu/a;->b:I

    if-ne v2, p2, :cond_2

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method a(Lcom/iLoong/launcher/SetupMenu/SetupMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    return-void
.end method

.method a(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->c:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->d:Ljava/util/HashMap;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->o:Z

    return v0
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->o:Z

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->g()V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v0, v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mWidth:I

    return v0
.end method

.method public f()I
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v0, v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mrows:I

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v1, v1, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mCellHeight:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4100

    sget v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->g:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->n:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public h()V
    .locals 13

    const/16 v9, 0xfa

    const/16 v10, 0xfa

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->m:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->k:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->k:Landroid/view/animation/TranslateAnimation;

    int-to-long v1, v9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->m:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->k:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->m:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->n:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->l:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->l:Landroid/view/animation/TranslateAnimation;

    int-to-long v1, v10

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->n:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->l:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->n:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->f:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->f:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->f:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->setFocusable(Z)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->g:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->aH:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v1, v1, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mWidth:I

    div-int/lit8 v1, v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->g:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->h:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v1, v1, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mWidth:I

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v2, v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mrows:I

    iget-object v3, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v3, v3, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mCellHeight:I

    mul-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->g:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->SETUPMENU_FOLDERNAME:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "bg-2.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/SetupMenu/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->aH:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    sget v1, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    invoke-static {v0, v1}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    :goto_2
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->i:Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->i:Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->aH:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_3
    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->g:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->i:Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;

    invoke-virtual {v1, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v0, 0x0

    move v5, v0

    :goto_4
    if-lt v5, v6, :cond_2

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->SETUPMENU_BG_CLOLOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/SetupMenu/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_5
    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->e()I

    move-result v2

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->f()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_1
    const/high16 v1, 0x4100

    sget v3, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/x;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->d:Ljava/util/HashMap;

    iget v3, v0, Lcom/iLoong/launcher/SetupMenu/x;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    new-instance v7, Lcom/iLoong/launcher/SetupMenu/PageGridView;

    iget-object v3, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->e:Landroid/content/Context;

    invoke-direct {v7, v3}, Lcom/iLoong/launcher/SetupMenu/PageGridView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->e()I

    move-result v3

    iget-object v4, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v4, v4, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mrows:I

    iget-object v9, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v9, v9, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mCellHeight:I

    mul-int/2addr v4, v9

    invoke-direct {v8, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v0, v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mCellWidth:I

    iget-object v3, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v3, v3, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mCellHeight:I

    iget-object v4, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v4, v4, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mWidthGap:I

    iget-object v9, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v9, v9, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mHeightGap:I

    invoke-virtual {v7, v0, v3, v4, v9}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->setCellDimensions(IIII)V

    const/4 v3, -0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v0, 0x0

    move v4, v0

    :goto_6
    if-lt v4, v9, :cond_4

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aH:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_7
    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v1, v1, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mrows:I

    if-lt v0, v1, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->i:Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;

    invoke-virtual {v0, v7, v8}, Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->i:Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;->setSwitchListener(Lcom/iLoong/launcher/SetupMenu/w;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->i:Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;->setLoop(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->i:Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/MenuGridLayout;->setOverScroll(Z)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/a;

    iget v0, v0, Lcom/iLoong/launcher/SetupMenu/a;->b:I

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->c(I)Lcom/iLoong/launcher/SetupMenu/Actions/ac;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_8
    sget v10, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    invoke-static {v0, v10}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v11, Lcom/iLoong/launcher/SetupMenu/v;

    iget-object v12, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->e:Landroid/content/Context;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/a;

    iget-object v0, v0, Lcom/iLoong/launcher/SetupMenu/a;->c:Ljava/lang/String;

    invoke-direct {v11, v12, v10, v0}, Lcom/iLoong/launcher/SetupMenu/v;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/iLoong/launcher/SetupMenu/v;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v0, v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mcolumns:I

    rem-int v12, v4, v0

    if-nez v12, :cond_6

    add-int/lit8 v0, v3, 0x1

    :goto_9
    new-instance v3, Lcom/iLoong/launcher/SetupMenu/l;

    invoke-direct {v3, v12, v0}, Lcom/iLoong/launcher/SetupMenu/l;-><init>(II)V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/iLoong/launcher/SetupMenu/v;->setClickable(Z)V

    iget-object v12, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->j:Lcom/iLoong/launcher/SetupMenu/h;

    invoke-virtual {v11, v12}, Lcom/iLoong/launcher/SetupMenu/v;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->j:Lcom/iLoong/launcher/SetupMenu/h;

    invoke-virtual {v11, v12}, Lcom/iLoong/launcher/SetupMenu/v;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v7, v11, v3}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto/16 :goto_6

    :cond_5
    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_8

    :cond_6
    move v0, v3

    goto :goto_9

    :cond_7
    const/4 v1, 0x1

    :goto_a
    iget-object v3, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v3, v3, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mcolumns:I

    if-le v1, v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_8
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->e:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v4, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x33

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v9, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v9, v9, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mCellWidth:I

    mul-int/2addr v9, v1

    iget-object v9, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v9, v9, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mCellHeight:I

    mul-int/2addr v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v9, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v9, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v1, v1, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mrows:I

    if-ge v0, v1, :cond_3

    const/4 v1, 0x1

    :goto_c
    iget-object v3, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v3, v3, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mcolumns:I

    add-int/lit8 v3, v3, -0x1

    if-le v1, v3, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_a
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->e:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v4, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x35

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v9, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v9, v9, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mCellWidth:I

    mul-int/2addr v9, v1

    iget-object v10, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v10, v10, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mCellHeight:I

    mul-int/2addr v10, v0

    iget-object v11, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    iget v11, v11, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mCellHeight:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v10, v9, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v9, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_b
    move-object v2, v0

    goto/16 :goto_2
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->CloseMenu()V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->m:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->p:Z

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->g()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->n:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->CloseMenu()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->c()V

    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bl:Z

    if-eqz v0, :cond_2

    sput-boolean v1, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->a:Z

    sput-boolean v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->v:Z

    :cond_2
    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/i;->k()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->c()V

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
