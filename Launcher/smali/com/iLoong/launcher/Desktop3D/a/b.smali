.class public Lcom/iLoong/launcher/Desktop3D/a/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V
    .locals 5

    const/high16 v4, 0x428c

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/high16 v0, 0x42b4

    mul-float/2addr v0, p3

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->width:F

    iput v1, p0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originX:F

    mul-float v1, p2, p4

    invoke-virtual {p0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    mul-float v1, p2, v4

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationY(F)V

    iput v2, p1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->originX:F

    add-float v1, p2, v3

    mul-float/2addr v1, p4

    invoke-virtual {p1, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    add-float v1, p2, v3

    mul-float/2addr v1, v4

    invoke-virtual {p1, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationY(F)V

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->W:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addRotationX(F)V

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addRotationX(F)V

    :cond_0
    return-void
.end method
