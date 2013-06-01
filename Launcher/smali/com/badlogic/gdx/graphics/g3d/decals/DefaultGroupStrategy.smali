.class public Lcom/badlogic/gdx/graphics/g3d/decals/DefaultGroupStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;


# static fields
.field private static final GROUP_BLEND:I = 0x1

.field private static final GROUP_OPAQUE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterGroup(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glDisable(I)V

    :cond_0
    return-void
.end method

.method public afterGroups()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glDisable(I)V

    return-void
.end method

.method public beforeGroup(ILcom/badlogic/gdx/utils/Array;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glEnable(I)V

    :cond_0
    return-void
.end method

.method public beforeGroups()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glEnable(I)V

    return-void
.end method

.method public decideGroup(Lcom/badlogic/gdx/graphics/g3d/decals/Decal;)I
    .locals 1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->getMaterial()Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getGroupShader(I)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
