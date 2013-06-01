.class public Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;
.super Lcom/badlogic/gdx/graphics/Mesh;


# direct methods
.method public varargs constructor <init>(Lcom/badlogic/gdx/Gdx;Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/Gdx;ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/Gdx;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    return-void
.end method
