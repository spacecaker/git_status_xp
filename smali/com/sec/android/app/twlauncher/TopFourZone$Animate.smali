.class Lcom/sec/android/app/twlauncher/TopFourZone$Animate;
.super Ljava/lang/Object;
.source "TopFourZone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/TopFourZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Animate"
.end annotation


# instance fields
.field private mRect:Landroid/graphics/Rect;

.field private mScroller:Landroid/widget/Scroller;

.field private mTargetView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/TopFourZone;


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 556
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone$Animate;->mScroller:Landroid/widget/Scroller;

    .line 557
    .local v1, scroller:Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 559
    .local v0, more:Z
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 560
    .local v3, x:I
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 562
    .local v4, y:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone$Animate;->mTargetView:Landroid/view/View;

    .line 563
    .local v2, target:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 566
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/TopFourZone$Animate;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->invalidate()V

    .line 568
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/TopFourZone$Animate;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v5, p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->post(Ljava/lang/Runnable;)Z

    .line 574
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 572
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/TopFourZone$Animate;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->invalidate()V

    goto :goto_0
.end method

.method public start(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "target"
    .parameter "nextRect"

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone$Animate;->stop()V

    .line 540
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/TopFourZone$Animate;->mTargetView:Landroid/view/View;

    .line 541
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/TopFourZone$Animate;->mRect:Landroid/graphics/Rect;

    .line 542
    .local v6, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone$Animate;->mScroller:Landroid/widget/Scroller;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    const/16 v5, 0x12c

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone$Animate;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->post(Ljava/lang/Runnable;)Z

    .line 545
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone$Animate;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 549
    return-void
.end method
