.class public Lcom/iLoong/launcher/Desktop3D/a/i;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFFZ)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v0, 0x42b4

    mul-float/2addr v0, p3

    mul-float v1, p2, p4

    invoke-virtual {p0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    const/high16 v1, 0x3f80

    add-float/2addr v1, p2

    mul-float/2addr v1, p4

    invoke-virtual {p1, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->W:Z

    if-nez v1, :cond_0

    if-nez p5, :cond_0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationX(F)V

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationX(F)V

    :cond_0
    return-void
.end method
