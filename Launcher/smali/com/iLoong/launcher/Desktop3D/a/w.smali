.class public Lcom/iLoong/launcher/Desktop3D/a/w;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/iLoong/launcher/Desktop3D/c;Lcom/iLoong/launcher/Desktop3D/c;FFF)V
    .locals 24

    const/high16 v2, 0x42b4

    mul-float v18, p3, v2

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/c;->b()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/c;->c()I

    move-result v20

    const/16 v2, 0xb4

    div-int v2, v2, v19

    int-to-float v0, v2

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/c;->getHeight()F

    move-result v8

    const v2, 0x3fe66666

    div-float v22, p4, v2

    const/4 v2, 0x4

    move/from16 v0, v20

    if-le v0, v2, :cond_2

    const/high16 v2, 0x4270

    move/from16 v17, v2

    :goto_0
    move/from16 v0, v22

    neg-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->setOriginZ(F)V

    move/from16 v0, v22

    neg-float v2, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->setOriginZ(F)V

    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_9

    const/high16 v2, -0x4200

    cmpl-float v2, p2, v2

    if-lez v2, :cond_9

    const/high16 v2, -0x3f00

    mul-float v5, v2, p2

    const/4 v2, 0x0

    move v10, v2

    :goto_1
    move/from16 v0, v20

    if-lt v10, v0, :cond_3

    const/4 v2, 0x0

    move v10, v2

    :goto_2
    move/from16 v0, v20

    if-lt v10, v0, :cond_6

    :cond_0
    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->W:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->setRotationX(F)V

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->setRotationX(F)V

    :cond_1
    return-void

    :cond_2
    const/high16 v2, 0x4248

    move/from16 v17, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    move v9, v2

    :goto_3
    move/from16 v0, v19

    if-lt v9, v0, :cond_4

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_1

    :cond_4
    mul-int v2, v10, v19

    add-int/2addr v2, v9

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    mul-int v2, v10, v19

    add-int/2addr v2, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    const-wide v3, 0x4050e00000000000L

    rem-int v6, v9, v19

    int-to-float v6, v6

    mul-float v6, v6, v21

    float-to-double v6, v6

    sub-double/2addr v3, v6

    double-to-float v4, v3

    move/from16 v0, v17

    neg-float v3, v0

    const/high16 v6, 0x4000

    mul-float v6, v6, v17

    add-int/lit8 v7, v20, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, v10

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    move/from16 v0, v22

    neg-float v6, v0

    invoke-virtual {v2, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOriginZ(F)V

    neg-float v4, v4

    const/high16 v7, 0x3f80

    move/from16 v6, p4

    invoke-static/range {v2 .. v8}, Lcom/iLoong/launcher/Desktop3D/a/w;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFFFF)V

    :cond_5
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    move v9, v2

    :goto_4
    move/from16 v0, v19

    if-lt v9, v0, :cond_7

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_2

    :cond_7
    mul-int v2, v10, v19

    add-int/2addr v2, v9

    invoke-virtual/range {p1 .. p1}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_8

    mul-int v2, v10, v19

    add-int/2addr v2, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    const-wide v3, 0x4050e00000000000L

    rem-int v6, v9, v19

    int-to-float v6, v6

    mul-float v6, v6, v21

    float-to-double v6, v6

    sub-double/2addr v3, v6

    const-wide v6, 0x4066800000000000L

    sub-double/2addr v3, v6

    double-to-float v4, v3

    move/from16 v0, v17

    neg-float v3, v0

    const/high16 v6, 0x4000

    mul-float v6, v6, v17

    add-int/lit8 v7, v20, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, v10

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    move/from16 v0, v22

    neg-float v6, v0

    invoke-virtual {v2, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOriginZ(F)V

    neg-float v4, v4

    const/4 v7, 0x0

    move/from16 v6, p4

    invoke-static/range {v2 .. v8}, Lcom/iLoong/launcher/Desktop3D/a/w;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFFFF)V

    :cond_8
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_4

    :cond_9
    const/high16 v2, -0x4200

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_12

    const/high16 v2, -0x40a0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_12

    const/4 v4, 0x0

    const/4 v3, 0x0

    move/from16 v0, p2

    neg-float v2, v0

    const/high16 v5, 0x3e00

    sub-float/2addr v2, v5

    const/high16 v5, 0x4100

    mul-float/2addr v2, v5

    const/high16 v5, 0x40c0

    div-float v14, v2, v5

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/c;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v2

    const/high16 v5, -0x4200

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_a

    const/high16 v5, -0x4100

    cmpl-float v5, p2, v5

    if-lez v5, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addViewBefore(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :goto_5
    const/4 v2, 0x0

    move v5, v2

    :goto_6
    move/from16 v0, v20

    if-lt v5, v0, :cond_b

    const/4 v2, 0x0

    move v5, v2

    :goto_7
    move/from16 v0, v20

    if-ge v5, v0, :cond_0

    const/4 v2, 0x0

    move/from16 v23, v2

    move v2, v4

    move/from16 v4, v23

    :goto_8
    move/from16 v0, v19

    if-lt v4, v0, :cond_f

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    goto :goto_7

    :cond_a
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addViewBefore(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    move/from16 v23, v2

    move v2, v4

    move/from16 v4, v23

    :goto_9
    move/from16 v0, v19

    if-lt v4, v0, :cond_c

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    goto :goto_6

    :cond_c
    mul-int v6, v5, v19

    add-int/2addr v6, v4

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_1b

    mul-int v6, v5, v19

    add-int/2addr v6, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v9

    const-wide v6, 0x4050e00000000000L

    rem-int v10, v4, v19

    int-to-float v10, v10

    mul-float v10, v10, v21

    float-to-double v10, v10

    sub-double/2addr v6, v10

    double-to-float v6, v6

    const/high16 v7, 0x4334

    mul-float/2addr v7, v14

    add-float/2addr v6, v7

    move/from16 v0, v17

    neg-float v7, v0

    const/high16 v10, 0x4000

    mul-float v10, v10, v17

    add-int/lit8 v11, v20, -0x1

    int-to-float v11, v11

    div-float/2addr v10, v11

    int-to-float v11, v5

    mul-float/2addr v10, v11

    add-float v11, v7, v10

    move/from16 v0, v22

    neg-float v7, v0

    invoke-virtual {v9, v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOriginZ(F)V

    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v7

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v10

    mul-float/2addr v7, v10

    const/4 v10, 0x0

    cmpg-float v7, v7, v10

    if-gez v7, :cond_1a

    const/high16 v3, -0x41a0

    cmpl-float v3, p2, v3

    if-lez v3, :cond_e

    const/high16 v2, -0x41a0

    :cond_d
    :goto_a
    neg-float v3, v2

    const/high16 v7, 0x3e00

    sub-float/2addr v3, v7

    const/high16 v7, 0x4100

    mul-float/2addr v3, v7

    const/high16 v7, 0x40c0

    div-float/2addr v3, v7

    const-wide v12, 0x4050e00000000000L

    rem-int v7, v4, v19

    int-to-float v7, v7

    mul-float v7, v7, v21

    float-to-double v15, v7

    sub-double/2addr v12, v15

    double-to-float v7, v12

    const/high16 v10, 0x4334

    mul-float/2addr v3, v10

    add-float/2addr v3, v7

    move/from16 v23, v3

    move v3, v2

    move/from16 v2, v23

    :goto_b
    neg-float v12, v6

    neg-float v13, v2

    move/from16 v10, p2

    move/from16 v15, p4

    move/from16 v16, v8

    invoke-static/range {v9 .. v16}, Lcom/iLoong/launcher/Desktop3D/a/w;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFFFFF)V

    :goto_c
    add-int/lit8 v4, v4, 0x1

    move/from16 v23, v2

    move v2, v3

    move/from16 v3, v23

    goto/16 :goto_9

    :cond_e
    const/high16 v3, -0x40b8

    cmpg-float v3, p2, v3

    if-gez v3, :cond_d

    const/high16 v2, -0x40b8

    goto :goto_a

    :cond_f
    mul-int v6, v5, v19

    add-int/2addr v6, v4

    invoke-virtual/range {p1 .. p1}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_19

    mul-int v6, v5, v19

    add-int/2addr v6, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v9

    const-wide v6, 0x4050e00000000000L

    rem-int v10, v4, v19

    int-to-float v10, v10

    mul-float v10, v10, v21

    float-to-double v10, v10

    sub-double/2addr v6, v10

    const-wide v10, 0x4066800000000000L

    sub-double/2addr v6, v10

    const/high16 v10, 0x4334

    mul-float/2addr v10, v14

    float-to-double v10, v10

    add-double/2addr v6, v10

    double-to-float v6, v6

    move/from16 v0, v17

    neg-float v7, v0

    const/high16 v10, 0x4000

    mul-float v10, v10, v17

    add-int/lit8 v11, v20, -0x1

    int-to-float v11, v11

    div-float/2addr v10, v11

    int-to-float v11, v5

    mul-float/2addr v10, v11

    add-float v11, v7, v10

    move/from16 v0, v22

    neg-float v7, v0

    invoke-virtual {v9, v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOriginZ(F)V

    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v7

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v10

    mul-float/2addr v7, v10

    const/4 v10, 0x0

    cmpg-float v7, v7, v10

    if-gez v7, :cond_18

    const/high16 v3, -0x41a0

    cmpl-float v3, p2, v3

    if-lez v3, :cond_11

    const/high16 v2, -0x41a0

    :cond_10
    :goto_d
    neg-float v3, v2

    const/high16 v7, 0x3e00

    sub-float/2addr v3, v7

    const/high16 v7, 0x4100

    mul-float/2addr v3, v7

    const/high16 v7, 0x40c0

    div-float/2addr v3, v7

    const-wide v12, 0x4050e00000000000L

    rem-int v7, v4, v19

    int-to-float v7, v7

    mul-float v7, v7, v21

    float-to-double v15, v7

    sub-double/2addr v12, v15

    const-wide v15, 0x4066800000000000L

    sub-double/2addr v12, v15

    const/high16 v7, 0x4334

    mul-float/2addr v3, v7

    float-to-double v15, v3

    add-double/2addr v12, v15

    double-to-float v3, v12

    move/from16 v23, v3

    move v3, v2

    move/from16 v2, v23

    :goto_e
    neg-float v12, v6

    neg-float v13, v2

    move/from16 v10, p2

    move/from16 v15, p4

    move/from16 v16, v8

    invoke-static/range {v9 .. v16}, Lcom/iLoong/launcher/Desktop3D/a/w;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFFFFF)V

    :goto_f
    add-int/lit8 v4, v4, 0x1

    move/from16 v23, v2

    move v2, v3

    move/from16 v3, v23

    goto/16 :goto_8

    :cond_11
    const/high16 v3, -0x40b8

    cmpg-float v3, p2, v3

    if-gez v3, :cond_10

    const/high16 v2, -0x40b8

    goto :goto_d

    :cond_12
    const/high16 v2, -0x3f00

    mul-float v2, v2, p2

    const/high16 v3, 0x40e0

    sub-float v5, v2, v3

    const/4 v2, 0x0

    move v10, v2

    :goto_10
    move/from16 v0, v20

    if-lt v10, v0, :cond_13

    const/4 v2, 0x0

    move v10, v2

    :goto_11
    move/from16 v0, v20

    if-ge v10, v0, :cond_0

    const/4 v2, 0x0

    move v9, v2

    :goto_12
    move/from16 v0, v19

    if-lt v9, v0, :cond_16

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_11

    :cond_13
    const/4 v2, 0x0

    move v9, v2

    :goto_13
    move/from16 v0, v19

    if-lt v9, v0, :cond_14

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_10

    :cond_14
    mul-int v2, v10, v19

    add-int/2addr v2, v9

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_15

    mul-int v2, v10, v19

    add-int/2addr v2, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    const-wide v3, 0x4050e00000000000L

    rem-int v6, v9, v19

    int-to-float v6, v6

    mul-float v6, v6, v21

    float-to-double v6, v6

    sub-double/2addr v3, v6

    double-to-float v3, v3

    const/high16 v4, 0x4334

    sub-float v4, v3, v4

    move/from16 v0, v17

    neg-float v3, v0

    const/high16 v6, 0x4000

    mul-float v6, v6, v17

    add-int/lit8 v7, v20, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, v10

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    move/from16 v0, v22

    neg-float v6, v0

    invoke-virtual {v2, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOriginZ(F)V

    neg-float v4, v4

    const/4 v7, 0x0

    move/from16 v6, p4

    invoke-static/range {v2 .. v8}, Lcom/iLoong/launcher/Desktop3D/a/w;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFFFF)V

    :cond_15
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_13

    :cond_16
    mul-int v2, v10, v19

    add-int/2addr v2, v9

    invoke-virtual/range {p1 .. p1}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_17

    mul-int v2, v10, v19

    add-int/2addr v2, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    const-wide v3, 0x4050e00000000000L

    rem-int v6, v9, v19

    int-to-float v6, v6

    mul-float v6, v6, v21

    float-to-double v6, v6

    sub-double/2addr v3, v6

    double-to-float v4, v3

    move/from16 v0, v17

    neg-float v3, v0

    const/high16 v6, 0x4000

    mul-float v6, v6, v17

    add-int/lit8 v7, v20, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, v10

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    move/from16 v0, v22

    neg-float v6, v0

    invoke-virtual {v2, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOriginZ(F)V

    neg-float v4, v4

    const/high16 v7, 0x3f80

    move/from16 v6, p4

    invoke-static/range {v2 .. v8}, Lcom/iLoong/launcher/Desktop3D/a/w;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFFFF)V

    :cond_17
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_12

    :cond_18
    move/from16 v23, v3

    move v3, v2

    move/from16 v2, v23

    goto/16 :goto_e

    :cond_19
    move/from16 v23, v3

    move v3, v2

    move/from16 v2, v23

    goto/16 :goto_f

    :cond_1a
    move/from16 v23, v3

    move v3, v2

    move/from16 v2, v23

    goto/16 :goto_b

    :cond_1b
    move/from16 v23, v3

    move v3, v2

    move/from16 v2, v23

    goto/16 :goto_c
.end method

.method private static a(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFFFF)V
    .locals 5

    const/high16 v4, 0x4000

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float v2, p4, v4

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float v3, p6, v4

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v0, v3, v0

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    sub-float/2addr v0, v3

    mul-float/2addr v0, p3

    add-float/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput p5, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    mul-float v0, p1, p3

    mul-float v1, p2, p3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationAngle(FFF)V

    return-void
.end method

.method private static a(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFFFFF)V
    .locals 7

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-static {p3}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v1

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const/high16 v1, 0x3f80

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    :goto_0
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v0, 0x4000

    div-float v0, p6, v0

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float v1, p7, v1

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationAngle(FFF)V

    return-void

    :cond_0
    invoke-static {p4}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v2

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    const v3, 0x3f333333

    mul-float/2addr v2, v3

    const v3, 0x3e99999a

    add-float/2addr v2, v3

    float-to-double v3, p1

    const-wide/high16 v5, -0x4034

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    const/high16 v1, -0x4200

    sub-float v1, p1, v1

    mul-float/2addr v1, v2

    const/high16 v2, -0x4240

    div-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0

    :cond_1
    const/high16 v3, -0x40b8

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    const/high16 v1, -0x40a0

    sub-float v1, p1, v1

    mul-float/2addr v1, v2

    const/high16 v2, 0x3dc0

    div-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    const v2, 0x3f333333

    mul-float/2addr v1, v2

    const v2, 0x3e99999a

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0
.end method

.method private static b(Lcom/iLoong/launcher/UI3DEngine/View3D;FFFFFF)V
    .locals 7

    const/high16 v6, 0x3f80

    const/high16 v5, 0x4000

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float v2, p4, v5

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float v3, p6, v5

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    div-float v1, p4, v5

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float v3, p4, v5

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    div-float v2, p6, v5

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    sub-float/2addr v2, v3

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float v3, p6, v5

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    sub-float/2addr v3, v4

    sub-float/2addr v0, v3

    mul-float/2addr v0, p3

    add-float/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput p5, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sub-float v0, v6, p3

    mul-float/2addr v0, p1

    sub-float v1, v6, p3

    mul-float/2addr v1, p2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationAngle(FFF)V

    return-void
.end method
