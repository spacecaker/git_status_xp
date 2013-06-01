.class public Lcom/iLoong/launcher/Desktop3D/a/r;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V
    .locals 10

    const/high16 v0, 0x42b4

    mul-float v3, p3, v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getHeight()F

    move-result v0

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x4000

    div-float v1, p4, v1

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    invoke-direct {v4, v1, v0}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    const/high16 v0, -0x4100

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    const/high16 v0, -0x4000

    mul-float/2addr v0, p2

    move v1, v0

    :goto_0
    mul-float v0, p2, p4

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v5

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v5, :cond_2

    const/high16 v0, 0x3f80

    add-float/2addr v0, p2

    mul-float/2addr v0, p4

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setPosition(FF)V

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v5

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-lt v2, v5, :cond_4

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->W:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationX(F)V

    invoke-virtual {p1, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationX(F)V

    :cond_0
    return-void

    :cond_1
    const/high16 v0, 0x3f80

    add-float/2addr v0, p2

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v8, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v9, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v9, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v0, v9, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v8

    invoke-virtual {v6, v7, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-virtual {p1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v8, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v9, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v9, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v0, v9, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v8

    invoke-virtual {v6, v7, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2
.end method
