.class Lcom/iLoong/launcher/Desktop3D/ar;
.super Lcom/iLoong/launcher/UI3DEngine/Texture3D;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {p1, p2, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->IconToPixmap3D(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->ch:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/at;->ci:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/ar;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    return-void
.end method
