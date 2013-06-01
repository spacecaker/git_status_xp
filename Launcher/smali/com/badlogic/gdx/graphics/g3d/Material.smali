.class public Lcom/badlogic/gdx/graphics/g3d/Material;
.super Ljava/lang/Object;


# static fields
.field private static final tmp:[F


# instance fields
.field public Ambient:Lcom/badlogic/gdx/graphics/Color;

.field public BlendDestFactor:I

.field public BlendSourceFactor:I

.field public Diffuse:Lcom/badlogic/gdx/graphics/Color;

.field public Emissive:Lcom/badlogic/gdx/graphics/Color;

.field public Name:Ljava/lang/String;

.field public Shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public Specular:Lcom/badlogic/gdx/graphics/Color;

.field public Texture:Lcom/badlogic/gdx/graphics/TextureRef;

.field public TexturePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/Material;->tmp:[F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Texture:Lcom/badlogic/gdx/graphics/TextureRef;

    const-string v0, ""

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->TexturePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Specular:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Emissive:Lcom/badlogic/gdx/graphics/Color;

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendSourceFactor:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendDestFactor:I

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Name:Ljava/lang/String;

    return-void
.end method

.method private setTmpArray(FFFF)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/Material;->tmp:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/Material;->tmp:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/Material;->tmp:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/Material;->tmp:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    return-void
.end method


# virtual methods
.method public read(Ljava/io/DataInputStream;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->TexturePath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendSourceFactor:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendDestFactor:I

    const/4 v0, 0x1

    return v0
.end method

.method public set(I)V
    .locals 7

    const/16 v6, 0xbe2

    const/4 v5, 0x0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL10()Lcom/badlogic/gdx/graphics/GL10;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Material;->setTmpArray(FFFF)V

    const/16 v1, 0x1200

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/Material;->tmp:[F

    invoke-interface {v0, p1, v1, v2, v5}, Lcom/badlogic/gdx/graphics/GL10;->glMaterialfv(II[FI)V

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Material;->setTmpArray(FFFF)V

    const/16 v1, 0x1201

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/Material;->tmp:[F

    invoke-interface {v0, p1, v1, v2, v5}, Lcom/badlogic/gdx/graphics/GL10;->glMaterialfv(II[FI)V

    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendSourceFactor:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendSourceFactor:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendDestFactor:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL10;->glBlendFunc(II)V

    invoke-interface {v0, v6}, Lcom/badlogic/gdx/graphics/GL10;->glEnable(I)V

    :goto_0
    return-void

    :cond_2
    invoke-interface {v0, v6}, Lcom/badlogic/gdx/graphics/GL10;->glDisable(I)V

    goto :goto_0
.end method

.method public write(Ljava/io/DataOutputStream;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Texture:Lcom/badlogic/gdx/graphics/TextureRef;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/TextureRef;->Name:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Texture:Lcom/badlogic/gdx/graphics/TextureRef;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/TextureRef;->Name:Ljava/lang/String;

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendSourceFactor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendDestFactor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return v1

    :cond_3
    move v0, v2

    goto :goto_0
.end method
