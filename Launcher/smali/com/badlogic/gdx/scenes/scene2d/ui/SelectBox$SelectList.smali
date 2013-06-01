.class Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;


# instance fields
.field itemHeight:F

.field oldScreenCoords:Lcom/badlogic/gdx/math/Vector2;

.field ownsTouch:Z

.field selected:I

.field textOffsetX:F

.field textOffsetY:F

.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Ljava/lang/String;FF)V
    .locals 2

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->oldScreenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:I

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->selected:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->ownsTouch:Z

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->x:F

    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->width:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->width:F

    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->height:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->oldScreenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->layout()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->height:F

    sub-float v0, p4, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->height:F

    add-float/2addr v0, p4

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->height:F

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->height:F

    add-float/2addr v0, p4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->y:F

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->height:F

    sub-float v0, p4, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->y:F

    goto :goto_0
.end method

.method private layout()V
    .locals 7

    const/high16 v6, 0x4000

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->listSelection:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    array-length v4, v4

    if-lt v0, v4, :cond_0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v4

    neg-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v0, v4

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->itemSpacing:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v0, v4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleY:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v0

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v4

    add-float/2addr v0, v4

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->itemSpacing:F

    mul-float/2addr v4, v6

    add-float/2addr v0, v4

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    array-length v1, v1

    int-to-float v1, v1

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    mul-float/2addr v1, v4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->itemSpacing:F

    add-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->textOffsetX:F

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v2

    neg-float v2, v2

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->itemSpacing:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->textOffsetY:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->width:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->width:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->width:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleX:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->width:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->height:F

    return-void

    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public act(F)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->oldScreenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->oldScreenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 12

    const/high16 v11, 0x3f80

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->listBackground:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->listSelection:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v9, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v10, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->y:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->width:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->height:F

    const/4 v0, 0x0

    move v6, v0

    move v7, v1

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->selected:I

    if-ne v0, v6, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->x:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->y:F

    add-float/2addr v0, v7

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    sub-float v3, v0, v1

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->width:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    move-object v0, v8

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_1
    iget v0, v10, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleX:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleY:F

    invoke-virtual {v9, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(FF)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    aget-object v0, v0, v6

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->x:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->textOffsetX:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->y:F

    add-float/2addr v2, v7

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->textOffsetY:F

    sub-float/2addr v2, v3

    invoke-virtual {v9, p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-virtual {v9, v11, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(FF)V

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    sub-float v1, v7, v0

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 0

    return-object p0
.end method

.method public touchDown(FFI)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->ownsTouch:Z

    cmpl-float v2, p1, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->width:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    cmpl-float v2, p2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->height:F

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->height:F

    sub-float/2addr v2, p2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->selected:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->selected:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->selected:I

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->selected:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->selected:I

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->selected:I

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:I

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectionListener;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->selected:I

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->selected:I

    aget-object v4, v4, v5

    invoke-interface {v0, v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectionListener;->selected(Lcom/badlogic/gdx/scenes/scene2d/Actor;ILjava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public touchDragged(FFI)V
    .locals 0

    return-void
.end method

.method public touchMoved(FF)Z
    .locals 2

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->height:F

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->selected:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->selected:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->selected:I

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->selected:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->selected:I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public touchUp(FFI)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->ownsTouch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->ownsTouch:Z

    return-void
.end method
