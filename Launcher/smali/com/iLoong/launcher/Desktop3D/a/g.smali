.class public Lcom/iLoong/launcher/Desktop3D/a/g;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V
    .locals 6

    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    const/high16 v3, 0x3f00

    const/high16 v2, 0x4334

    const/4 v1, 0x0

    const/high16 v0, 0x42b4

    mul-float/2addr v0, p3

    invoke-virtual {p0, v1, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    invoke-virtual {p1, v1, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_1

    const/high16 v1, -0x4100

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->show()V

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    mul-float v1, p2, v2

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationY(F)V

    add-float v1, p2, v4

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationY(F)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v3, v2

    mul-float/2addr v2, v5

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->W:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addRotationX(F)V

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addRotationX(F)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->show()V

    mul-float v1, p2, v2

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationY(F)V

    add-float v1, p2, v4

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationY(F)V

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p1, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0
.end method
