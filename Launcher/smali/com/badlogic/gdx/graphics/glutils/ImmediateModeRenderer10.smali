.class public Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;


# instance fields
.field private colors:[F

.field private colorsBuffer:Ljava/nio/FloatBuffer;

.field private hasCols:Z

.field private hasNors:Z

.field private hasTexCoords:Z

.field private idxCols:I

.field private idxNors:I

.field private idxPos:I

.field private idxTexCoords:I

.field private final maxVertices:I

.field private normals:[F

.field private normalsBuffer:Ljava/nio/FloatBuffer;

.field private numVertices:I

.field private positions:[F

.field private positionsBuffer:Ljava/nio/FloatBuffer;

.field private primitiveType:I

.field private texCoords:[F

.field private texCoordsBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxNors:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxTexCoords:I

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->maxVertices:I

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "ImmediateModeRenderer can only be used with OpenGL ES 1.0/1.1"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positions:[F

    mul-int/lit8 v0, p1, 0x3

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positionsBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v0, p1, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colors:[F

    mul-int/lit8 v0, p1, 0x4

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colorsBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normals:[F

    mul-int/lit8 v0, p1, 0x3

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normalsBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->texCoords:[F

    mul-int/lit8 v0, p1, 0x2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->texCoordsBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public begin(I)V
    .locals 1

    const/4 v0, 0x0

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->primitiveType:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->numVertices:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxNors:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxTexCoords:I

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasCols:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasNors:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasTexCoords:Z

    return-void
.end method

.method public begin(Lcom/badlogic/gdx/math/Matrix4;I)V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    const/16 v1, 0x1701

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glMatrixMode(I)V

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL10;->glLoadMatrixf([FI)V

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glMatrixMode(I)V

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL10;->glLoadIdentity()V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->begin(I)V

    return-void
.end method

.method public color(FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colors:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colors:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colors:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    add-int/lit8 v1, v1, 0x2

    aput p3, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colors:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    add-int/lit8 v1, v1, 0x3

    aput p4, v0, v1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasCols:Z

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public end()V
    .locals 9

    const v8, 0x8078

    const v7, 0x8076

    const v6, 0x8075

    const/16 v5, 0x1406

    const/4 v4, 0x0

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    const v1, 0x8074

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glEnableClientState(I)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positionsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positions:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positionsBuffer:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    invoke-static {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positionsBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v1, v5, v4, v2}, Lcom/badlogic/gdx/graphics/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasCols:Z

    if-eqz v1, :cond_2

    invoke-interface {v0, v7}, Lcom/badlogic/gdx/graphics/GL10;->glEnableClientState(I)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colorsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colors:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colorsBuffer:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    invoke-static {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colorsBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v1, v5, v4, v2}, Lcom/badlogic/gdx/graphics/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    :cond_2
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasNors:Z

    if-eqz v1, :cond_3

    invoke-interface {v0, v6}, Lcom/badlogic/gdx/graphics/GL10;->glEnableClientState(I)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normalsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normals:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normalsBuffer:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxNors:I

    invoke-static {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normalsBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v5, v4, v1}, Lcom/badlogic/gdx/graphics/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    :cond_3
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasTexCoords:Z

    if-eqz v1, :cond_4

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glClientActiveTexture(I)V

    invoke-interface {v0, v8}, Lcom/badlogic/gdx/graphics/GL10;->glEnableClientState(I)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->texCoordsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->texCoords:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->texCoordsBuffer:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxTexCoords:I

    invoke-static {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->texCoordsBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v1, v5, v4, v2}, Lcom/badlogic/gdx/graphics/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    :cond_4
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->primitiveType:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    div-int/lit8 v2, v2, 0x3

    invoke-interface {v0, v1, v4, v2}, Lcom/badlogic/gdx/graphics/GL10;->glDrawArrays(III)V

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasCols:Z

    if-eqz v1, :cond_5

    invoke-interface {v0, v7}, Lcom/badlogic/gdx/graphics/GL10;->glDisableClientState(I)V

    :cond_5
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasNors:Z

    if-eqz v1, :cond_6

    invoke-interface {v0, v6}, Lcom/badlogic/gdx/graphics/GL10;->glDisableClientState(I)V

    :cond_6
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasTexCoords:Z

    if-eqz v1, :cond_0

    invoke-interface {v0, v8}, Lcom/badlogic/gdx/graphics/GL10;->glDisableClientState(I)V

    goto/16 :goto_0
.end method

.method public getMaxVertices()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->maxVertices:I

    return v0
.end method

.method public getNumVertices()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->numVertices:I

    return v0
.end method

.method public normal(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normals:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxNors:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normals:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxNors:I

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normals:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxNors:I

    add-int/lit8 v1, v1, 0x2

    aput p3, v0, v1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasNors:Z

    return-void
.end method

.method public texCoord(FF)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->texCoords:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxTexCoords:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->texCoords:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxTexCoords:I

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasTexCoords:Z

    return-void
.end method

.method public vertex(FFF)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positions:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positions:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    aput p2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positions:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    aput p3, v0, v1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasCols:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasNors:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxNors:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxNors:I

    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasTexCoords:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxTexCoords:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxTexCoords:I

    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->numVertices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->numVertices:I

    return-void
.end method

.method public vertex(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 3

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->vertex(FFF)V

    return-void
.end method
