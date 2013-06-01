.class public Lcom/iLoong/launcher/Desktop3D/a/t;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V
    .locals 9

    const/4 v1, 0x0

    const/high16 v7, 0x3f80

    const v6, 0x3f4ccccd

    const v2, 0x3e4ccccd

    const/high16 v8, 0x43b4

    const/high16 v0, 0x42b4

    mul-float v3, p3, v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v4

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v5

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    const/high16 v0, -0x4100

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x4000

    mul-float/2addr v0, p2

    add-float/2addr v0, v7

    mul-float/2addr v0, v6

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->show()V

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    :goto_0
    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_2

    :goto_2
    if-lt v1, v5, :cond_4

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->W:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationX(F)V

    invoke-virtual {p1, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationX(F)V

    :cond_0
    return-void

    :cond_1
    const/high16 v0, -0x4000

    mul-float/2addr v0, p2

    sub-float/2addr v0, v7

    mul-float/2addr v0, v6

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v6

    invoke-virtual {v6, v0, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    mul-float v7, p2, v8

    rem-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationZ(F)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p1, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    mul-float v4, p2, v8

    rem-float/2addr v4, v8

    invoke-virtual {v2, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationZ(F)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
