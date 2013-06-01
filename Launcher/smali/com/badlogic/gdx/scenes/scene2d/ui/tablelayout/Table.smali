.class public Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;


# instance fields
.field private backgroundPatch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public clip:Z

.field public isPressed:Z

.field private final layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

.field private listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ClickListener;

.field private final scissors:Lcom/badlogic/gdx/math/Rectangle;

.field private final tableBounds:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->tableBounds:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->scissors:Lcom/badlogic/gdx/math/Rectangle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->transform:Z

    if-nez p2, :cond_0

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-direct {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->setTable(Ljava/lang/Object;)V

    iput-object p1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Ljava/lang/String;)V

    return-void
.end method

.method private calculateScissors(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->tableBounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->tableBounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->tableBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->width:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->tableBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->height:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->backgroundPatch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->tableBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getToolkit()Lcom/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getPadLeft()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->width(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->tableBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getToolkit()Lcom/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getPadBottom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->width(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->tableBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->tableBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getToolkit()Lcom/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getPadRight()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->width(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    sub-float v0, v2, v0

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->tableBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->tableBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getToolkit()Lcom/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getPadTop()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->width(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    sub-float v0, v2, v0

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->tableBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->scissors:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v0, p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    return-void
.end method

.method public static drawDebug(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 2

    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->drawDebug:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getSpriteBatch()Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->drawDebug(Ljava/util/List;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0
.end method

.method private static drawDebug(Ljava/util/List;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->drawDebug(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_1
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->drawDebug(Ljava/util/List;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method public add()Lcom/a/a/c;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->add(Ljava/lang/Object;)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;)Lcom/a/a/c;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->align(I)Lcom/a/a/e;

    return-object p0
.end method

.method public align(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->align(Ljava/lang/String;)Lcom/a/a/e;

    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->bottom()Lcom/a/a/e;

    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->center()Lcom/a/a/e;

    return-object p0
.end method

.method public clear()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->clear()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->invalidate()V

    return-void
.end method

.method public click(FF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ClickListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ClickListener;->click(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)V

    :cond_0
    return-void
.end method

.method public columnDefaults(I)Lcom/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->columnDefaults(I)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public debug()Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debug()Lcom/a/a/e;

    return-object p0
.end method

.method public debug(I)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debug(I)Lcom/a/a/e;

    return-object p0
.end method

.method public debug(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->debug(Ljava/lang/String;)Lcom/a/a/e;

    return-object p0
.end method

.method public defaults()Lcom/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->defaults()Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->validate()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->transform:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->clip:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->calculateScissors(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->scissors:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->popScissors()V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_1
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->backgroundPatch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->backgroundPatch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->y:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->width:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_0
    return-void
.end method

.method public getAlign()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getAlign()I

    move-result v0

    return v0
.end method

.method public getAllCells()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getAllCells()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllCells(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getAllCells(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundPatch()Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->backgroundPatch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    return-object v0
.end method

.method public getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getCell(Ljava/lang/Object;)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public getCell(Ljava/lang/String;)Lcom/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getCell(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public getCells()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getCells()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClickListener()Lcom/badlogic/gdx/scenes/scene2d/ui/ClickListener;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ClickListener;

    return-object v0
.end method

.method public getDebug()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getDebug()I

    move-result v0

    return v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getHeight()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinHeight()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getMinHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getMinWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getPadBottom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getPadBottom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPadLeft()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getPadLeft()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPadRight()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getPadRight()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPadTop()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getPadTop()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefHeight()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->backgroundPatch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getPrefHeight()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->backgroundPatch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getPrefHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getPrefWidth()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->backgroundPatch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getPrefWidth()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->backgroundPatch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getPrefWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getRow(F)I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getRow(F)I

    move-result v0

    return v0
.end method

.method public getTableLayout()Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    return-object v0
.end method

.method public getWidget(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getWidget(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public getWidgets()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getWidgets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWidgets(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getWidgets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public height(I)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->height(I)Lcom/a/a/e;

    return-object p0
.end method

.method public height(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->height(Ljava/lang/String;)Lcom/a/a/e;

    return-object p0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->invalidate()V

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    return-void
.end method

.method public layout()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->layout()V

    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->left()Lcom/a/a/e;

    return-object p0
.end method

.method public newTable()Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getToolkit()Lcom/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->newTable(Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    move-result-object v0

    return-object v0
.end method

.method public pad(I)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->pad(I)Lcom/a/a/e;

    return-object p0
.end method

.method public pad(IIII)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->pad(IIII)Lcom/a/a/e;

    return-object p0
.end method

.method public pad(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->pad(Ljava/lang/String;)Lcom/a/a/e;

    return-object p0
.end method

.method public pad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->pad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/e;

    return-object p0
.end method

.method public padBottom(I)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->padBottom(I)Lcom/a/a/e;

    return-object p0
.end method

.method public padBottom(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->padBottom(Ljava/lang/String;)Lcom/a/a/e;

    return-object p0
.end method

.method public padLeft(I)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->padLeft(I)Lcom/a/a/e;

    return-object p0
.end method

.method public padLeft(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->padLeft(Ljava/lang/String;)Lcom/a/a/e;

    return-object p0
.end method

.method public padRight(I)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->padRight(I)Lcom/a/a/e;

    return-object p0
.end method

.method public padRight(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->padRight(Ljava/lang/String;)Lcom/a/a/e;

    return-object p0
.end method

.method public padTop(I)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->padTop(I)Lcom/a/a/e;

    return-object p0
.end method

.method public padTop(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->padTop(Ljava/lang/String;)Lcom/a/a/e;

    return-object p0
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/a/a/a; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error parsing layout file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->parse(Ljava/lang/String;)V

    return-void
.end method

.method public register(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->register(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->reset()V

    return-void
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->right()Lcom/a/a/e;

    return-object p0
.end method

.method public row()Lcom/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->row()Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public setAssetManager(Lcom/badlogic/gdx/assets/AssetManager;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    iput-object p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    return-void
.end method

.method public setBackground(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->backgroundPatch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->backgroundPatch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->pad(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->padBottom(I)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->padTop(I)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->padLeft(I)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->padRight(I)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->invalidate()V

    goto :goto_0
.end method

.method public setClickListener(Lcom/badlogic/gdx/scenes/scene2d/ui/ClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ClickListener;

    return-void
.end method

.method public setClip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->clip:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->transform:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->invalidate()V

    return-void
.end method

.method public setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    iput-object p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-void
.end method

.method public setWidget(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->setWidget(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public size(II)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->size(II)Lcom/a/a/e;

    return-object p0
.end method

.method public size(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->size(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/e;

    return-object p0
.end method

.method public varargs stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->stack([Ljava/lang/Object;)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->top()Lcom/a/a/e;

    return-object p0
.end method

.method public touchDown(FFI)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->touchDown(FFI)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ClickListener;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->isPressed:Z

    goto :goto_0
.end method

.method public touchUp(FFI)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->click(FF)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->isPressed:Z

    return-void
.end method

.method public width(I)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->width(I)Lcom/a/a/e;

    return-object p0
.end method

.method public width(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->width(Ljava/lang/String;)Lcom/a/a/e;

    return-object p0
.end method
