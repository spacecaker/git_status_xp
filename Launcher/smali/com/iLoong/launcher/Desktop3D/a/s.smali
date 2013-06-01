.class public Lcom/iLoong/launcher/Desktop3D/a/s;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, -0x3d90

    const/high16 v2, 0x3f80

    mul-float v0, p2, p4

    invoke-virtual {p0, v0, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originX:F

    mul-float v0, p2, v3

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationY(F)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v2, v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-float v0, p2, v2

    mul-float/2addr v0, p4

    invoke-virtual {p1, v0, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    iget v0, p1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->width:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originX:F

    add-float v0, p2, v2

    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationY(F)V

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
