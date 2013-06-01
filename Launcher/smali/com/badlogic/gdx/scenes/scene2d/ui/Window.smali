.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Window;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;


# instance fields
.field private final dragOffset:Lcom/badlogic/gdx/math/Vector2;

.field private dragging:Z

.field private isModal:Z

.field private isMovable:Z

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

.field private title:Ljava/lang/String;

.field private titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 3

    const-string v1, ""

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getStyle(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 2

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getStyle(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/high16 v1, 0x4316

    invoke-direct {p0, v0, v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragOffset:Lcom/badlogic/gdx/math/Vector2;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "title cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setClip(Z)V

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->width:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->height:F

    return-void
.end method

.method private getTitleBarHeight()I
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getTableLayout()Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->getToolkit()Lcom/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getTableLayout()Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadTop()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->height(Lcom/a/a/e;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->x:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setPosition(FF)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    if-nez v0, :cond_0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public layout()V
    .locals 7

    const/high16 v6, 0x4000

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->layout()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getMultiLineBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->width:F

    div-float/2addr v3, v6

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->height:F

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getTitleBarHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    div-float/2addr v0, v6

    add-float/2addr v0, v4

    invoke-virtual {v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setMultiLineText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-void
.end method

.method public setModal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return-void
.end method

.method public setMovable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setBackground(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleCache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->invalidateHierarchy()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    return-void
.end method

.method public touchDown(FFI)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3, p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->swapActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->touchDown(FFI)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->height:F

    sub-float/2addr v0, p2

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getTitleBarHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragOffset:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public touchDragged(FFI)V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragOffset:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->x:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragOffset:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, p2, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->y:F

    goto :goto_0
.end method
