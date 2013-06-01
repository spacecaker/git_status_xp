.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;
.super Ljava/lang/Object;


# static fields
.field static parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

.field static parentPos:Lcom/badlogic/gdx/math/Vector3;

.field static thisOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->thisOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildFrameSkeleton([Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;[FLcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;I)V
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    aget-object v3, v0, p4

    move v0, v1

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v0

    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v4}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    new-instance v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->pos:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->set(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)V

    aget-object v2, p0, v0

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    aget-object v2, p0, v0

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/2addr v2, v1

    aget v2, p2, v2

    iput v2, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x1

    :goto_1
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/2addr v6, v2

    aget v6, p2, v6

    iput v6, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-int/lit8 v2, v2, 0x1

    :cond_1
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/2addr v6, v2

    aget v6, p2, v6

    iput v6, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-int/lit8 v2, v2, 0x1

    :cond_2
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_3

    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/2addr v6, v2

    aget v6, p2, v6

    iput v6, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    add-int/lit8 v2, v2, 0x1

    :cond_3
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_4

    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/2addr v6, v2

    aget v6, p2, v6

    iput v6, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    add-int/lit8 v2, v2, 0x1

    :cond_4
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_5

    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/2addr v6, v2

    aget v6, p2, v6

    iput v6, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    add-int/lit8 v2, v2, 0x1

    :cond_5
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->computeW()V

    shl-int/lit8 v2, v0, 0x3

    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    aget-object v7, p0, v0

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->name:Ljava/lang/String;

    aput-object v7, v6, v0

    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    aget-object v7, p0, v0

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->parent:I

    int-to-float v7, v7

    aput v7, v6, v2

    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->parent:I

    if-gez v6, :cond_6

    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v2, 0x1

    iget v8, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v8, v6, v7

    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v2, 0x2

    iget v8, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v8, v6, v7

    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v2, 0x3

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v4, v6, v7

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v6, v2, 0x4

    iget v7, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    aput v7, v4, v6

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v6, v2, 0x5

    iget v7, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    aput v7, v4, v6

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v6, v2, 0x6

    iget v7, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    aput v7, v4, v6

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v2, v2, 0x7

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    aput v5, v4, v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->parent:I

    shl-int/lit8 v6, v6, 0x3

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v6, 0x1

    aget v8, v8, v9

    iput v8, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v6, 0x2

    aget v8, v8, v9

    iput v8, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v6, 0x3

    aget v8, v8, v9

    iput v8, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v8, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v6, 0x4

    aget v8, v8, v9

    iput v8, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v8, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v6, 0x5

    aget v8, v8, v9

    iput v8, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v8, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v6, 0x6

    aget v8, v8, v9

    iput v8, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v8, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v6, v6, 0x7

    aget v6, v8, v6

    iput v6, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->rotate(Lcom/badlogic/gdx/math/Vector3;)V

    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v2, 0x1

    iget v8, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v8, v9

    aput v8, v6, v7

    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v2, 0x2

    iget v8, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v8, v9

    aput v8, v6, v7

    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v2, 0x3

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v4, v8

    aput v4, v6, v7

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->multiply(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->normalize()V

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v5, v2, 0x4

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    aput v6, v4, v5

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v5, v2, 0x5

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    aput v6, v4, v5

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v5, v2, 0x6

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    aput v6, v4, v5

    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v2, v2, 0x7

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    aput v5, v4, v2

    goto/16 :goto_2

    :cond_7
    move v2, v1

    goto/16 :goto_1
.end method

.method public static loadAnimation(Ljava/io/InputStream;)Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;
    .locals 14

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v10, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    check-cast v0, [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;

    const/4 v1, 0x0

    check-cast v1, [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;

    const/4 v2, 0x0

    check-cast v2, [F

    move-object v6, v0

    move-object v13, v1

    move-object v1, v2

    move-object v2, v13

    :cond_0
    :goto_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_1
    invoke-static {v0, v11}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "MD5Version"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "10"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Not a valid MD5 animation file, version is "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", expected 10"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v4

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "numFrames"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v7, v0, [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iput-object v7, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    new-array v0, v0, [Lcom/badlogic/gdx/math/collision/BoundingBox;

    iput-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    :cond_3
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "numJoints"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v0, v5

    :goto_2
    iget-object v2, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    array-length v2, v2

    if-lt v0, v2, :cond_9

    new-array v2, v6, [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;

    new-array v0, v6, [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;

    move-object v8, v0

    move-object v9, v2

    :goto_3
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "frameRate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frameRate:I

    const/high16 v2, 0x3f80

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->secondsPerFrame:F

    :cond_4
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "numAnimatedComponents"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [F

    move-object v7, v0

    :goto_4
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "hierarchy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v5

    :goto_5
    array-length v0, v9

    if-lt v1, v0, :cond_a

    :cond_5
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "bounds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v5

    :goto_6
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    array-length v0, v0

    if-lt v1, v0, :cond_d

    :cond_6
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "baseframe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v5

    :goto_7
    array-length v0, v8

    if-lt v1, v0, :cond_f

    :cond_7
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "frame"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    move v1, v5

    :goto_8
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v9, v8, v7, v3, v12}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->buildFrameSkeleton([Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;[FLcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;I)V

    :cond_8
    move-object v1, v7

    move-object v2, v8

    move-object v6, v9

    goto/16 :goto_0

    :cond_9
    iget-object v2, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    invoke-direct {v7}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;-><init>()V

    aput-object v7, v2, v0

    iget-object v2, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    aget-object v2, v2, v0

    iput v6, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    iget-object v2, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    aget-object v2, v2, v0

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    iget-object v2, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    aget-object v2, v2, v0

    mul-int/lit8 v7, v6, 0x8

    new-array v7, v7, [F

    iput-object v7, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "//"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    add-int/lit8 v0, v1, -0x1

    :goto_9
    add-int/lit8 v1, v0, 0x1

    goto/16 :goto_5

    :cond_c
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->name:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->parent:I

    const/4 v0, 0x2

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    const/4 v0, 0x3

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    aput-object v2, v9, v1

    move v0, v1

    goto :goto_9

    :cond_d
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    add-int/lit8 v0, v1, -0x1

    :goto_a
    add-int/lit8 v1, v0, 0x1

    goto/16 :goto_6

    :cond_e
    new-instance v2, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iget-object v6, v2, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v6, v2, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x2

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v6, v2, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x3

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v6, v2, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x6

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v6, v2, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x7

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v6, v2, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    const/16 v0, 0x8

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aput-object v2, v0, v1

    move v0, v1

    goto :goto_a

    :cond_f
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_10

    add-int/lit8 v0, v1, -0x1

    :goto_b
    add-int/lit8 v1, v0, 0x1

    goto/16 :goto_7

    :cond_10
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;-><init>()V

    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->pos:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->pos:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x2

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->pos:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x3

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    const/4 v0, 0x6

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    const/4 v0, 0x7

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    const/16 v0, 0x8

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget-object v0, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->computeW()V

    aput-object v2, v8, v1

    move v0, v1

    goto :goto_b

    :cond_11
    move v2, v1

    move v1, v5

    :goto_c
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_12

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    move v1, v2

    goto/16 :goto_8

    :cond_12
    add-int/lit8 v6, v2, 0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v7, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v2, v6

    goto :goto_c

    :cond_13
    move-object v7, v1

    goto/16 :goto_4

    :cond_14
    move-object v8, v2

    move-object v9, v6

    goto/16 :goto_3
.end method

.method public static loadModel(Ljava/io/InputStream;Z)Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;
    .locals 14

    const/4 v0, 0x4

    const/4 v4, 0x0

    new-instance v8, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    invoke-direct {v8, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v10}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    if-eqz p1, :cond_12

    const/4 v0, 0x7

    move v7, v0

    :goto_0
    const/4 v0, 0x5

    if-eqz p1, :cond_11

    const/16 v0, 0x8

    move v1, v0

    :goto_1
    move v6, v4

    :cond_0
    :goto_2
    :try_start_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v3

    :goto_3
    return-object v0

    :cond_1
    invoke-static {v2, v9}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "MD5Version"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0xa

    if-eq v0, v5, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not a valid MD5 file, go version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", need 10"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "numJoints"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;-><init>()V

    iput-object v5, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    new-array v11, v0, [Ljava/lang/String;

    iput-object v11, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iput v0, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [F

    iput-object v0, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    :cond_3
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "numMeshes"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    iput-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    :cond_4
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "joints"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v2

    move v2, v4

    :goto_4
    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    if-lt v2, v5, :cond_6

    move-object v2, v0

    :cond_5
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "mesh"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "{"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    invoke-direct {v11}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;-><init>()V

    iput v7, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    iput v1, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    add-int/lit8 v5, v6, 0x1

    aput-object v11, v0, v6

    move-object v0, v2

    :goto_5
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v6, v5

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    add-int/lit8 v0, v2, -0x1

    :goto_6
    add-int/lit8 v2, v0, 0x1

    move-object v0, v5

    goto :goto_4

    :cond_7
    shl-int/lit8 v11, v2, 0x3

    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v12, v2

    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    aput v0, v12, v11

    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v13, v11, 0x1

    const/4 v0, 0x3

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v12, v13

    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v13, v11, 0x2

    const/4 v0, 0x4

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v12, v13

    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v13, v11, 0x3

    const/4 v0, 0x5

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v12, v13

    const/16 v0, 0x8

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    const/16 v0, 0x9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    const/16 v0, 0xa

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->computeW()V

    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v12, v11, 0x4

    iget v13, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    aput v13, v0, v12

    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v12, v11, 0x5

    iget v13, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    aput v13, v0, v12

    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v12, v11, 0x6

    iget v13, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    aput v13, v0, v12

    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v11, v11, 0x7

    iget v12, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    aput v12, v0, v11

    move v0, v2

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    move-object v0, v2

    goto/16 :goto_5

    :cond_9
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "shader"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->shader:Ljava/lang/String;

    :cond_a
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "numverts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    iget v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    mul-int/2addr v0, v7

    new-array v0, v0, [F

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    :cond_b
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "numtris"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [S

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    iput v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numTriangles:I

    :cond_c
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "numweights"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numWeights:I

    iget v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numWeights:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    :cond_d
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "vert"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int v6, v0, v7

    iget-object v12, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    add-int/lit8 v13, v6, 0x1

    const/4 v0, 0x3

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v12, v6

    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    add-int/lit8 v12, v13, 0x1

    const/4 v0, 0x4

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v6, v13

    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    add-int/lit8 v13, v12, 0x1

    const/4 v0, 0x6

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v6, v12

    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    add-int/lit8 v12, v13, 0x1

    const/4 v0, 0x7

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v6, v13

    if-eqz p1, :cond_e

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    add-int/lit8 v6, v12, 0x1

    const/4 v13, 0x0

    aput v13, v0, v12

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    add-int/lit8 v12, v6, 0x1

    const/4 v13, 0x0

    aput v13, v0, v6

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    add-int/lit8 v6, v12, 0x1

    const/4 v6, 0x0

    aput v6, v0, v12

    :cond_e
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "tri"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v6, v0, 0x3

    iget-object v12, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    add-int/lit8 v13, v6, 0x1

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    aput-short v0, v12, v6

    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    add-int/lit8 v12, v13, 0x1

    const/4 v0, 0x3

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    aput-short v0, v6, v13

    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    add-int/lit8 v0, v12, 0x1

    const/4 v0, 0x4

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    aput-short v0, v6, v12

    :cond_f
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "weight"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int v6, v0, v1

    iget-object v12, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    add-int/lit8 v13, v6, 0x1

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    aput v0, v12, v6

    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    add-int/lit8 v12, v13, 0x1

    const/4 v0, 0x3

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v6, v13

    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    add-int/lit8 v13, v12, 0x1

    const/4 v0, 0x5

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v6, v12

    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    add-int/lit8 v12, v13, 0x1

    const/4 v0, 0x6

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v6, v13

    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    add-int/lit8 v0, v12, 0x1

    const/4 v0, 0x7

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v6, v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_10
    move-object v0, v2

    goto/16 :goto_5

    :cond_11
    move v1, v0

    goto/16 :goto_1

    :cond_12
    move v7, v0

    goto/16 :goto_0
.end method

.method private static parseFloat(Ljava/lang/String;)F
    .locals 15

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v0, 0x0

    move v6, v0

    move v0, v1

    :goto_0
    if-lt v6, v7, :cond_0

    add-float v0, v5, v4

    mul-float/2addr v0, v3

    return v0

    :cond_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v8, 0x2d

    if-ne v1, v8, :cond_1

    const/high16 v1, -0x4080

    move v3, v4

    move v4, v5

    move v14, v2

    move v2, v1

    move v1, v14

    :goto_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_1
    const/16 v8, 0x2b

    if-ne v1, v8, :cond_2

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_1

    :cond_2
    const/16 v8, 0x2e

    if-eq v1, v8, :cond_3

    const/16 v8, 0x2c

    if-ne v1, v8, :cond_4

    :cond_3
    const/4 v1, 0x1

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, -0x30

    int-to-float v8, v1

    if-nez v2, :cond_5

    const/high16 v1, 0x4120

    mul-float/2addr v1, v5

    add-float/2addr v1, v8

    move v14, v2

    move v2, v3

    move v3, v4

    move v4, v1

    move v1, v14

    goto :goto_1

    :cond_5
    const/high16 v9, 0x3f80

    const-wide/high16 v10, 0x4024

    add-int/lit8 v1, v0, 0x1

    int-to-double v12, v0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v0, v10

    div-float v0, v9, v0

    mul-float/2addr v0, v8

    add-float/2addr v0, v4

    move v4, v5

    move v14, v2

    move v2, v3

    move v3, v0

    move v0, v1

    move v1, v14

    goto :goto_1
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    if-lt v2, v3, :cond_1

    :cond_0
    mul-int/2addr v0, v1

    return v0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_3

    const/4 v0, -0x1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v5, 0x2b

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_0

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_0

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v4

    goto :goto_1
.end method

.method private static tokenize(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
