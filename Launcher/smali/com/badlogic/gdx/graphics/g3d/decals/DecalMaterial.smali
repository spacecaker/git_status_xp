.class public Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;
.super Ljava/lang/Object;


# static fields
.field public static final NO_BLEND:I = -0x1


# instance fields
.field protected dstBlendFactor:I

.field protected srcBlendFactor:I

.field protected textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->dstBlendFactor:I

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->dstBlendFactor:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->srcBlendFactor:I

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->srcBlendFactor:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDstBlendFactor()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->dstBlendFactor:I

    return v0
.end method

.method public getSrcBlendFactor()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->srcBlendFactor:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->srcBlendFactor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->dstBlendFactor:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->srcBlendFactor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->srcBlendFactor:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->dstBlendFactor:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glBlendFunc(II)V

    :cond_0
    return-void
.end method
