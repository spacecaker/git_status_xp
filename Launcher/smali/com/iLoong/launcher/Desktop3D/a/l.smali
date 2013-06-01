.class public Lcom/iLoong/launcher/Desktop3D/a/l;
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

    const/high16 v4, 0x42b4

    mul-float v0, p3, v4

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->width:F

    div-float/2addr v1, v5

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->height:F

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originX:F

    add-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setOrigin(FF)V

    mul-float v1, p2, v4

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationZ(F)V

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->width:F

    div-float/2addr v1, v5

    iget v2, p1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->height:F

    iget v3, p1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originX:F

    add-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setOrigin(FF)V

    const/high16 v1, 0x3f80

    add-float/2addr v1, p2

    mul-float/2addr v1, v4

    invoke-virtual {p1, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationZ(F)V

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->W:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addRotationX(F)V

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addRotationX(F)V

    :cond_0
    return-void
.end method
