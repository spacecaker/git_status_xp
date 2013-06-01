.class public Lcom/iLoong/launcher/UI3DEngine/e;
.super Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;


# instance fields
.field a:Lcom/badlogic/gdx/graphics/Pixmap;

.field final synthetic b:Lcom/iLoong/launcher/UI3DEngine/l;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/UI3DEngine/l;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    .locals 1

    iput-object p1, p0, Lcom/iLoong/launcher/UI3DEngine/e;->b:Lcom/iLoong/launcher/UI3DEngine/l;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    iput-object p2, p0, Lcom/iLoong/launcher/UI3DEngine/e;->a:Lcom/badlogic/gdx/graphics/Pixmap;

    return-void
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/UI3DEngine/e;->a:Lcom/badlogic/gdx/graphics/Pixmap;

    return-void
.end method

.method public consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/e;->a:Lcom/badlogic/gdx/graphics/Pixmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/e;->a:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/e;->a:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
