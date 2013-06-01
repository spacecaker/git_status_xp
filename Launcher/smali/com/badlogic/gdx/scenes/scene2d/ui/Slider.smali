.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;


# instance fields
.field private isDragging:Z

.field private listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;

.field private max:F

.field private min:F

.field private sliderPos:F

.field private steps:F

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

.field private value:F


# direct methods
.method public constructor <init>(FFFLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 6

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getStyle(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(FFFLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(FFFLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "min must be > max: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "steps must be > 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->steps:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getPrefWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->width:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getPrefHeight()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->height:F

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 2

    const/high16 v1, 0x42c8

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    return-void
.end method

.method private calculatePositionAndValue(F)V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->width:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->width:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v4, v0

    div-float v0, v3, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getValue()F

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;->changed(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 8

    const/high16 v7, 0x3f00

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->slider:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->width:F

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->width:F

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->x:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->y:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->height:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->width:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->x:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->y:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->height:F

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v7

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v6, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    return-void
.end method

.method public getPrefHeight()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->slider:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    const/high16 v0, 0x430c

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    return-object v0
.end method

.method public getValue()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->steps:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->steps:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->isDragging:Z

    return v0
.end method

.method public setRange(FF)V
    .locals 2

    cmpl-float v0, p1, p2

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "min must be < max"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getValue()F

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;->changed(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;F)V

    :cond_1
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->invalidateHierarchy()V

    return-void
.end method

.method public setValue(F)V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value must be >= min and <= max: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    return-void
.end method

.method public setValueChangedListener(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;

    return-void
.end method

.method public touchDown(FFI)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->isDragging:Z

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->calculatePositionAndValue(F)V

    goto :goto_0
.end method

.method public touchDragged(FFI)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->calculatePositionAndValue(F)V

    return-void
.end method

.method public touchUp(FFI)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->isDragging:Z

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->calculatePositionAndValue(F)V

    return-void
.end method
