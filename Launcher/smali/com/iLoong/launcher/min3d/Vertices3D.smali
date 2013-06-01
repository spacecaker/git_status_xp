.class public Lcom/iLoong/launcher/min3d/Vertices3D;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private b:[F

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->c:I

    iput p1, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->d:I

    mul-int/lit8 v0, p1, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    return-void
.end method


# virtual methods
.method public addVertex(FFF)I
    .locals 7

    const/4 v4, 0x0

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/min3d/Vertices3D;->addVertex(FFFFFLcom/badlogic/gdx/graphics/Color;)I

    move-result v0

    return v0
.end method

.method public addVertex(FFFFF)I
    .locals 7

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/min3d/Vertices3D;->addVertex(FFFFFLcom/badlogic/gdx/graphics/Color;)I

    move-result v0

    return v0
.end method

.method public addVertex(FFFFFLcom/badlogic/gdx/graphics/Color;)I
    .locals 4

    iget v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->c:I

    iget v1, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->c:I

    mul-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v2, v0, 0x1

    aput p1, v1, v0

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v1, v2, 0x1

    aput p2, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v2, v1, 0x1

    aput p3, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v2, v1, 0x1

    aput p4, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v1, v2, 0x1

    aput p5, v0, v2

    iget v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->c:I

    iget v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->c:I

    goto :goto_0
.end method

.method public addVertex(FFFLcom/badlogic/gdx/graphics/Color;)I
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/min3d/Vertices3D;->addVertex(FFFFFLcom/badlogic/gdx/graphics/Color;)I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->c:I

    return v0
.end method

.method public getVertex(I)Lcom/iLoong/launcher/min3d/Vertex3D;
    .locals 4

    iget v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->c:I

    if-ge p1, v0, :cond_0

    mul-int/lit8 v1, p1, 0x6

    new-instance v0, Lcom/iLoong/launcher/min3d/Vertex3D;

    invoke-direct {v0}, Lcom/iLoong/launcher/min3d/Vertex3D;-><init>()V

    iget-object v2, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v3, v1, 0x1

    aget v1, v2, v1

    iput v1, v0, Lcom/iLoong/launcher/min3d/Vertex3D;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    iput v1, v0, Lcom/iLoong/launcher/min3d/Vertex3D;->y:F

    iget-object v1, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v3, v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/iLoong/launcher/min3d/Vertex3D;->z:F

    iget-object v1, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    iput v1, v0, Lcom/iLoong/launcher/min3d/Vertex3D;->color:F

    iget-object v1, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v3, v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/iLoong/launcher/min3d/Vertex3D;->u:F

    iget-object v1, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    iput v1, v0, Lcom/iLoong/launcher/min3d/Vertex3D;->v:F

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVertices()[F
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    return-object v0
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 4

    const/4 v1, 0x3

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->c:I

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setVertex(ILcom/iLoong/launcher/min3d/Vertex3D;)I
    .locals 4

    iget v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->c:I

    if-ge p1, v0, :cond_0

    mul-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v2, v0, 0x1

    iget v3, p2, Lcom/iLoong/launcher/min3d/Vertex3D;->x:F

    aput v3, v1, v0

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v1, v2, 0x1

    iget v3, p2, Lcom/iLoong/launcher/min3d/Vertex3D;->y:F

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v2, v1, 0x1

    iget v3, p2, Lcom/iLoong/launcher/min3d/Vertex3D;->z:F

    aput v3, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v1, v2, 0x1

    iget v3, p2, Lcom/iLoong/launcher/min3d/Vertex3D;->color:F

    aput v3, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v2, v1, 0x1

    iget v3, p2, Lcom/iLoong/launcher/min3d/Vertex3D;->u:F

    aput v3, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Vertices3D;->b:[F

    add-int/lit8 v1, v2, 0x1

    iget v1, p2, Lcom/iLoong/launcher/min3d/Vertex3D;->v:F

    aput v1, v0, v2

    :goto_0
    return p1

    :cond_0
    const/4 p1, -0x1

    goto :goto_0
.end method
