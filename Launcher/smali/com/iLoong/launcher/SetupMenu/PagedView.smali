.class public abstract Lcom/iLoong/launcher/SetupMenu/PagedView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:[I

.field private k:F

.field private l:F

.field private m:Landroid/widget/Scroller;

.field private n:Landroid/view/VelocityTracker;

.field private o:Lcom/iLoong/launcher/SetupMenu/w;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iLoong/launcher/SetupMenu/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->a:I

    iput v1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->h:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->i:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->j:[I

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->k:F

    const v0, 0x3e99999a

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->l:F

    iput-boolean v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->p:Z

    iput-boolean v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->q:Z

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/SetupMenu/PagedView;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-float v0, v0

    const/high16 v1, 0x3f80

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method a(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->setOrientation(I)V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->m:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->e:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->f:I

    return-void
.end method

.method public a(II)V
    .locals 2

    iput p1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    mul-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->scrollTo(II)V

    return-void
.end method

.method protected a([I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/SetupMenu/PagedView;->d(I)I

    move-result v2

    add-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->p:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getScrollX()I

    move-result v2

    add-int/lit8 v3, v4, -0x1

    mul-int/2addr v3, v5

    if-gt v2, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getScrollX()I

    move-result v2

    if-gez v2, :cond_6

    :cond_1
    add-int/lit8 v0, v4, -0x1

    move v2, v1

    :cond_2
    aput v0, p1, v1

    aput v2, p1, v7

    :goto_0
    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    :goto_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getScrollX()I

    move-result v3

    if-gt v2, v3, :cond_4

    add-int/lit8 v3, v4, -0x1

    if-lt v0, v3, :cond_3

    :cond_4
    move v3, v2

    move v2, v0

    :goto_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v5

    if-ge v3, v6, :cond_2

    add-int/lit8 v6, v4, -0x1

    if-ge v2, v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_2

    :cond_5
    aput v0, p1, v1

    aput v0, p1, v7

    goto :goto_0

    :cond_6
    move v2, v0

    move v0, v1

    goto :goto_1
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->b(I)V

    return-void
.end method

.method public b(I)V
    .locals 7

    const/4 v6, -0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->p:Z

    if-eqz v0, :cond_1

    move v0, v6

    :goto_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v3

    iget-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->p:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    sub-int v1, v3, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->h:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bh:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->m:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getScrollX()I

    move-result v1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_2
    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->h:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->h:I

    if-ne v0, v6, :cond_4

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->p:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    :goto_3
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->o:Lcom/iLoong/launcher/SetupMenu/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->o:Lcom/iLoong/launcher/SetupMenu/w;

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    invoke-interface {v0, v1, v2}, Lcom/iLoong/launcher/SetupMenu/w;->a(Landroid/view/View;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->invalidate()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->m:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->k:F

    mul-float/2addr v4, v5

    float-to-int v5, v4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->h:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->p:Z

    if-eqz v0, :cond_5

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->h:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    goto :goto_3
.end method

.method public c(I)V
    .locals 6

    const/4 v2, 0x0

    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->p:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->q:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/SetupMenu/PagedView;->b(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    if-nez v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getWidth()I

    move-result v0

    neg-int v0, v0

    const/4 v1, -0x1

    iput v1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->h:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    move v1, v2

    :goto_1
    sub-int v3, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->m:Landroid/widget/Scroller;

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->k:F

    mul-float/2addr v4, v5

    float-to-int v5, v4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->o:Lcom/iLoong/launcher/SetupMenu/w;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->o:Lcom/iLoong/launcher/SetupMenu/w;

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    invoke-interface {v0, v1, v2}, Lcom/iLoong/launcher/SetupMenu/w;->a(Landroid/view/View;I)V

    :cond_3
    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->invalidate()V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    add-int/lit8 v3, v0, -0x1

    if-ne v1, v3, :cond_5

    if-nez p1, :cond_5

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getWidth()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getWidth()I

    move-result v3

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v3

    iput v3, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->h:I

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getWidth()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    iput p1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 4

    const v3, 0x7fffffff

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/SetupMenu/PagedView;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->postInvalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->h:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->p:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/SetupMenu/PagedView;->scrollTo(II)V

    :goto_1
    iput v3, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->h:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->h:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->p:Z

    if-eqz v0, :cond_3

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->scrollTo(II)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->h:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    goto :goto_1
.end method

.method protected d(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v5, -0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->j:[I

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a([I)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->j:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->j:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-eq v2, v5, :cond_0

    if-ne v3, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getDrawingTime()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->p:Z

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getScrollX()I

    move-result v6

    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v1, v7

    if-le v6, v1, :cond_3

    add-int/lit8 v1, v0, -0x1

    if-ne v2, v1, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v1, v0

    invoke-virtual {p1, v1, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v4, v5}, Lcom/iLoong/launcher/SetupMenu/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/iLoong/launcher/SetupMenu/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getScrollX()I

    move-result v1

    if-gez v1, :cond_5

    add-int/lit8 v1, v0, -0x1

    if-ne v2, v1, :cond_4

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    neg-int v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v1, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v4, v5}, Lcom/iLoong/launcher/SetupMenu/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    int-to-float v0, v0

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_2
    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/iLoong/launcher/SetupMenu/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/iLoong/launcher/SetupMenu/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/iLoong/launcher/SetupMenu/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/iLoong/launcher/SetupMenu/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/iLoong/launcher/SetupMenu/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/iLoong/launcher/SetupMenu/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->n:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->n:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget v3, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->a:I

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_1
    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->a:I

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_5
    iput v3, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->b:F

    iput v3, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->c:F

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->a:I

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :pswitch_1
    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->b:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->e:I

    if-le v0, v3, :cond_7

    move v0, v2

    :goto_3
    if-eqz v0, :cond_4

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->a:I

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_3

    :pswitch_2
    iput v1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->a:I

    goto :goto_1

    :pswitch_3
    iput v1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->a:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->n:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->n:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->m:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->m:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    iput v4, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->b:F

    iput v4, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->c:F

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->m:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->a:I

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :pswitch_1
    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->b:F

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v3, v2

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->e:I

    if-le v3, v2, :cond_7

    move v2, v1

    :goto_3
    if-eqz v2, :cond_5

    iput v1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->a:I

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->i:I

    :cond_5
    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->b:F

    iget v5, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->c:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_8

    iput v1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->d:I

    :goto_4
    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->i:I

    if-nez v2, :cond_6

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->b:F

    cmpl-float v2, v4, v2

    if-lez v2, :cond_9

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->b:F

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->b:F

    :goto_5
    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->i:I

    :cond_6
    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->a:I

    if-ne v2, v1, :cond_2

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->b:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iput v4, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->b:F

    sget-boolean v3, Lcom/iLoong/launcher/Desktop3D/cb;->bh:Z

    if-nez v3, :cond_2

    invoke-virtual {p0, v2, v0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->scrollBy(II)V

    goto :goto_1

    :cond_7
    move v2, v0

    goto :goto_3

    :cond_8
    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->d:I

    goto :goto_4

    :cond_9
    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->b:F

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->b:F

    goto :goto_5

    :pswitch_2
    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->a:I

    if-ne v2, v1, :cond_a

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->n:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->f:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v5, v2

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getWidth()I

    move-result v6

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->b:F

    iget v4, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->c:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->d:I

    if-nez v4, :cond_d

    int-to-float v4, v6

    iget v7, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->l:F

    mul-float/2addr v4, v7

    cmpl-float v4, v2, v4

    if-lez v4, :cond_d

    iget-boolean v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->p:Z

    if-eqz v2, :cond_b

    move v2, v3

    :goto_6
    iget v4, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v8

    iget-boolean v4, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->p:Z

    if-eqz v4, :cond_c

    move v4, v0

    :goto_7
    sub-int v4, v8, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_8
    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    int-to-float v6, v6

    div-float v6, v4, v6

    const/16 v4, 0x226

    if-le v5, v4, :cond_13

    iget v7, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    iget-boolean v4, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->p:Z

    if-eqz v4, :cond_11

    move v4, v3

    :goto_9
    if-le v7, v4, :cond_13

    int-to-float v4, v2

    cmpg-float v4, v6, v4

    if-gez v4, :cond_12

    iget v4, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    add-int/lit8 v4, v4, -0x1

    :goto_a
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/SetupMenu/PagedView;->b(I)V

    :goto_b
    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->n:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->n:Landroid/view/VelocityTracker;

    :cond_a
    iput v3, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->i:I

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->a:I

    goto/16 :goto_1

    :cond_b
    move v2, v0

    goto :goto_6

    :cond_c
    move v4, v1

    goto :goto_7

    :cond_d
    iget v4, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->d:I

    if-ne v4, v1, :cond_10

    int-to-float v4, v6

    iget v7, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->l:F

    mul-float/2addr v4, v7

    cmpl-float v2, v2, v4

    if-lez v2, :cond_10

    iget-boolean v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->p:Z

    if-eqz v2, :cond_e

    move v2, v3

    :goto_c
    iget v4, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v8

    iget-boolean v4, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->p:Z

    if-eqz v4, :cond_f

    move v4, v0

    :goto_d
    sub-int v4, v8, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_8

    :cond_e
    move v2, v0

    goto :goto_c

    :cond_f
    move v4, v1

    goto :goto_d

    :cond_10
    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    goto :goto_8

    :cond_11
    move v4, v0

    goto :goto_9

    :cond_12
    iget v4, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    goto :goto_a

    :cond_13
    const/16 v4, -0x226

    if-ge v5, v4, :cond_16

    iget v5, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v7

    iget-boolean v4, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->p:Z

    if-eqz v4, :cond_14

    move v4, v0

    :goto_e
    sub-int v4, v7, v4

    if-ge v5, v4, :cond_16

    int-to-float v4, v2

    cmpl-float v4, v6, v4

    if-lez v4, :cond_15

    iget v4, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    add-int/lit8 v4, v4, 0x1

    :goto_f
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/SetupMenu/PagedView;->b(I)V

    goto :goto_b

    :cond_14
    move v4, v1

    goto :goto_e

    :cond_15
    iget v4, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->g:I

    goto :goto_f

    :cond_16
    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/SetupMenu/PagedView;->b(I)V

    goto :goto_b

    :pswitch_3
    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->b()V

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->a:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->q:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    if-gez p1, :cond_1

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method public setLoop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->p:Z

    return-void
.end method

.method public setOverScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->q:Z

    return-void
.end method

.method public setScrollingSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->k:F

    return-void
.end method

.method public setSwitchListener(Lcom/iLoong/launcher/SetupMenu/w;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/PagedView;->o:Lcom/iLoong/launcher/SetupMenu/w;

    return-void
.end method
