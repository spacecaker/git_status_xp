.class public Lcom/iLoong/launcher/SetupMenu/u;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:F

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/widget/Scroller;

.field private i:Landroid/view/VelocityTracker;

.field private j:Landroid/view/ViewGroup;

.field private k:Lcom/iLoong/launcher/SetupMenu/m;


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/u;->j:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/u;->a(I)V

    return-void
.end method

.method public a(I)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/iLoong/launcher/SetupMenu/u;->f:I

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    mul-int/2addr v0, v6

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/u;->j:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->h:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/u;->j:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->k:Lcom/iLoong/launcher/SetupMenu/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->k:Lcom/iLoong/launcher/SetupMenu/m;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/u;->j:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/iLoong/launcher/SetupMenu/m;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->i:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->i:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget v3, p0, Lcom/iLoong/launcher/SetupMenu/u;->a:I

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_1
    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->a:I

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_5
    iput v3, p0, Lcom/iLoong/launcher/SetupMenu/u;->b:F

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->a:I

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :pswitch_1
    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->b:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Lcom/iLoong/launcher/SetupMenu/u;->c:I

    if-le v0, v3, :cond_7

    move v0, v2

    :goto_3
    if-eqz v0, :cond_4

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->a:I

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_3

    :pswitch_2
    iput v1, p0, Lcom/iLoong/launcher/SetupMenu/u;->a:I

    goto :goto_1

    :pswitch_3
    iput v1, p0, Lcom/iLoong/launcher/SetupMenu/u;->a:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public b()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->j:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/u;->h:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->h:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->f:I

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/u;->f:I

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->j:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->e:I

    iput v3, p0, Lcom/iLoong/launcher/SetupMenu/u;->f:I

    goto :goto_0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->j:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->i:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->i:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->h:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->h:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    iput v3, p0, Lcom/iLoong/launcher/SetupMenu/u;->b:F

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->h:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->a:I

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :pswitch_1
    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->b:F

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v4, v2

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->c:I

    if-le v4, v2, :cond_7

    move v2, v1

    :goto_3
    if-eqz v2, :cond_5

    iput v1, p0, Lcom/iLoong/launcher/SetupMenu/u;->a:I

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->g:I

    :cond_5
    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->g:I

    if-nez v2, :cond_6

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->b:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_8

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->b:F

    int-to-float v4, v4

    add-float/2addr v2, v4

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->b:F

    :goto_4
    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->g:I

    :cond_6
    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->a:I

    if-ne v2, v1, :cond_2

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->b:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v3, p0, Lcom/iLoong/launcher/SetupMenu/u;->b:F

    iget-object v3, p0, Lcom/iLoong/launcher/SetupMenu/u;->j:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v0}, Landroid/view/ViewGroup;->scrollBy(II)V

    goto :goto_1

    :cond_7
    move v2, v0

    goto :goto_3

    :cond_8
    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->b:F

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->b:F

    goto :goto_4

    :pswitch_2
    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->a:I

    if-ne v2, v1, :cond_9

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->i:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/iLoong/launcher/SetupMenu/u;->d:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x226

    if-le v2, v3, :cond_a

    iget v3, p0, Lcom/iLoong/launcher/SetupMenu/u;->e:I

    if-lez v3, :cond_a

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->e:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/SetupMenu/u;->a(I)V

    :goto_5
    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->i:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->i:Landroid/view/VelocityTracker;

    :cond_9
    const/4 v2, -0x1

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->g:I

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->a:I

    goto/16 :goto_1

    :cond_a
    const/16 v3, -0x226

    if-ge v2, v3, :cond_b

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->e:I

    iget-object v3, p0, Lcom/iLoong/launcher/SetupMenu/u;->j:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_b

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/u;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/SetupMenu/u;->a(I)V

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/u;->a()V

    goto :goto_5

    :pswitch_3
    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/u;->a()V

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/u;->a:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
