.class Lcom/iLoong/launcher/UI3DEngine/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;


# instance fields
.field public a:Z

.field private b:Landroid/graphics/Bitmap;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/b;->a:Z

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/b;->c:I

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/b;->d:I

    iput-object p1, p0, Lcom/iLoong/launcher/UI3DEngine/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/b;->c:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/b;->d:I

    return-void
.end method


# virtual methods
.method public consumeCompressedData()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/b;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/b;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v2, v1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "launcher"

    const-string v1, "consumeCompressedData:dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/b;->a:Z

    goto :goto_0
.end method

.method public consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public disposePixmap()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Compressed:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .locals 0

    return-void
.end method

.method public useMipMaps()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
