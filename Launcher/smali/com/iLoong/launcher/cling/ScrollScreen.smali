.class public Lcom/iLoong/launcher/cling/ScrollScreen;
.super Landroid/view/ViewGroup;


# instance fields
.field private a:Lcom/iLoong/launcher/cling/b;

.field private b:Landroid/widget/Scroller;

.field private c:Landroid/view/VelocityTracker;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:F

.field private i:I

.field private j:Lcom/iLoong/launcher/cling/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->g:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->i:I

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->c()V

    return-void
.end method

.method private a(I)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getWidth()I

    move-result v1

    mul-int/2addr v1, v6

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getWidth()I

    move-result v0

    mul-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->b:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iput v6, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->f:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->invalidate()V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->a:Lcom/iLoong/launcher/cling/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->a:Lcom/iLoong/launcher/cling/b;

    iget v1, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->f:I

    invoke-interface {v0, v1}, Lcom/iLoong/launcher/cling/b;->setCurrentScreen(I)V

    :cond_0
    invoke-direct {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->d()V

    :cond_1
    return-void
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->b:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->d:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->f:I

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->j:Lcom/iLoong/launcher/cling/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->j:Lcom/iLoong/launcher/cling/j;

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iLoong/launcher/cling/j;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/cling/ScrollScreen;->a(I)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->f:I

    return v0
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/cling/ScrollScreen;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->i:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->c:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->c:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v3, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    iget v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->i:I

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->h:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v4, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->d:I

    if-le v0, v4, :cond_4

    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    iput v2, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->i:I

    iput v3, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->h:F

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->h:F

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    iput v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->i:I

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_3

    :pswitch_2
    iput v1, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->i:I

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->c:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->c:Landroid/view/VelocityTracker;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getChildCount()I

    move-result v3

    move v1, v2

    move v0, v2

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/cling/ScrollScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int v6, v0, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v4, v0, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    const/high16 v3, 0x4000

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getChildCount()I

    move-result v3

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->g:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/cling/ScrollScreen;->setHorizontalScrollBarEnabled(Z)V

    iget v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->f:I

    mul-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/cling/ScrollScreen;->scrollTo(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/cling/ScrollScreen;->setHorizontalScrollBarEnabled(Z)V

    iput-boolean v1, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->g:Z

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->a:Lcom/iLoong/launcher/cling/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->a:Lcom/iLoong/launcher/cling/b;

    iget v1, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->f:I

    invoke-interface {v0, v1}, Lcom/iLoong/launcher/cling/b;->setCurrentScreen(I)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->c:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->c:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->h:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->h:F

    sub-float/2addr v1, v0

    iput v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->h:F

    neg-float v0, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->b:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    neg-float v0, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->b:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    float-to-int v0, v1

    invoke-virtual {p0, v0, v4}, Lcom/iLoong/launcher/cling/ScrollScreen;->scrollBy(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->c:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->e:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x190

    if-le v0, v1, :cond_5

    iget v1, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->f:I

    if-lez v1, :cond_5

    iget v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/cling/ScrollScreen;->a(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->c:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->c:Landroid/view/VelocityTracker;

    :cond_4
    iput v4, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->i:I

    goto :goto_0

    :cond_5
    const/16 v1, -0x190

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->f:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/cling/ScrollScreen;->a(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->j:Lcom/iLoong/launcher/cling/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->j:Lcom/iLoong/launcher/cling/j;

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/iLoong/launcher/cling/j;->a(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->a()V

    goto :goto_1

    :pswitch_3
    iput v4, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->i:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnScreenChangedListener(Lcom/iLoong/launcher/cling/j;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->j:Lcom/iLoong/launcher/cling/j;

    return-void
.end method

.method public setScreenIndicator(Lcom/iLoong/launcher/cling/b;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->a:Lcom/iLoong/launcher/cling/b;

    return-void
.end method

.method public setToScreen(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->f:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/ScrollScreen;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/iLoong/launcher/cling/ScrollScreen;->scrollTo(II)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->a:Lcom/iLoong/launcher/cling/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->a:Lcom/iLoong/launcher/cling/b;

    iget v1, p0, Lcom/iLoong/launcher/cling/ScrollScreen;->f:I

    invoke-interface {v0, v1}, Lcom/iLoong/launcher/cling/b;->setCurrentScreen(I)V

    :cond_0
    return-void
.end method
