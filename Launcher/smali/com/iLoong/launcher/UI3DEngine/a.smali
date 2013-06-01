.class Lcom/iLoong/launcher/UI3DEngine/a;
.super Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/a;->a:Z

    return-void
.end method


# virtual methods
.method public isManaged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/a;->a:Z

    return v0
.end method
