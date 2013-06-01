.class public Lcom/iLoong/launcher/Desktop3D/a/q;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V
    .locals 7

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/high16 v0, 0x42b4

    mul-float/2addr v0, p3

    const v1, 0x3f4ccccd

    const v2, 0x3e4ccccd

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getIndexInParent()I

    move-result v3

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getIndexInParent()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v2, p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addViewBefore(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_0
    mul-float v2, p2, p4

    invoke-virtual {p0, v2, v5}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iput v6, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, v6, v6}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setScale(FF)V

    invoke-virtual {p1, v5, v5}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p1, v1, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setScale(FF)V

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->W:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationX(F)V

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationX(F)V

    :cond_1
    return-void
.end method
