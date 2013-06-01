.class public Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;


# instance fields
.field final disposePixmap:Z

.field final format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field final pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

.field final useMipMaps:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iput-boolean p3, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->useMipMaps:Z

    iput-boolean p4, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->disposePixmap:Z

    return-void
.end method


# virtual methods
.method public consumeCompressedData()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not upload data itself"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    return-object v0
.end method

.method public disposePixmap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->disposePixmap:Z

    return v0
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Pixmap:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "prepare() must not be called on a PixmapTextureData instance as it is already prepared."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public useMipMaps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->useMipMaps:Z

    return v0
.end method
