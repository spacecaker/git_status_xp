.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;
.super Ljava/lang/Object;


# static fields
.field static _A:Lcom/badlogic/gdx/math/Vector3;

.field static _B:Lcom/badlogic/gdx/math/Vector3;

.field static _n:Lcom/badlogic/gdx/math/Vector3;

.field static bn:Lcom/badlogic/gdx/math/Vector3;

.field static quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

.field static vn:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field public floatsPerVertex:I

.field public floatsPerWeight:I

.field public indices:[S

.field public numTriangles:I

.field public numVertices:I

.field public numWeights:I

.field public shader:Ljava/lang/String;

.field public vertices:[F

.field public weights:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_A:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_B:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_n:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcNor(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->cpy()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_A:Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_A:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->cpy()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_B:Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_B:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_A:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_B:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_n:Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_n:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public static calculateNormalsBind(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[S[FII)V
    .locals 24

    const/4 v2, 0x2

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p2

    array-length v3, v0

    if-lt v2, v3, :cond_0

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p3

    array-length v2, v0

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    :goto_2
    move-object/from16 v0, p3

    array-length v2, v0

    if-lt v1, v2, :cond_3

    const/4 v1, 0x2

    :goto_3
    move-object/from16 v0, p2

    array-length v2, v0

    if-lt v1, v2, :cond_4

    const/4 v1, 0x0

    :goto_4
    move-object/from16 v0, p1

    array-length v2, v0

    if-lt v1, v2, :cond_6

    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    aget v3, p2, v2

    float-to-int v3, v3

    add-int/lit8 v4, v2, 0x1

    aget v4, p2, v4

    float-to-int v8, v4

    mul-int v4, v3, p6

    const/4 v3, 0x0

    :goto_5
    if-lt v3, v8, :cond_1

    add-int/lit8 v3, v1, 0x1

    aput v7, p4, v1

    add-int/lit8 v1, v3, 0x1

    aput v6, p4, v3

    add-int/lit8 v3, v1, 0x1

    aput v5, p4, v1

    add-int/lit8 v1, v3, 0x2

    add-int/lit8 v1, v1, 0x3

    add-int v2, v2, p5

    goto :goto_0

    :cond_1
    add-int/lit8 v9, v4, 0x1

    aget v4, p1, v4

    float-to-int v4, v4

    shl-int/lit8 v10, v4, 0x3

    add-int/lit8 v4, v9, 0x1

    aget v9, p1, v9

    add-int/lit8 v11, v4, 0x1

    aget v12, p1, v4

    add-int/lit8 v4, v11, 0x1

    aget v11, p1, v11

    add-int/lit8 v13, v4, 0x1

    aget v14, p1, v4

    add-int/lit8 v4, v13, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v15, v10, 0x4

    aget v13, v13, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v16, v10, 0x5

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v16, v0

    add-int/lit8 v17, v10, 0x6

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x7

    aget v17, v17, v18

    neg-float v0, v13

    move/from16 v18, v0

    neg-float v0, v15

    move/from16 v19, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v20, v0

    neg-float v0, v13

    move/from16 v21, v0

    mul-float v21, v21, v12

    mul-float v22, v15, v11

    sub-float v21, v21, v22

    mul-float v22, v16, v14

    sub-float v21, v21, v22

    mul-float v22, v17, v12

    mul-float v23, v15, v14

    add-float v22, v22, v23

    mul-float v23, v16, v11

    sub-float v22, v22, v23

    mul-float v23, v17, v11

    mul-float v16, v16, v12

    add-float v16, v16, v23

    mul-float v23, v13, v14

    sub-float v16, v16, v23

    mul-float v14, v14, v17

    mul-float/2addr v11, v13

    add-float/2addr v11, v14

    mul-float/2addr v12, v15

    sub-float/2addr v11, v12

    mul-float v12, v22, v17

    mul-float v13, v21, v18

    add-float/2addr v12, v13

    mul-float v13, v16, v20

    add-float/2addr v12, v13

    mul-float v13, v11, v19

    sub-float/2addr v12, v13

    mul-float v13, v16, v17

    mul-float v14, v21, v19

    add-float/2addr v13, v14

    mul-float v14, v11, v18

    add-float/2addr v13, v14

    mul-float v14, v22, v20

    sub-float/2addr v13, v14

    mul-float v11, v11, v17

    mul-float v14, v21, v20

    add-float/2addr v11, v14

    mul-float v14, v22, v19

    add-float/2addr v11, v14

    mul-float v14, v16, v18

    sub-float/2addr v11, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v15, v10, 0x1

    aget v14, v14, v15

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    add-float/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v14, v10, 0x2

    aget v12, v12, v14

    add-float/2addr v12, v13

    mul-float/2addr v12, v9

    add-float/2addr v6, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v10, 0x3

    aget v10, v12, v10

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v5, v9

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_2
    aget-short v2, p3, v1

    add-int/lit8 v3, v1, 0x1

    aget-short v3, p3, v3

    add-int/lit8 v4, v1, 0x2

    aget-short v4, p3, v4

    mul-int/lit8 v5, v2, 0x8

    mul-int/lit8 v6, v3, 0x8

    mul-int/lit8 v7, v4, 0x8

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    aget v9, p4, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p4, v10

    add-int/lit8 v5, v5, 0x2

    aget v5, p4, v5

    invoke-direct {v8, v9, v10, v5}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    new-instance v5, Lcom/badlogic/gdx/math/Vector3;

    aget v9, p4, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, p4, v10

    add-int/lit8 v6, v6, 0x2

    aget v6, p4, v6

    invoke-direct {v5, v9, v10, v6}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    new-instance v6, Lcom/badlogic/gdx/math/Vector3;

    aget v9, p4, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p4, v10

    add-int/lit8 v7, v7, 0x2

    aget v7, p4, v7

    invoke-direct {v6, v9, v10, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-static {v8, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calcNor(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    mul-int/lit8 v2, v2, 0x7

    mul-int/lit8 v3, v3, 0x7

    mul-int/lit8 v4, v4, 0x7

    add-int/lit8 v6, v2, 0x4

    aget v7, p2, v6

    iget v8, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v7, v8

    aput v7, p2, v6

    add-int/lit8 v6, v2, 0x5

    aget v7, p2, v6

    iget v8, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v7, v8

    aput v7, p2, v6

    add-int/lit8 v2, v2, 0x6

    aget v6, p2, v2

    iget v7, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v6, v7

    aput v6, p2, v2

    add-int/lit8 v2, v3, 0x4

    aget v6, p2, v2

    iget v7, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v6, v7

    aput v6, p2, v2

    add-int/lit8 v2, v3, 0x5

    aget v6, p2, v2

    iget v7, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v6, v7

    aput v6, p2, v2

    add-int/lit8 v2, v3, 0x6

    aget v3, p2, v2

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v3, v6

    aput v3, p2, v2

    add-int/lit8 v2, v4, 0x4

    aget v3, p2, v2

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v3, v6

    aput v3, p2, v2

    add-int/lit8 v2, v4, 0x5

    aget v3, p2, v2

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v3, v6

    aput v3, p2, v2

    add-int/lit8 v2, v4, 0x6

    aget v3, p2, v2

    iget v4, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v3, v4

    aput v3, p2, v2

    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_1

    :cond_3
    aget-short v2, p3, v1

    add-int/lit8 v3, v1, 0x1

    aget-short v3, p3, v3

    add-int/lit8 v4, v1, 0x2

    aget-short v4, p3, v4

    mul-int/lit8 v2, v2, 0x7

    mul-int/lit8 v3, v3, 0x7

    mul-int/lit8 v4, v4, 0x7

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v6, v2, 0x4

    aget v6, p2, v6

    add-int/lit8 v7, v2, 0x5

    aget v7, p2, v7

    add-int/lit8 v8, v2, 0x6

    aget v8, p2, v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v5, v2, 0x4

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v6, p2, v5

    add-int/lit8 v5, v2, 0x5

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v6, p2, v5

    add-int/lit8 v2, v2, 0x6

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v5, p2, v2

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v5, v3, 0x4

    aget v5, p2, v5

    add-int/lit8 v6, v3, 0x5

    aget v6, p2, v6

    add-int/lit8 v7, v3, 0x6

    aget v7, p2, v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v2, v3, 0x4

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v5, p2, v2

    add-int/lit8 v2, v3, 0x5

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v5, p2, v2

    add-int/lit8 v2, v3, 0x6

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v3, p2, v2

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v3, v4, 0x4

    aget v3, p2, v3

    add-int/lit8 v5, v4, 0x5

    aget v5, p2, v5

    add-int/lit8 v6, v4, 0x6

    aget v6, p2, v6

    invoke-virtual {v2, v3, v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v2, v4, 0x4

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v3, p2, v2

    add-int/lit8 v2, v4, 0x5

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v3, p2, v2

    add-int/lit8 v2, v4, 0x6

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v3, p2, v2

    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_2

    :cond_4
    aget v2, p2, v1

    float-to-int v2, v2

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    float-to-int v4, v3

    mul-int v3, v2, p6

    const/4 v2, 0x0

    :goto_6
    if-lt v2, v4, :cond_5

    add-int v1, v1, p5

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v5, v3, 0x1

    aget v3, p1, v3

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v3, 0x4

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v8, v3, 0x5

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v3, 0x6

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v3, v3, 0x7

    aget v3, v9, v3

    add-int/lit8 v9, v1, 0x2

    aget v9, p2, v9

    add-int/lit8 v10, v1, 0x3

    aget v10, p2, v10

    add-int/lit8 v11, v1, 0x4

    aget v11, p2, v11

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v12, v9, v10, v11}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iput v6, v9, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iput v7, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iput v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iput v3, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->invert()V

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->rotate(Lcom/badlogic/gdx/math/Vector3;)V

    add-int/lit8 v3, v5, 0x1

    aget v6, p1, v5

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v6, v7

    aput v6, p1, v5

    add-int/lit8 v5, v3, 0x1

    aget v6, p1, v3

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v6, v7

    aput v6, p1, v3

    add-int/lit8 v3, v5, 0x1

    aget v6, p1, v5

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v6, v7

    aput v6, p1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v3, v1, 0x5

    aget v3, p1, v3

    add-int/lit8 v4, v1, 0x6

    aget v4, p1, v4

    add-int/lit8 v5, v1, 0x7

    aget v5, p1, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v2, v1, 0x5

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v3, p1, v2

    add-int/lit8 v2, v1, 0x6

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v3, p1, v2

    add-int/lit8 v2, v1, 0x7

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v3, p1, v2

    add-int v1, v1, p6

    goto/16 :goto_4
.end method

.method public static calculateVertices(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[FIILcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 24

    const/4 v2, 0x2

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p2

    array-length v3, v0

    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    aget v3, p2, v2

    float-to-int v3, v3

    add-int/lit8 v4, v2, 0x1

    aget v4, p2, v4

    float-to-int v8, v4

    shl-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v3

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v8, :cond_1

    move-object/from16 v0, p6

    invoke-virtual {v0, v7, v6, v5}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    add-int/lit8 v3, v1, 0x1

    aput v7, p3, v1

    add-int/lit8 v1, v3, 0x1

    aput v6, p3, v3

    add-int/lit8 v3, v1, 0x1

    aput v5, p3, v1

    add-int/lit8 v1, v3, 0x2

    add-int v2, v2, p4

    goto :goto_0

    :cond_1
    add-int/lit8 v9, v4, 0x1

    aget v4, p1, v4

    float-to-int v4, v4

    shl-int/lit8 v10, v4, 0x3

    add-int/lit8 v4, v9, 0x1

    aget v9, p1, v9

    add-int/lit8 v11, v4, 0x1

    aget v12, p1, v4

    add-int/lit8 v13, v11, 0x1

    aget v11, p1, v11

    add-int/lit8 v4, v13, 0x1

    aget v13, p1, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v15, v10, 0x4

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v16, v10, 0x5

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v16, v0

    add-int/lit8 v17, v10, 0x6

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x7

    aget v17, v17, v18

    neg-float v0, v14

    move/from16 v18, v0

    neg-float v0, v15

    move/from16 v19, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v20, v0

    neg-float v0, v14

    move/from16 v21, v0

    mul-float v21, v21, v12

    mul-float v22, v15, v11

    sub-float v21, v21, v22

    mul-float v22, v16, v13

    sub-float v21, v21, v22

    mul-float v22, v17, v12

    mul-float v23, v15, v13

    add-float v22, v22, v23

    mul-float v23, v16, v11

    sub-float v22, v22, v23

    mul-float v23, v17, v11

    mul-float v16, v16, v12

    add-float v16, v16, v23

    mul-float v23, v14, v13

    sub-float v16, v16, v23

    mul-float v13, v13, v17

    mul-float/2addr v11, v14

    add-float/2addr v11, v13

    mul-float/2addr v12, v15

    sub-float/2addr v11, v12

    mul-float v12, v22, v17

    mul-float v13, v21, v18

    add-float/2addr v12, v13

    mul-float v13, v16, v20

    add-float/2addr v12, v13

    mul-float v13, v11, v19

    sub-float/2addr v12, v13

    mul-float v13, v16, v17

    mul-float v14, v21, v19

    add-float/2addr v13, v14

    mul-float v14, v11, v18

    add-float/2addr v13, v14

    mul-float v14, v22, v20

    sub-float/2addr v13, v14

    mul-float v11, v11, v17

    mul-float v14, v21, v20

    add-float/2addr v11, v14

    mul-float v14, v22, v19

    add-float/2addr v11, v14

    mul-float v14, v16, v18

    sub-float/2addr v11, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v15, v10, 0x1

    aget v14, v14, v15

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    add-float/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v14, v10, 0x2

    aget v12, v12, v14

    add-float/2addr v12, v13

    mul-float/2addr v12, v9

    add-float/2addr v6, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v10, 0x3

    aget v10, v12, v10

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v5, v9

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method public static calculateVerticesN(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[FIILcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 26

    const/4 v4, 0x2

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p2

    array-length v5, v0

    if-lt v4, v5, :cond_0

    return-void

    :cond_0
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    aget v5, p2, v4

    float-to-int v5, v5

    add-int/lit8 v6, v4, 0x1

    aget v6, p2, v6

    float-to-int v10, v6

    mul-int v6, v5, p5

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v11, v4, 0x2

    aget v11, p2, v11

    add-int/lit8 v12, v4, 0x3

    aget v12, p2, v12

    add-int/lit8 v13, v4, 0x4

    aget v13, p2, v13

    invoke-virtual {v5, v11, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v10, :cond_1

    move-object/from16 v0, p6

    invoke-virtual {v0, v9, v8, v7}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    add-int/lit8 v5, v3, 0x1

    aput v9, p3, v3

    add-int/lit8 v3, v5, 0x1

    aput v8, p3, v5

    add-int/lit8 v5, v3, 0x1

    aput v7, p3, v3

    add-int/lit8 v3, v5, 0x2

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v6, p3, v3

    add-int/lit8 v6, v5, 0x1

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v3, p3, v5

    add-int/lit8 v3, v6, 0x1

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v5, p3, v6

    add-int v4, v4, p4

    goto :goto_0

    :cond_1
    add-int/lit8 v11, v6, 0x1

    aget v6, p1, v6

    float-to-int v6, v6

    shl-int/lit8 v12, v6, 0x3

    add-int/lit8 v6, v11, 0x1

    aget v11, p1, v11

    add-int/lit8 v13, v6, 0x1

    aget v14, p1, v6

    add-int/lit8 v6, v13, 0x1

    aget v13, p1, v13

    add-int/lit8 v15, v6, 0x1

    aget v16, p1, v6

    sget-object v17, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v6, v15, 0x1

    aget v15, p1, v15

    add-int/lit8 v18, v6, 0x1

    aget v19, p1, v6

    add-int/lit8 v6, v18, 0x1

    aget v18, p1, v18

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v15, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v17, v12, 0x4

    aget v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v12, 0x5

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v18, v0

    add-int/lit8 v19, v12, 0x6

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v19, v0

    add-int/lit8 v20, v12, 0x7

    aget v19, v19, v20

    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move-object/from16 v0, v20

    iput v15, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move/from16 v0, v17

    move-object/from16 v1, v20

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move/from16 v0, v18

    move-object/from16 v1, v20

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    sget-object v21, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual/range {v20 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->rotate(Lcom/badlogic/gdx/math/Vector3;)V

    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    sget-object v21, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual/range {v20 .. v21}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    neg-float v0, v15

    move/from16 v20, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v22, v0

    neg-float v0, v15

    move/from16 v23, v0

    mul-float v23, v23, v14

    mul-float v24, v17, v13

    sub-float v23, v23, v24

    mul-float v24, v18, v16

    sub-float v23, v23, v24

    mul-float v24, v19, v14

    mul-float v25, v17, v16

    add-float v24, v24, v25

    mul-float v25, v18, v13

    sub-float v24, v24, v25

    mul-float v25, v19, v13

    mul-float v18, v18, v14

    add-float v18, v18, v25

    mul-float v25, v15, v16

    sub-float v18, v18, v25

    mul-float v16, v16, v19

    mul-float/2addr v13, v15

    add-float v13, v13, v16

    mul-float v14, v14, v17

    sub-float/2addr v13, v14

    mul-float v14, v24, v19

    mul-float v15, v23, v20

    add-float/2addr v14, v15

    mul-float v15, v18, v22

    add-float/2addr v14, v15

    mul-float v15, v13, v21

    sub-float/2addr v14, v15

    mul-float v15, v18, v19

    mul-float v16, v23, v21

    add-float v15, v15, v16

    mul-float v16, v13, v20

    add-float v15, v15, v16

    mul-float v16, v24, v22

    sub-float v15, v15, v16

    mul-float v13, v13, v19

    mul-float v16, v23, v22

    add-float v13, v13, v16

    mul-float v16, v24, v21

    add-float v13, v13, v16

    mul-float v16, v18, v20

    sub-float v13, v13, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v16, v0

    add-int/lit8 v17, v12, 0x1

    aget v16, v16, v17

    add-float v14, v14, v16

    mul-float/2addr v14, v11

    add-float/2addr v9, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v16, v12, 0x2

    aget v14, v14, v16

    add-float/2addr v14, v15

    mul-float/2addr v14, v11

    add-float/2addr v8, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v12, v12, 0x3

    aget v12, v14, v12

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    add-float/2addr v7, v11

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public calculateNormalsBind(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F)V
    .locals 7

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    move-object v0, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calculateNormalsBind(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[S[FII)V

    return-void
.end method

.method public calculateVertices(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[FLcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 7

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    move-object v0, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calculateVertices(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[FIILcom/badlogic/gdx/math/collision/BoundingBox;)V

    return-void
.end method

.method public calculateVerticesJni(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F)V
    .locals 7

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    array-length v4, v3

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Jni;->calculateVertices([F[F[F[FIII)V

    return-void
.end method

.method public calculateVerticesN(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[FLcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 7

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    move-object v0, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calculateVerticesN(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[FIILcom/badlogic/gdx/math/collision/BoundingBox;)V

    return-void
.end method

.method public createVertexArray()[F
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->createVertexArray(I)[F

    move-result-object v0

    return-object v0
.end method

.method public createVertexArray(I)[F
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    mul-int/2addr v1, p1

    new-array v2, v1, [F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    move v1, v0

    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    array-length v4, v4

    if-lt v1, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    aget v5, v5, v1

    aput v5, v2, v0

    add-int/lit8 v0, v4, 0x1

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    aput v5, v2, v4

    const/16 v4, 0x8

    if-ne p1, v4, :cond_1

    add-int/lit8 v0, v0, 0x3

    :cond_1
    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public getIndices()[S
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    return-object v0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->shader:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numWeights:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numTriangles:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    mul-int/2addr v0, v2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numTriangles:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numWeights:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    mul-int/2addr v0, v2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    array-length v2, v2

    if-lt v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :goto_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    array-length v0, v0

    if-lt v1, v0, :cond_2

    return-void

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->shader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numWeights:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numTriangles:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    array-length v2, v2

    if-lt v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :goto_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    array-length v0, v0

    if-lt v1, v0, :cond_2

    return-void

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    aget-short v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
