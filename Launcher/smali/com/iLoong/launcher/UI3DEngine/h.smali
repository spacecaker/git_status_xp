.class public Lcom/iLoong/launcher/UI3DEngine/h;
.super Lcom/badlogic/gdx/graphics/Texture;


# instance fields
.field a:Lcom/iLoong/launcher/UI3DEngine/b;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/b;

    invoke-direct {v0, p1}, Lcom/iLoong/launcher/UI3DEngine/b;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/h;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/b;

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/h;->a:Lcom/iLoong/launcher/UI3DEngine/b;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/h;->a:Lcom/iLoong/launcher/UI3DEngine/b;

    iget-boolean v0, v0, Lcom/iLoong/launcher/UI3DEngine/b;->a:Z

    return v0
.end method
