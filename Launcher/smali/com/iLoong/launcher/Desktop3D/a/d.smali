.class public Lcom/iLoong/launcher/Desktop3D/a/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/iLoong/launcher/Desktop3D/c;Lcom/iLoong/launcher/Desktop3D/c;FFF)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/c;->getHeight()F

    move-result v4

    const/high16 v1, 0x4040

    div-float v5, p4, v1

    const/high16 v6, 0x42b4

    const/4 v2, 0x0

    const/high16 v1, 0x42b4

    mul-float v7, p3, v1

    mul-float v1, p2, p4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/iLoong/launcher/Desktop3D/c;->setPosition(FF)V

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v8

    const/high16 v1, 0x3f80

    add-float v1, v1, p2

    mul-float v1, v1, p4

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Lcom/iLoong/launcher/Desktop3D/c;->setPosition(FF)V

    invoke-virtual/range {p1 .. p1}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v9

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_4

    const v1, -0x41555555

    cmpl-float v1, p2, v1

    if-lez v1, :cond_4

    const/high16 v1, -0x3fc0

    mul-float v10, p2, v1

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-lt v3, v8, :cond_2

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-lt v3, v9, :cond_3

    :cond_0
    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->W:Z

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/iLoong/launcher/Desktop3D/c;->setRotationX(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/iLoong/launcher/Desktop3D/c;->setRotationX(F)V

    :cond_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v11

    iget v1, v11, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    const/high16 v12, 0x4000

    div-float/2addr v1, v12

    iput v1, v11, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    iget v1, v11, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    const/high16 v12, 0x4000

    div-float/2addr v1, v12

    add-float/2addr v1, v5

    iput v1, v11, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    new-instance v12, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x4000

    div-float v1, p4, v1

    iget v13, v11, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    sub-float/2addr v1, v13

    const/high16 v13, 0x4000

    div-float v13, v4, v13

    sub-float/2addr v13, v5

    iget v14, v11, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    invoke-direct {v12, v1, v13}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v11}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    iget v13, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v14, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v15, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v14, v15

    mul-float/2addr v14, v10

    add-float/2addr v13, v14

    iget v14, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, v12, v1

    mul-float/2addr v1, v10

    add-float/2addr v1, v14

    invoke-virtual {v11, v13, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    mul-int/lit16 v1, v3, 0x168

    div-int/2addr v1, v8

    int-to-float v1, v1

    add-float/2addr v1, v6

    const/high16 v12, 0x43b4

    rem-float v12, v1, v12

    const/high16 v1, 0x4334

    cmpl-float v1, v12, v1

    if-lez v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/c;->b()I

    move-result v1

    rem-int v1, v3, v1

    if-nez v1, :cond_d

    const/high16 v1, -0x3c4c

    :goto_2
    add-float v2, v12, v1

    invoke-virtual {v11}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getWidth()F

    move-result v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    invoke-virtual {v11}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getHeight()F

    move-result v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    mul-float v14, v5, v10

    add-float/2addr v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    mul-float/2addr v2, v10

    invoke-virtual {v11, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationZ(F)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v6

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    const/high16 v8, 0x4000

    div-float/2addr v1, v8

    iput v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    const/high16 v8, 0x4000

    div-float/2addr v1, v8

    add-float/2addr v1, v5

    iput v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x4000

    div-float v1, p4, v1

    iget v11, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    sub-float/2addr v1, v11

    const/high16 v11, 0x4000

    div-float v11, v4, v11

    sub-float/2addr v11, v5

    iget v12, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    invoke-direct {v8, v1, v11}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    iget v11, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v12, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v13, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v12, v13

    mul-float/2addr v12, v10

    add-float/2addr v11, v12

    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, v8, v1

    mul-float/2addr v1, v10

    add-float/2addr v1, v12

    invoke-virtual {v6, v11, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    mul-int/lit16 v1, v3, 0x168

    div-int/2addr v1, v9

    rem-int/lit16 v1, v1, 0x168

    int-to-float v8, v1

    const/high16 v1, 0x4334

    cmpl-float v1, v8, v1

    if-lez v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/iLoong/launcher/Desktop3D/c;->b()I

    move-result v1

    rem-int v1, v3, v1

    if-nez v1, :cond_c

    const/high16 v1, -0x3c4c

    :goto_3
    add-float v2, v8, v1

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getWidth()F

    move-result v8

    const/high16 v11, 0x4000

    div-float/2addr v8, v11

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getHeight()F

    move-result v11

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    mul-float v12, v5, v10

    add-float/2addr v11, v12

    invoke-virtual {v6, v8, v11}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    mul-float/2addr v2, v10

    invoke-virtual {v6, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationZ(F)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto/16 :goto_1

    :cond_4
    const v1, -0x40d55555

    cmpl-float v1, p2, v1

    if-lez v1, :cond_8

    const v1, 0x3eaaaaab

    add-float v1, v1, p2

    const/high16 v3, -0x3fc0

    mul-float/2addr v3, v1

    const/4 v1, 0x0

    move/from16 v16, v1

    move v1, v2

    move/from16 v2, v16

    :goto_4
    if-lt v2, v8, :cond_6

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v9, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    mul-int/lit16 v5, v2, 0x168

    div-int/2addr v5, v9

    rem-int/lit16 v5, v5, 0x168

    int-to-float v5, v5

    const/high16 v8, 0x4334

    cmpl-float v8, v5, v8

    if-lez v8, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/iLoong/launcher/Desktop3D/c;->b()I

    move-result v8

    rem-int v8, v2, v8

    if-nez v8, :cond_5

    const/high16 v1, -0x3c4c

    :cond_5
    add-float/2addr v5, v1

    mul-float v8, v6, v3

    add-float/2addr v5, v8

    invoke-virtual {v4, v5}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationZ(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    mul-int/lit16 v5, v2, 0x168

    div-int/2addr v5, v8

    rem-int/lit16 v5, v5, 0x168

    int-to-float v5, v5

    const/high16 v10, 0x4334

    cmpl-float v10, v5, v10

    if-lez v10, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/c;->b()I

    move-result v10

    rem-int v10, v2, v10

    if-nez v10, :cond_7

    const/high16 v1, -0x3c4c

    :cond_7
    add-float/2addr v5, v1

    add-float/2addr v5, v6

    mul-float v10, v6, v3

    add-float/2addr v5, v10

    invoke-virtual {v4, v5}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationZ(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    const/high16 v1, 0x3f80

    add-float v1, v1, p2

    const/high16 v3, 0x4040

    mul-float v10, v1, v3

    const/4 v1, 0x0

    move v3, v1

    :goto_6
    if-lt v3, v8, :cond_9

    const/4 v1, 0x0

    move v3, v1

    :goto_7
    if-ge v3, v9, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v8

    iget v1, v8, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    const/high16 v11, 0x4000

    div-float/2addr v1, v11

    iput v1, v8, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    iget v1, v8, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    const/high16 v11, 0x4000

    div-float/2addr v1, v11

    add-float/2addr v1, v5

    iput v1, v8, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x4000

    div-float v1, p4, v1

    iget v12, v8, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    sub-float/2addr v1, v12

    const/high16 v12, 0x4000

    div-float v12, v4, v12

    sub-float/2addr v12, v5

    iget v13, v8, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-direct {v11, v1, v12}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v13, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v14, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v13, v14

    mul-float/2addr v13, v10

    add-float/2addr v12, v13

    iget v13, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, v11, v1

    mul-float/2addr v1, v10

    add-float/2addr v1, v13

    invoke-virtual {v8, v12, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    mul-int/lit16 v1, v3, 0x168

    div-int/2addr v1, v9

    int-to-float v1, v1

    add-float/2addr v1, v6

    const/high16 v11, 0x43b4

    rem-float v11, v1, v11

    const/high16 v1, 0x4334

    cmpl-float v1, v11, v1

    if-lez v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/iLoong/launcher/Desktop3D/c;->b()I

    move-result v1

    rem-int v1, v3, v1

    if-nez v1, :cond_a

    const/high16 v1, -0x3c4c

    :goto_8
    add-float v2, v11, v1

    invoke-virtual {v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getWidth()F

    move-result v11

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    invoke-virtual {v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getHeight()F

    move-result v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    mul-float v13, v5, v10

    add-float/2addr v12, v13

    invoke-virtual {v8, v11, v12}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    mul-float/2addr v2, v10

    invoke-virtual {v8, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationZ(F)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto/16 :goto_7

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v11

    iget v1, v11, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    const/high16 v12, 0x4000

    div-float/2addr v1, v12

    iput v1, v11, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    iget v1, v11, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    const/high16 v12, 0x4000

    div-float/2addr v1, v12

    add-float/2addr v1, v5

    iput v1, v11, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    new-instance v12, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x4000

    div-float v1, p4, v1

    iget v13, v11, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    sub-float/2addr v1, v13

    const/high16 v13, 0x4000

    div-float v13, v4, v13

    sub-float/2addr v13, v5

    iget v14, v11, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    invoke-direct {v12, v1, v13}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v11}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    iget v13, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v14, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v15, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v14, v15

    mul-float/2addr v14, v10

    add-float/2addr v13, v14

    iget v14, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, v12, v1

    mul-float/2addr v1, v10

    add-float/2addr v1, v14

    invoke-virtual {v11, v13, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    const/high16 v1, 0x4000

    mul-float/2addr v1, v6

    mul-int/lit16 v12, v3, 0x168

    div-int/2addr v12, v8

    int-to-float v12, v12

    add-float/2addr v1, v12

    const/high16 v12, 0x43b4

    rem-float v12, v1, v12

    const/high16 v1, 0x4334

    cmpl-float v1, v12, v1

    if-lez v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Desktop3D/c;->b()I

    move-result v1

    rem-int v1, v3, v1

    if-nez v1, :cond_b

    const/high16 v1, -0x3c4c

    :goto_9
    add-float v2, v12, v1

    invoke-virtual {v11}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getWidth()F

    move-result v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    invoke-virtual {v11}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getHeight()F

    move-result v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    mul-float v14, v5, v10

    add-float/2addr v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    mul-float/2addr v2, v10

    invoke-virtual {v11, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationZ(F)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto/16 :goto_6

    :cond_a
    move v1, v2

    goto/16 :goto_8

    :cond_b
    move v1, v2

    goto :goto_9

    :cond_c
    move v1, v2

    goto/16 :goto_3

    :cond_d
    move v1, v2

    goto/16 :goto_2
.end method
