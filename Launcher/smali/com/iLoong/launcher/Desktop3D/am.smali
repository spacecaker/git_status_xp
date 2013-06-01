.class Lcom/iLoong/launcher/Desktop3D/am;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/e;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/Desktop3D/e;Ljava/lang/String;)V
    .locals 6

    const/high16 v4, 0x4000

    const/4 v3, 0x0

    const/16 v2, 0xa

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/am;->a:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-direct {p0, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aS:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/Desktop3D/e;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x4020

    mul-float/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/iLoong/launcher/Desktop3D/am;->setPosition(FF)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/Desktop3D/e;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/iLoong/launcher/Desktop3D/am;->setPosition(FF)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/Desktop3D/e;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/am;->setSize(FF)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/am;->width:F

    div-float/2addr v0, v4

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/am;->height:F

    div-float/2addr v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/am;->setOrigin(FF)V

    const-string v0, "hot-background"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/am;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    goto :goto_0
.end method
