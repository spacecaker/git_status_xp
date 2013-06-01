.class public Lcom/iLoong/launcher/UI3DEngine/g;
.super Lcom/badlogic/gdx/graphics/Texture;


# instance fields
.field private a:Lcom/iLoong/launcher/UI3DEngine/k;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/iLoong/launcher/UI3DEngine/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    iput-object p2, p0, Lcom/iLoong/launcher/UI3DEngine/g;->a:Lcom/iLoong/launcher/UI3DEngine/k;

    return-void
.end method


# virtual methods
.method public reload()V
    .locals 6

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/g;->a:Lcom/iLoong/launcher/UI3DEngine/k;

    iget-boolean v0, v0, Lcom/iLoong/launcher/UI3DEngine/k;->g:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "pack"

    const-string v3, "disposed!read from file"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/g;->a:Lcom/iLoong/launcher/UI3DEngine/k;

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/g;->a:Lcom/iLoong/launcher/UI3DEngine/k;

    iget-object v3, v3, Lcom/iLoong/launcher/UI3DEngine/k;->f:Lcom/badlogic/gdx/files/FileHandle;

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    iput-object v3, v2, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v2, "pack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "read time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/g;->a:Lcom/iLoong/launcher/UI3DEngine/k;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/iLoong/launcher/UI3DEngine/k;->g:Z

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/g;->a:Lcom/iLoong/launcher/UI3DEngine/k;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/k;->d:Lcom/iLoong/launcher/UI3DEngine/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/g;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/e;

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/g;->a:Lcom/iLoong/launcher/UI3DEngine/k;

    iget-object v1, v1, Lcom/iLoong/launcher/UI3DEngine/k;->c:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/e;->a(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/Texture;->reload()V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->ch:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/at;->ci:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/g;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    return-void
.end method
