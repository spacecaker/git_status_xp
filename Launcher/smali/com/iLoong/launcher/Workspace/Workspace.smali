.class public Lcom/iLoong/launcher/Workspace/Workspace;
.super Landroid/view/ViewGroup;

# interfaces
.implements Lcom/iLoong/launcher/Desktop3D/ad;


# instance fields
.field private a:I

.field private b:Lcom/iLoong/launcher/Workspace/CellLayout;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/iLoong/launcher/Workspace/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->a:I

    iput-boolean v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->a:I

    return v0
.end method

.method public a(Landroid/view/View;)Landroid/view/View;
    .locals 3

    instance-of v0, p1, La/a/a;

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Workspace/Workspace;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public a(FII)V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 3

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Workspace/Workspace;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->b:Lcom/iLoong/launcher/Workspace/CellLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->b:Lcom/iLoong/launcher/Workspace/CellLayout;

    invoke-virtual {p0, v0, p1}, Lcom/iLoong/launcher/Workspace/Workspace;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Workspace/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Workspace/CellLayout;

    invoke-virtual {p0, v0, p1}, Lcom/iLoong/launcher/Workspace/Workspace;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;IIIIIZ)V
    .locals 4

    const-string v0, "widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add widget:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Workspace/Workspace;->getChildCount()I

    move-result v0

    if-lt p2, v0, :cond_2

    :cond_0
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The screen must be >= 0 and < "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Workspace/Workspace;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "); skipping child"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/iLoong/launcher/Workspace/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Workspace/CellLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;

    if-nez v1, :cond_3

    new-instance v1, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;

    invoke-direct {v1, p3, p4, p5, p6}, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;-><init>(IIII)V

    move-object v2, v1

    :goto_1
    if-eqz p7, :cond_4

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, p1, v1, v2}, Lcom/iLoong/launcher/Workspace/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Workspace/Workspace;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    check-cast v0, La/a/a;

    iget v2, p0, Lcom/iLoong/launcher/Workspace/Workspace;->a:I

    invoke-interface {v0, v2}, La/a/a;->b(I)V

    instance-of v0, v1, Lcom/iLoong/launcher/widget/WidgetHostView;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-virtual {v0}, Lcom/iLoong/launcher/widget/WidgetHostView;->a()Lcom/iLoong/launcher/widget/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iLoong/launcher/widget/c;->a()Lcom/iLoong/launcher/a/c;

    move-result-object v0

    check-cast v1, La/a/a;

    iget v2, v0, Lcom/iLoong/launcher/a/c;->a:I

    invoke-interface {v1, v2}, La/a/a;->a(I)V

    const-string v1, "launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set WidgetId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/iLoong/launcher/a/c;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput p3, v1, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->a:I

    iput p4, v1, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->b:I

    iput p5, v1, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->c:I

    iput p6, v1, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->d:I

    move-object v2, v1

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public a(Lcom/iLoong/launcher/widget/c;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/iLoong/launcher/widget/c;->a()Lcom/iLoong/launcher/a/c;

    invoke-virtual {p0, p2}, Lcom/iLoong/launcher/Workspace/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Workspace/CellLayout;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Workspace/CellLayout;->a(Lcom/iLoong/launcher/widget/c;)V

    return-void
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Workspace/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Workspace/CellLayout;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Workspace/Workspace;->addView(Landroid/view/View;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Workspace/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Workspace/CellLayout;

    iput-object v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->b:Lcom/iLoong/launcher/Workspace/CellLayout;

    iget-object v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->b:Lcom/iLoong/launcher/Workspace/CellLayout;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Workspace/Workspace;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p0}, Lcom/iLoong/launcher/Workspace/Workspace;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, La/a/a;

    iget v1, p0, Lcom/iLoong/launcher/Workspace/Workspace;->a:I

    invoke-interface {v0, v1}, La/a/a;->e(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->d:Z

    const-string v0, "launcher"

    const-string v1, "startCovered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->d:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->a:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Workspace/Workspace;->getChildAt(I)Landroid/view/View;

    invoke-virtual {p0, p0}, Lcom/iLoong/launcher/Workspace/Workspace;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, La/a/a;

    iget v1, p0, Lcom/iLoong/launcher/Workspace/Workspace;->a:I

    invoke-interface {v0, v1}, La/a/a;->f(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->d:Z

    const-string v0, "launcher"

    const-string v1, "stopCovered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public e()V
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->a:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Workspace/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Workspace/Workspace;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/iLoong/launcher/Workspace/Workspace;->c:Z

    if-nez v1, :cond_0

    check-cast v0, La/a/a;

    iget v1, p0, Lcom/iLoong/launcher/Workspace/Workspace;->a:I

    invoke-interface {v0, v1}, La/a/a;->d(I)V

    const-string v0, "launcher"

    const-string v1, "moveIn:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->c:Z

    :cond_0
    return-void
.end method

.method public f()V
    .locals 5

    iget v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->a:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Workspace/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Workspace/Workspace;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->c:Z

    const-string v2, "launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "moveOut:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, La/a/a;

    iget v4, p0, Lcom/iLoong/launcher/Workspace/Workspace;->a:I

    invoke-interface {v0, v4}, La/a/a;->c(I)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/iLoong/launcher/widget/WidgetHostView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->getSysWidgetView(Lcom/iLoong/launcher/widget/WidgetHostView;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Workspace/Workspace;->getChildCount()I

    move-result v3

    move v1, v2

    move v0, v2

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Workspace/Workspace;->getChildAt(I)Landroid/view/View;

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
    .locals 3

    const/high16 v1, 0x4000

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Workspace/Workspace;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Workspace/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCurrentPage(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Workspace/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->a:I

    iget v0, p0, Lcom/iLoong/launcher/Workspace/Workspace;->a:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Workspace/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendScrollWorkspaceMsg(I)V

    const-string v0, "widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scroll workspace:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/iLoong/launcher/Workspace/Workspace;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
