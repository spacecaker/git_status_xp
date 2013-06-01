.class public Lcom/iLoong/launcher/UI3DEngine/Texture3D;
.super Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {p1}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->bmp2Pixmap(Landroid/graphics/Bitmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 2

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/b;

    invoke-direct {v0, p1}, Lcom/iLoong/launcher/UI3DEngine/b;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/Gdx;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/a;

    const/4 v3, 0x0

    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->m:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v2, p1, v3, v1, v0}, Lcom/iLoong/launcher/UI3DEngine/a;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
