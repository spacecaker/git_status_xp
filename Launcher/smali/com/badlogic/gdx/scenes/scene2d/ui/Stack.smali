.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/high16 v1, 0x4316

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->transform:Z

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->width:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->height:F

    return-void
.end method


# virtual methods
.method public getMaxHeight()F
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    move v1, v2

    :goto_1
    if-lt v3, v4, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->scaleY:F

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->instance:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getMaxHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    if-lez v0, :cond_3

    cmpl-float v5, v1, v2

    if-nez v5, :cond_2

    int-to-float v0, v0

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public getMaxWidth()F
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    move v1, v2

    :goto_1
    if-lt v3, v4, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->scaleX:F

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->instance:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getMaxHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    if-lez v0, :cond_3

    cmpl-float v5, v1, v2

    if-nez v5, :cond_2

    int-to-float v0, v0

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public getMinHeight()F
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->scaleY:F

    mul-float/2addr v0, v2

    return v0

    :cond_0
    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->instance:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getMinHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getMinWidth()F
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->scaleX:F

    mul-float/2addr v0, v2

    return v0

    :cond_0
    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->instance:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getMinWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getPrefHeight()F
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->scaleY:F

    mul-float/2addr v0, v2

    return v0

    :cond_0
    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->instance:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getPrefHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getPrefWidth()F
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->scaleX:F

    mul-float/2addr v0, v2

    return v0

    :cond_0
    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->instance:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getPrefWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public layout()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->width:F

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->height:F

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    instance-of v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->invalidate()V

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->validate()V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
