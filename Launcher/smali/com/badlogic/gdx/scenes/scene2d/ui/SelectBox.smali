.class public Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;


# instance fields
.field private final bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

.field items:[Ljava/lang/String;

.field private list:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

.field listener:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectionListener;

.field private prefHeight:F

.field private prefWidth:F

.field final screenCoords:Lcom/badlogic/gdx/math/Vector2;

.field selection:I

.field final stageCoords:Lcom/badlogic/gdx/math/Vector2;

.field style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>([Ljava/lang/Object;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>([Ljava/lang/Object;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getPrefWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->width:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getPrefHeight()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->height:F

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 2

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getStyle(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>([Ljava/lang/Object;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    const/4 v10, 0x0

    const/high16 v9, 0x4000

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->y:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->width:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->width:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v7, v2, v10, v3, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeVisibleGlyphs(Ljava/lang/CharSequence;IIF)I

    move-result v6

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:I

    aget-object v2, v2, v3

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->height:F

    div-float/2addr v1, v9

    float-to-int v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    div-float/2addr v2, v9

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p2

    invoke-virtual {v7, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->x:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v0

    add-float/2addr v3, v0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->y:F

    add-float v4, v0, v1

    move-object v0, v7

    move-object v1, p1

    move v5, v10

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->x:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->toWindowCoordinates(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method

.method public getPrefHeight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefWidth:F

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSelectionIndex()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:I

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    return-object v0
.end method

.method public layout()V
    .locals 0

    return-void
.end method

.method public markToRemove(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->markToRemove(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->markToRemove(Z)V

    :cond_0
    return-void
.end method

.method public setItems([Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "items cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, [Ljava/lang/String;

    if-nez v0, :cond_3

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    array-length v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_1

    :goto_1
    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v4

    add-float/2addr v0, v4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v4

    add-float/2addr v0, v4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v4

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    sub-float/2addr v0, v4

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefHeight:F

    const/4 v0, 0x0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_2
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    array-length v4, v4

    if-lt v0, v4, :cond_2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v2

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefWidth:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->invalidateHierarchy()V

    return-void

    :cond_1
    aget-object v4, p1, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v0, p1

    goto :goto_1
.end method

.method public setSelection(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:I

    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSelectionListener(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectionListener;

    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems([Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->invalidateHierarchy()V

    goto :goto_0
.end method

.method public touchDown(FFI)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->name:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Ljava/lang/String;FF)V

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    move v0, v1

    goto :goto_0
.end method

.method public touchUp(FFI)V
    .locals 0

    return-void
.end method
