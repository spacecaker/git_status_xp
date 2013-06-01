.class public Lcom/iLoong/launcher/min3d/Object3DBase;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;


# instance fields
.field private a:Z

.field protected final combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field protected faces:Lcom/iLoong/launcher/min3d/Faces3D;

.field protected mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field protected shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field protected vertices:Lcom/iLoong/launcher/min3d/Vertices3D;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Gdx;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/iLoong/launcher/min3d/Object3DBase;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/iLoong/launcher/Widget3D/MainAppContext;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/iLoong/launcher/min3d/Object3DBase;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->a:Z

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public static createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 4

    const-string v0, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nuniform vec4 u_color;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = u_color * a_color;\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projTrans * a_position;\n}\n"

    const-string v1, "#ifdef GL_ES\n#define LOWP lowp\nprecision mediump float;\n#else\n#define LOWP \n#endif\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}"

    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "couldn\'t compile shader: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->dispose()V

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    :cond_1
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    const/16 v5, 0xb71

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/min3d/Object3DBase;->createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_projTrans"

    iget-object v2, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_texture"

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v1, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_color"

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    iget-boolean v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDepthMask(Z)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0x203

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDepthFunc(I)V

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glBlendFunc(II)V

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->faces:Lcom/iLoong/launcher/min3d/Faces3D;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->faces:Lcom/iLoong/launcher/min3d/Faces3D;

    invoke-virtual {v1}, Lcom/iLoong/launcher/min3d/Faces3D;->getIndices()[S

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)V

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->vertices:Lcom/iLoong/launcher/min3d/Vertices3D;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->vertices:Lcom/iLoong/launcher/min3d/Vertices3D;

    invoke-virtual {v1}, Lcom/iLoong/launcher/min3d/Vertices3D;->getVertices()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    :cond_4
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V

    :goto_0
    iget-boolean v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->a:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/graphics/GLCommon;->glDepthMask(Z)V

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/Mesh;->render(I)V

    goto :goto_0
.end method

.method public enableDepthMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->a:Z

    return-void
.end method

.method public setColor(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->color:Lcom/badlogic/gdx/graphics/Color;

    iput p1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->color:Lcom/badlogic/gdx/graphics/Color;

    iput p2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->color:Lcom/badlogic/gdx/graphics/Color;

    iput p3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->color:Lcom/badlogic/gdx/graphics/Color;

    iput p4, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    return-void
.end method

.method public setMesh(II)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v2, 0x0

    new-instance v0, Lcom/iLoong/launcher/min3d/Faces3D;

    invoke-direct {v0, p1}, Lcom/iLoong/launcher/min3d/Faces3D;-><init>(I)V

    iput-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->faces:Lcom/iLoong/launcher/min3d/Faces3D;

    new-instance v0, Lcom/iLoong/launcher/min3d/Vertices3D;

    invoke-direct {v0, p2}, Lcom/iLoong/launcher/min3d/Vertices3D;-><init>(I)V

    iput-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->vertices:Lcom/iLoong/launcher/min3d/Vertices3D;

    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    sget-object v1, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    mul-int/lit8 v3, p2, 0x2

    mul-int/lit8 v4, p1, 0x3

    new-array v5, v11, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v7, "a_position"

    invoke-direct {v6, v2, v11, v7}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v6, 0x1

    new-instance v7, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v8, 0x5

    const/4 v9, 0x4

    const-string v10, "a_color"

    invoke-direct {v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v7, v5, v6

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v7, "a_texCoord0"

    invoke-direct {v6, v11, v12, v7}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    return-void
.end method

.method public setMesh(Lcom/badlogic/gdx/graphics/Mesh;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iput-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->faces:Lcom/iLoong/launcher/min3d/Faces3D;

    iput-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->vertices:Lcom/iLoong/launcher/min3d/Vertices3D;

    return-void
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Object3DBase;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/Texture;)V

    return-void
.end method

.method public setVertices([F)V
    .locals 0

    return-void
.end method
