.class public Lcom/iLoong/launcher/Desktop3D/a/n;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/iLoong/launcher/Desktop3D/c;Lcom/iLoong/launcher/Desktop3D/c;FFF)V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/c;->b()I

    move-result v11

    const/16 v2, 0xb4

    div-int/2addr v2, v11

    int-to-float v12, v2

    const/high16 v2, 0x4000

    div-float v13, p4, v2

    const/high16 v2, 0x42b4

    mul-float v14, p3, v2

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v15

    neg-float v2, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->setOriginZ(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v16

    neg-float v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->setOriginZ(F)V

    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_4

    const/high16 v2, -0x4200

    cmpl-float v2, p2, v2

    if-lez v2, :cond_4

    const/high16 v2, -0x3f00

    mul-float v3, v2, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v15, :cond_2

    const/4 v2, 0x0

    :goto_1
    move/from16 v0, v16

    if-lt v2, v0, :cond_3

    :cond_0
    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->W:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/iLoong/launcher/Desktop3D/c;->setRotationX(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/iLoong/launcher/Desktop3D/c;->setRotationX(F)V

    :cond_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    const-wide v5, 0x4050e00000000000L

    rem-int v7, v2, v11

    int-to-float v7, v7

    mul-float/2addr v7, v12

    float-to-double v7, v7

    sub-double/2addr v5, v7

    double-to-float v5, v5

    neg-float v6, v13

    invoke-virtual {v4, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOriginZ(F)V

    neg-float v5, v5

    const/high16 v6, 0x3f80

    move/from16 v0, p4

    invoke-static {v4, v5, v3, v0, v6}, Lcom/iLoong/launcher/Desktop3D/a/n;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    const-wide v5, 0x4050e00000000000L

    rem-int v7, v2, v11

    int-to-float v7, v7

    mul-float/2addr v7, v12

    float-to-double v7, v7

    sub-double/2addr v5, v7

    const-wide v7, 0x4066800000000000L

    sub-double/2addr v5, v7

    double-to-float v5, v5

    neg-float v6, v13

    invoke-virtual {v4, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOriginZ(F)V

    neg-float v5, v5

    const/4 v6, 0x0

    move/from16 v0, p4

    invoke-static {v4, v5, v3, v0, v6}, Lcom/iLoong/launcher/Desktop3D/a/n;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/high16 v2, -0x4200

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_c

    const/high16 v2, -0x40a0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_c

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p2

    neg-float v2, v0

    const/high16 v5, 0x3e00

    sub-float/2addr v2, v5

    const/high16 v5, 0x4100

    mul-float/2addr v2, v5

    const/high16 v5, 0x40c0

    div-float v6, v2, v5

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/c;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v2

    const/high16 v5, -0x4200

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_7

    const/high16 v5, -0x4100

    cmpl-float v5, p2, v5

    if-lez v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/c;->getIndexInParent()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/iLoong/launcher/Desktop3D/c;->getIndexInParent()I

    move-result v7

    if-ge v5, v7, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addViewBefore(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_5
    :goto_2
    const/4 v2, 0x0

    move v10, v2

    :goto_3
    if-lt v10, v15, :cond_8

    const/4 v2, 0x0

    move v10, v2

    :goto_4
    move/from16 v0, v16

    if-ge v10, v0, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    const-wide v7, 0x4050e00000000000L

    rem-int v5, v10, v11

    int-to-float v5, v5

    mul-float/2addr v5, v12

    float-to-double v0, v5

    move-wide/from16 v17, v0

    sub-double v7, v7, v17

    const-wide v17, 0x4066800000000000L

    sub-double v7, v7, v17

    double-to-float v5, v7

    const/high16 v7, 0x4334

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    neg-float v7, v13

    invoke-virtual {v2, v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOriginZ(F)V

    neg-float v7, v5

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v7

    neg-float v7, v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_e

    const/high16 v4, -0x41a0

    cmpl-float v4, p2, v4

    if-lez v4, :cond_b

    const/high16 v3, -0x41a0

    :cond_6
    :goto_5
    neg-float v4, v3

    const/high16 v7, 0x3e00

    sub-float/2addr v4, v7

    const/high16 v7, 0x4100

    mul-float/2addr v4, v7

    const/high16 v7, 0x40c0

    div-float/2addr v4, v7

    const-wide v7, 0x4050e00000000000L

    rem-int v9, v10, v11

    int-to-float v9, v9

    mul-float/2addr v9, v12

    float-to-double v0, v9

    move-wide/from16 v17, v0

    sub-double v7, v7, v17

    const-wide v17, 0x4066800000000000L

    sub-double v7, v7, v17

    double-to-float v7, v7

    const/high16 v8, 0x4334

    mul-float/2addr v4, v8

    add-float/2addr v4, v7

    move v8, v4

    move v9, v3

    :goto_6
    neg-float v4, v5

    neg-float v5, v8

    move/from16 v3, p2

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/iLoong/launcher/Desktop3D/a/n;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFFF)V

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v4, v8

    move v3, v9

    goto :goto_4

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/c;->getIndexInParent()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/iLoong/launcher/Desktop3D/c;->getIndexInParent()I

    move-result v7

    if-le v5, v7, :cond_5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addViewBefore(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    const-wide v7, 0x4050e00000000000L

    rem-int v5, v10, v11

    int-to-float v5, v5

    mul-float/2addr v5, v12

    float-to-double v0, v5

    move-wide/from16 v17, v0

    sub-double v7, v7, v17

    double-to-float v5, v7

    const/high16 v7, 0x4334

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    neg-float v7, v13

    invoke-virtual {v2, v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOriginZ(F)V

    neg-float v7, v5

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v7

    neg-float v7, v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_f

    const/high16 v4, -0x41a0

    cmpl-float v4, p2, v4

    if-lez v4, :cond_a

    const/high16 v3, -0x41a0

    :cond_9
    :goto_7
    neg-float v4, v3

    const/high16 v7, 0x3e00

    sub-float/2addr v4, v7

    const/high16 v7, 0x4100

    mul-float/2addr v4, v7

    const/high16 v7, 0x40c0

    div-float/2addr v4, v7

    const-wide v7, 0x4050e00000000000L

    rem-int v9, v10, v11

    int-to-float v9, v9

    mul-float/2addr v9, v12

    float-to-double v0, v9

    move-wide/from16 v17, v0

    sub-double v7, v7, v17

    double-to-float v7, v7

    const/high16 v8, 0x4334

    mul-float/2addr v4, v8

    add-float/2addr v4, v7

    move v8, v4

    move v9, v3

    :goto_8
    neg-float v4, v5

    neg-float v5, v8

    move/from16 v3, p2

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/iLoong/launcher/Desktop3D/a/n;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFFF)V

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v4, v8

    move v3, v9

    goto/16 :goto_3

    :cond_a
    const/high16 v4, -0x40b8

    cmpg-float v4, p2, v4

    if-gez v4, :cond_9

    const/high16 v3, -0x40b8

    goto :goto_7

    :cond_b
    const/high16 v4, -0x40b8

    cmpg-float v4, p2, v4

    if-gez v4, :cond_6

    const/high16 v3, -0x40b8

    goto/16 :goto_5

    :cond_c
    const/high16 v2, -0x3f00

    mul-float v2, v2, p2

    const/high16 v3, 0x40e0

    sub-float v3, v2, v3

    const/4 v2, 0x0

    :goto_9
    move/from16 v0, v16

    if-lt v2, v0, :cond_d

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v15, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    const-wide v5, 0x4050e00000000000L

    rem-int v7, v2, v11

    int-to-float v7, v7

    mul-float/2addr v7, v12

    float-to-double v7, v7

    sub-double/2addr v5, v7

    double-to-float v5, v5

    neg-float v6, v13

    invoke-virtual {v4, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOriginZ(F)V

    neg-float v5, v5

    const/4 v6, 0x0

    move/from16 v0, p4

    invoke-static {v4, v5, v3, v0, v6}, Lcom/iLoong/launcher/Desktop3D/a/n;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    const-wide v5, 0x4050e00000000000L

    rem-int v7, v2, v11

    int-to-float v7, v7

    mul-float/2addr v7, v12

    float-to-double v7, v7

    sub-double/2addr v5, v7

    double-to-float v5, v5

    neg-float v6, v13

    invoke-virtual {v4, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOriginZ(F)V

    neg-float v5, v5

    const/high16 v6, 0x3f80

    move/from16 v0, p4

    invoke-static {v4, v5, v3, v0, v6}, Lcom/iLoong/launcher/Desktop3D/a/n;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    move v8, v4

    move v9, v3

    goto/16 :goto_6

    :cond_f
    move v8, v4

    move v9, v3

    goto :goto_8
.end method

.method private static a(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFF)V
    .locals 4

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x4000

    div-float v2, p3, v2

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v1, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput p4, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    mul-float v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationY(F)V

    return-void
.end method

.method private static a(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFFF)V
    .locals 8

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v2

    neg-float v2, v2

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    const/high16 v2, 0x3f80

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    :goto_0
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v1, 0x4000

    div-float v1, p5, v1

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    sub-float/2addr v1, v2

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v1, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    invoke-virtual {p0, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationY(F)V

    return-void

    :cond_0
    invoke-static {p3}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v3

    neg-float v3, v3

    const/high16 v4, 0x3f80

    sub-float v3, v4, v3

    const v4, 0x3f333333

    mul-float/2addr v3, v4

    const v4, 0x3e99999a

    add-float/2addr v3, v4

    float-to-double v4, p1

    const-wide/high16 v6, -0x4034

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    const/high16 v2, -0x4200

    sub-float v2, p1, v2

    mul-float/2addr v2, v3

    const/high16 v3, -0x4240

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0

    :cond_1
    const/high16 v4, -0x40b8

    cmpg-float v4, p1, v4

    if-gez v4, :cond_2

    const/high16 v2, -0x40a0

    sub-float v2, p1, v2

    mul-float/2addr v2, v3

    const/high16 v3, 0x3dc0

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0

    :cond_2
    const/high16 v3, 0x3f80

    sub-float v2, v3, v2

    const v3, 0x3f333333

    mul-float/2addr v2, v3

    const v3, 0x3e99999a

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0
.end method

.method private static b(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFF)V
    .locals 5

    const/high16 v3, 0x4000

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    div-float v1, p3, v3

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float v3, p3, v3

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v1, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput p4, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationY(F)V

    return-void
.end method
