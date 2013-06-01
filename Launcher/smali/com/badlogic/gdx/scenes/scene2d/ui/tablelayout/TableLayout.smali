.class public Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;
.super Lcom/a/a/e;


# instance fields
.field public assetManager:Lcom/badlogic/gdx/assets/AssetManager;

.field debugRects:Lcom/badlogic/gdx/utils/Array;

.field private debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

.field public skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->instance:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    invoke-direct {p0, v0}, Lcom/a/a/e;-><init>(Lcom/a/a/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/e;-><init>(Lcom/a/a/d;)V

    return-void
.end method

.method private toStageCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->toStageCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method


# virtual methods
.method public drawDebug(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 13

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getDebug()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    if-nez v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;

    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;-><init>(IZZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    :cond_2
    :goto_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getTable()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object v3, v0

    :goto_2
    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->begin(Lcom/badlogic/gdx/math/Matrix4;I)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    iget v5, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    move v4, v0

    :goto_3
    if-lt v4, v5, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->end()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    goto :goto_1

    :cond_4
    instance-of v0, v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_a

    iget v0, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float/2addr v2, v0

    iget v0, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    add-float/2addr v0, v1

    move v1, v2

    :goto_4
    iget-object v2, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-object v3, v2

    move v2, v1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;->x:F

    add-float v6, v2, v3

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;->y:F

    add-float/2addr v3, v1

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;->height:F

    sub-float v7, v3, v7

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;->width:F

    add-float v8, v6, v3

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;->height:F

    add-float v9, v7, v3

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;->type:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_5
    int-to-float v10, v3

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;->type:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    :goto_6
    int-to-float v3, v3

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit$DebugRect;->type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_7
    int-to-float v0, v0

    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v12, 0x3f80

    invoke-interface {v11, v10, v3, v0, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v12, 0x0

    invoke-interface {v11, v6, v7, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v12, 0x3f80

    invoke-interface {v11, v10, v3, v0, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v12, 0x0

    invoke-interface {v11, v6, v9, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v12, 0x3f80

    invoke-interface {v11, v10, v3, v0, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v12, 0x0

    invoke-interface {v11, v6, v9, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v12, 0x3f80

    invoke-interface {v11, v10, v3, v0, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v12, 0x0

    invoke-interface {v11, v8, v9, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v12, 0x3f80

    invoke-interface {v11, v10, v3, v0, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v12, 0x0

    invoke-interface {v11, v8, v9, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v11, 0x3f80

    invoke-interface {v9, v10, v3, v0, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v11, 0x0

    invoke-interface {v9, v8, v7, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v11, 0x3f80

    invoke-interface {v9, v10, v3, v0, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v11, 0x0

    invoke-interface {v9, v8, v7, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v9, 0x3f80

    invoke-interface {v8, v10, v3, v0, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v3, 0x0

    invoke-interface {v0, v6, v7, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->getNumVertices()I

    move-result v0

    const/16 v3, 0x40

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v0, v3, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->begin(Lcom/badlogic/gdx/math/Matrix4;I)V

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_3

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_a
    move v0, v1

    move v1, v2

    goto/16 :goto_4
.end method

.method public getWidget(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    invoke-super {p0, p1}, Lcom/a/a/e;->getWidget(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getTable()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getWidget(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getWidget(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public invalidateHierarchy()V
    .locals 1

    invoke-super {p0}, Lcom/a/a/e;->invalidate()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getTable()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->invalidateHierarchy()V

    return-void
.end method

.method public layout()V
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getTable()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->width:F

    float-to-int v1, v1

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->height:F

    float-to-int v2, v2

    invoke-virtual {p0, v3, v3, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->setLayoutSize(IIII)V

    invoke-super {p0}, Lcom/a/a/e;->layout()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getCells()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->getActors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v1, v3

    :goto_1
    if-lt v1, v4, :cond_2

    return-void

    :cond_0
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/c;

    invoke-virtual {v1}, Lcom/a/a/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/a/a/c;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/a/a/c;->e()I

    move-result v7

    int-to-float v7, v7

    iput v7, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    invoke-virtual {v1}, Lcom/a/a/c;->h()I

    move-result v7

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->height:F

    invoke-virtual {v1}, Lcom/a/a/c;->f()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    int-to-float v9, v7

    sub-float/2addr v8, v9

    iput v8, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    invoke-virtual {v1}, Lcom/a/a/c;->g()I

    move-result v1

    int-to-float v1, v1

    iput v1, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    int-to-float v1, v7

    iput v1, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    goto :goto_2

    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->invalidate()V

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->validate()V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public register(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Actor must have a name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->register(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method
