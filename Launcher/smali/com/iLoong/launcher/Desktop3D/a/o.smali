.class public Lcom/iLoong/launcher/Desktop3D/a/o;
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

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/high16 v0, 0x42b4

    mul-float/2addr v0, p3

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->width:F

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->height:F

    div-float/2addr v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setOrigin(FF)V

    mul-float v1, p2, p4

    invoke-virtual {p0, v1, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    add-float v1, v3, p2

    invoke-virtual {p0, v1, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setScale(FF)V

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->height:F

    div-float/2addr v1, v5

    invoke-virtual {p1, v4, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setOrigin(FF)V

    add-float v1, p2, v3

    mul-float/2addr v1, p4

    invoke-virtual {p1, v1, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1, v1, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setScale(FF)V

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->W:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationX(F)V

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationX(F)V

    :cond_0
    return-void
.end method
