.class public Lcom/iLoong/launcher/Desktop3D/ao;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;

# interfaces
.implements Lcom/iLoong/launcher/Desktop3D/u;


# instance fields
.field a:Lcom/iLoong/launcher/a/j;

.field private b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iLoong/launcher/UI3DEngine/Texture3D;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-virtual {p2}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ao;->width:F

    invoke-virtual {p2}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ao;->height:F

    return-void
.end method


# virtual methods
.method public a(Lcom/iLoong/launcher/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/ao;->a:Lcom/iLoong/launcher/a/j;

    return-void
.end method

.method public b()Lcom/iLoong/launcher/a/j;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ao;->a:Lcom/iLoong/launcher/a/j;

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ao;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ao;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ao;->x:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ao;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ao;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ao;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_0
    return-void
.end method

.method public onClick(FF)Z
    .locals 3

    const/4 v1, 0x1

    const-string v0, "test"

    const-string v2, "widgetView onClick"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ao;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/f;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/Widget3D/m;->a(Lcom/iLoong/launcher/a/f;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onClick(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongClick(FF)Z
    .locals 3

    const-string v0, "test"

    const-string v1, "widgetView onLongClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ao;->isDragging:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/ao;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ao;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/ao;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/ao;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ao;->setTag(Ljava/lang/Object;)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/ao;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/ao;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/ao;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ao;->toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/ao;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sput v0, Lcom/iLoong/launcher/Desktop3D/x;->a:F

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/ao;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sput v0, Lcom/iLoong/launcher/Desktop3D/x;->b:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ao;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onLongClick(FF)Z

    move-result v0

    goto :goto_0
.end method
