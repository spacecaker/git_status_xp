.class public Lcom/iLoong/launcher/Desktop3D/a/v;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V
    .locals 8

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/high16 v7, 0x43b4

    const/high16 v1, 0x42b4

    mul-float v2, p3, v1

    mul-float v1, p2, p4

    invoke-virtual {p0, v1, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v3

    const/high16 v1, 0x3f80

    add-float/2addr v1, p2

    mul-float/2addr v1, p4

    invoke-virtual {p1, v1, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v4

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    :goto_1
    if-lt v0, v4, :cond_3

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->W:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationX(F)V

    invoke-virtual {p1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationX(F)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v5

    mul-float v6, p2, v7

    rem-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationZ(F)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    mul-float v3, p2, v7

    rem-float/2addr v3, v7

    invoke-virtual {v1, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationZ(F)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
