.class public Lcom/badlogic/gdx/graphics/TextureRef;
.super Ljava/lang/Object;


# instance fields
.field public Name:Ljava/lang/String;

.field private mRefCount:I

.field private mTexture:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/TextureRef;->Name:Ljava/lang/String;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mTexture:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mRefCount:I

    return-void
.end method


# virtual methods
.method public addRef()V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mRefCount:I

    return-void
.end method

.method public bind()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    return-void
.end method

.method public get()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mTexture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public unload()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mRefCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mTexture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->Name:Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/TextureDict;->removeTexture(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mRefCount:I

    return v0
.end method
