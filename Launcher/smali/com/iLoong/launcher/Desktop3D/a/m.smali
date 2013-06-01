.class public Lcom/iLoong/launcher/Desktop3D/a/m;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V
    .locals 10

    const/high16 v9, 0x42b4

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    const/4 v0, 0x0

    mul-float v2, p3, v9

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v3

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v4

    cmpg-float v1, p2, v7

    if-gtz v1, :cond_5

    const/high16 v1, -0x4100

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_5

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->show()V

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    :goto_1
    if-lt v0, v4, :cond_3

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v8

    mul-float/2addr v6, v9

    invoke-virtual {v5, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationY(F)V

    sget-boolean v6, Lcom/iLoong/launcher/Desktop3D/cb;->W:Z

    if-nez v6, :cond_2

    invoke-virtual {v5, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->addRotationX(F)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationY(F)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->show()V

    move v1, v0

    :goto_2
    if-lt v1, v3, :cond_7

    :goto_3
    if-ge v0, v4, :cond_0

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v8

    sub-float v3, v8, v3

    const/high16 v5, -0x3d4c

    mul-float/2addr v3, v5

    invoke-virtual {v1, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationY(F)V

    sget-boolean v3, Lcom/iLoong/launcher/Desktop3D/cb;->W:Z

    if-nez v3, :cond_6

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->addRotationX(F)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_8

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationY(F)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
