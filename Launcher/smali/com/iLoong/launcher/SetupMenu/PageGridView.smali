.class public Lcom/iLoong/launcher/SetupMenu/PageGridView;
.super Landroid/view/ViewGroup;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 6

    const/high16 v5, 0x4000

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/PageGridView;->a:I

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PageGridView;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/l;

    iget v3, p0, Lcom/iLoong/launcher/SetupMenu/PageGridView;->c:I

    iget v4, p0, Lcom/iLoong/launcher/SetupMenu/PageGridView;->d:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/SetupMenu/l;->a(IIII)V

    iget v1, v0, Lcom/iLoong/launcher/SetupMenu/l;->width:I

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v0, v0, Lcom/iLoong/launcher/SetupMenu/l;->height:I

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/l;

    iget v4, v0, Lcom/iLoong/launcher/SetupMenu/l;->c:I

    iget v5, v0, Lcom/iLoong/launcher/SetupMenu/l;->d:I

    iget v6, v0, Lcom/iLoong/launcher/SetupMenu/l;->width:I

    add-int/2addr v6, v4

    iget v0, v0, Lcom/iLoong/launcher/SetupMenu/l;->height:I

    add-int/2addr v0, v5

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/SetupMenu/PageGridView;->a(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCellDimensions(IIII)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/SetupMenu/PageGridView;->a:I

    iput p2, p0, Lcom/iLoong/launcher/SetupMenu/PageGridView;->b:I

    iput p3, p0, Lcom/iLoong/launcher/SetupMenu/PageGridView;->c:I

    iput p4, p0, Lcom/iLoong/launcher/SetupMenu/PageGridView;->d:I

    return-void
.end method

.method public setupLp(Lcom/iLoong/launcher/SetupMenu/l;)V
    .locals 4

    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/PageGridView;->a:I

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/PageGridView;->b:I

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/PageGridView;->c:I

    iget v3, p0, Lcom/iLoong/launcher/SetupMenu/PageGridView;->d:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/iLoong/launcher/SetupMenu/l;->a(IIII)V

    return-void
.end method
