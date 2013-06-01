.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private final indices:[[S

.field private mBBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

.field private final mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private final model:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

.field private useJni:Z

.field private useNormals:Z

.field private final vertices:[[F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;ZZ)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mBBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "JNI with normals is currently unsupported."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    const/16 v0, 0x8

    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->model:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

    iput-boolean p3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->useJni:Z

    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->useNormals:Z

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v1, v1

    new-array v1, v1, [[S

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->indices:[[S

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v1, v1

    new-array v1, v1, [[F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_1
    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v5, v5

    if-lt v1, v5, :cond_2

    if-eqz p2, :cond_5

    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    new-array v1, v7, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v5, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v6, "a_position"

    invoke-direct {v5, v2, v7, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v5, v1, v2

    new-instance v5, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v6, "a_texCoord0"

    invoke-direct {v5, v7, v8, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v5, v1, v9

    new-instance v5, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v6, "a_normal"

    invoke-direct {v5, v8, v7, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v5, v1, v8

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    if-ge v4, v5, :cond_3

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    :cond_3
    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numTriangles:I

    mul-int/lit8 v5, v5, 0x3

    if-ge v3, v5, :cond_4

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numTriangles:I

    mul-int/lit8 v3, v3, 0x3

    :cond_4
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->indices:[[S

    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->getIndices()[S

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v6, v6, v1

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->createVertexArray(I)[F

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    new-array v1, v8, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v5, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v6, "a_position"

    invoke-direct {v5, v2, v7, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v5, v1, v2

    new-instance v5, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v6, "a_texCoord0"

    invoke-direct {v5, v7, v8, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v5, v1, v9

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    goto :goto_2
.end method


# virtual methods
.method public calculateNormals(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->model:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->model:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    aget-object v2, v2, v0

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calculateNormalsBind(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    return-void
.end method

.method public getBBox()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mBBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    return-object v0
.end method

.method public getIndices(I)[S
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->indices:[[S

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMesh()Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    return-object v0
.end method

.method public getVertices(I)[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isJniUsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->useJni:Z

    return v0
.end method

.method public render()V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->model:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->indices:[[S

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)V

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->indices:[[S

    aget-object v4, v4, v0

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Mesh;->render(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public render([Lcom/badlogic/gdx/graphics/g3d/Material;)V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->model:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v0

    if-eqz v2, :cond_2

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Material;->Texture:Lcom/badlogic/gdx/graphics/TextureRef;

    if-eqz v2, :cond_1

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/Material;->Texture:Lcom/badlogic/gdx/graphics/TextureRef;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/TextureRef;->bind()V

    :cond_1
    aget-object v2, p1, v0

    const/16 v3, 0x404

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(I)V

    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->indices:[[S

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)V

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->indices:[[S

    aget-object v4, v4, v0

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Mesh;->render(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSkeleton(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mBBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->clr()Lcom/badlogic/gdx/math/collision/BoundingBox;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->model:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->model:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v1, v1, v0

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->useJni:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->useNormals:Z

    if-eqz v2, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Can\'t skin vertices & normals using native code yet"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    aget-object v2, v2, v0

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calculateVerticesJni(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->useNormals:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mBBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calculateVerticesN(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[FLcom/badlogic/gdx/math/collision/BoundingBox;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->vertices:[[F

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->mBBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calculateVertices(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[FLcom/badlogic/gdx/math/collision/BoundingBox;)V

    goto :goto_1
.end method

.method public setUseJni(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->useJni:Z

    return-void
.end method
