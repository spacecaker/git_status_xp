.class public Lcom/badlogic/gdx/math/Polygon;
.super Ljava/lang/Object;


# instance fields
.field private bounds:Lcom/badlogic/gdx/math/Rectangle;

.field private dirty:Z

.field private originX:F

.field private originY:F

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field private final vertices:[F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>([F)V
    .locals 2

    const/high16 v0, 0x3f80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    array-length v0, p1

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "polygons must contain at least 3 points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/math/Polygon;->vertices:[F

    return-void
.end method


# virtual methods
.method public area()F
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    const/high16 v0, 0x3f00

    mul-float/2addr v0, v1

    return v0

    :cond_0
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x2

    rem-int/2addr v5, v3

    add-int/lit8 v6, v0, 0x3

    rem-int/2addr v6, v3

    aget v7, v2, v0

    aget v6, v2, v6

    mul-float/2addr v6, v7

    add-float/2addr v1, v6

    aget v5, v2, v5

    aget v4, v2, v4

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v4

    array-length v5, v4

    move v3, v2

    move v0, v2

    :goto_0
    if-lt v3, v5, :cond_0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    return v0

    :cond_0
    aget v6, v4, v3

    add-int/lit8 v7, v3, 0x1

    aget v7, v4, v7

    add-int/lit8 v8, v3, 0x2

    rem-int/2addr v8, v5

    aget v8, v4, v8

    add-int/lit8 v9, v3, 0x3

    rem-int/2addr v9, v5

    aget v9, v4, v9

    cmpg-float v10, v7, p2

    if-gtz v10, :cond_1

    cmpg-float v10, p2, v9

    if-ltz v10, :cond_2

    :cond_1
    cmpg-float v10, v9, p2

    if-gtz v10, :cond_3

    cmpg-float v10, p2, v7

    if-gez v10, :cond_3

    :cond_2
    sub-float/2addr v8, v6

    sub-float/2addr v9, v7

    div-float/2addr v8, v9

    sub-float v7, p2, v7

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    cmpg-float v6, p1, v6

    if-gez v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .locals 9

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v5

    aget v4, v5, v0

    aget v1, v5, v3

    aget v2, v5, v0

    aget v3, v5, v3

    array-length v6, v5

    const/4 v0, 0x2

    move v8, v0

    move v0, v4

    move v4, v8

    :goto_0
    if-lt v4, v6, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v0, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v1, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v0, v2, v0

    iput v0, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v1, v3, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0

    :cond_0
    aget v7, v5, v4

    cmpl-float v7, v0, v7

    if-lez v7, :cond_1

    aget v0, v5, v4

    :cond_1
    add-int/lit8 v7, v4, 0x1

    aget v7, v5, v7

    cmpl-float v7, v1, v7

    if-lez v7, :cond_2

    add-int/lit8 v1, v4, 0x1

    aget v1, v5, v1

    :cond_2
    aget v7, v5, v4

    cmpg-float v7, v2, v7

    if-gez v7, :cond_3

    aget v2, v5, v4

    :cond_3
    add-int/lit8 v7, v4, 0x1

    aget v7, v5, v7

    cmpg-float v7, v3, v7

    if-gez v7, :cond_4

    add-int/lit8 v3, v4, 0x1

    aget v3, v5, v3

    :cond_4
    add-int/lit8 v4, v4, 0x2

    goto :goto_0
.end method

.method public getOriginX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    return v0
.end method

.method public getVertices()[F
    .locals 13

    const/4 v5, 0x0

    const/high16 v12, 0x3f80

    iget-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->vertices:[F

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/math/Polygon;->vertices:[F

    array-length v6, v3

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    add-float v7, v0, v1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    add-float v8, v0, v1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v9

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v10

    move v4, v5

    :goto_1
    if-lt v4, v6, :cond_1

    iput-boolean v5, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    move-object v0, v3

    goto :goto_0

    :cond_1
    aget v0, v3, v4

    add-int/lit8 v1, v4, 0x1

    aget v2, v3, v1

    sub-float v1, v0, v7

    sub-float v0, v2, v8

    iget v2, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    cmpl-float v2, v2, v12

    if-nez v2, :cond_2

    iget v2, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    cmpl-float v2, v2, v12

    if-eqz v2, :cond_3

    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    mul-float/2addr v0, v2

    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    const/4 v11, 0x0

    cmpl-float v2, v2, v11

    if-eqz v2, :cond_4

    mul-float v2, v9, v1

    mul-float v11, v10, v0

    sub-float/2addr v2, v11

    mul-float/2addr v1, v10

    mul-float/2addr v0, v9

    add-float/2addr v0, v1

    move v1, v2

    :cond_4
    add-float/2addr v1, v7

    add-float/2addr v0, v8

    aput v1, v3, v4

    add-int/lit8 v1, v4, 0x1

    aput v0, v3, v1

    add-int/lit8 v0, v4, 0x2

    move v4, v0

    goto :goto_1
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    return v0
.end method

.method public rotate(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    return-void
.end method

.method public scale(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    return-void
.end method

.method public setOrigin(FF)V
    .locals 1

    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    return-void
.end method

.method public setScale(FF)V
    .locals 1

    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    return-void
.end method

.method public translate(FF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    return-void
.end method
