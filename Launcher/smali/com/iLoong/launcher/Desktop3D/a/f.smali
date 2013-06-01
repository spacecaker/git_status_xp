.class public Lcom/iLoong/launcher/Desktop3D/a/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V
    .locals 5

    const/high16 v4, 0x3f80

    const/high16 v0, 0x42b4

    mul-float/2addr v0, p3

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getHeight()F

    move-result v1

    mul-float v2, p2, p4

    neg-float v3, p2

    mul-float/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    add-float v2, p2, v4

    mul-float/2addr v2, p4

    add-float v3, p2, v4

    mul-float/2addr v1, v3

    invoke-virtual {p1, v2, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->W:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationX(F)V

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationX(F)V

    :cond_0
    return-void
.end method
