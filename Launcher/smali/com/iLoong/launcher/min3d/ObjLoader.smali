.class public Lcom/iLoong/launcher/min3d/ObjLoader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    add-int/2addr v0, p1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static loadObj(Lcom/badlogic/gdx/Gdx;Ljava/io/InputStream;Z)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/iLoong/launcher/min3d/ObjLoader;->loadObj(Ljava/io/InputStream;ZZ)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public static loadObj(Lcom/badlogic/gdx/Gdx;Ljava/io/InputStream;ZFFFFFF)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;
    .locals 1

    invoke-static/range {p1 .. p8}, Lcom/iLoong/launcher/min3d/ObjLoader;->loadObj(Ljava/io/InputStream;ZFFFFFF)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public static loadObj(Lcom/badlogic/gdx/Gdx;Ljava/io/InputStream;ZZ)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/iLoong/launcher/min3d/ObjLoader;->loadObj(Ljava/io/InputStream;ZZ)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public static loadObj(Ljava/io/InputStream;)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;
    .locals 8

    const/high16 v5, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/iLoong/launcher/min3d/ObjLoader;->loadObj(Ljava/io/InputStream;ZFFFFFF)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public static loadObj(Ljava/io/InputStream;Z)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;
    .locals 8

    const/high16 v5, 0x3f80

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/iLoong/launcher/min3d/ObjLoader;->loadObj(Ljava/io/InputStream;ZFFFFFF)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public static loadObj(Ljava/io/InputStream;ZFFFFFF)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;
    .locals 9

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/iLoong/launcher/min3d/ObjLoader;->loadObjFromString(Ljava/lang/String;ZZFFFFFF)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static loadObj(Ljava/io/InputStream;ZZ)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;
    .locals 9

    const/high16 v6, 0x3f80

    const/4 v3, 0x0

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    move v7, v6

    move v8, v6

    invoke-static/range {v0 .. v8}, Lcom/iLoong/launcher/min3d/ObjLoader;->loadObjFromString(Ljava/lang/String;ZZFFFFFF)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static loadObjFromString(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v1, v1}, Lcom/iLoong/launcher/min3d/ObjLoader;->loadObjFromString(Ljava/lang/String;ZFFF)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public static loadObjFromString(Ljava/lang/String;ZFFF)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;
    .locals 9

    const/high16 v6, 0x3f80

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, v6

    move v8, v6

    invoke-static/range {v0 .. v8}, Lcom/iLoong/launcher/min3d/ObjLoader;->loadObjFromString(Ljava/lang/String;ZZFFFFFF)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public static loadObjFromString(Ljava/lang/String;ZZFFFFFF)Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;
    .locals 22

    const-string v1, "\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v1, v13

    mul-int/lit8 v1, v1, 0x3

    new-array v14, v1, [F

    array-length v1, v13

    mul-int/lit8 v1, v1, 0x3

    new-array v15, v1, [F

    array-length v1, v13

    mul-int/lit8 v1, v1, 0x3

    new-array v0, v1, [F

    move-object/from16 v16, v0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    array-length v1, v13

    mul-int/lit8 v1, v1, 0x3

    new-array v0, v1, [I

    move-object/from16 v17, v0

    array-length v1, v13

    mul-int/lit8 v1, v1, 0x3

    new-array v0, v1, [I

    move-object/from16 v18, v0

    array-length v1, v13

    mul-int/lit8 v1, v1, 0x3

    new-array v0, v1, [I

    move-object/from16 v19, v0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v20, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f80

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    const/high16 v12, 0x3f80

    move-object/from16 v0, v20

    invoke-direct {v0, v1, v10, v11, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v1, 0x0

    :goto_0
    array-length v10, v13

    if-lt v1, v10, :cond_2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "a_position"

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v2, 0x5

    const/4 v3, 0x4

    const-string v4, "a_color"

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v8, :cond_0

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "a_normal"

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lez v7, :cond_1

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "a_texCoord0"

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_26

    if-lez v8, :cond_1e

    const/4 v1, 0x3

    :goto_1
    add-int/lit8 v2, v1, 0x4

    if-lez v7, :cond_1f

    const/4 v1, 0x2

    :goto_2
    add-int/2addr v2, v1

    const/4 v3, 0x4

    if-lez v8, :cond_20

    const/4 v1, 0x3

    :goto_3
    add-int/lit8 v4, v1, 0x4

    mul-int v1, v9, v2

    new-array v11, v1, [F

    const/4 v1, 0x0

    :goto_4
    if-lt v1, v9, :cond_21

    const/4 v1, 0x0

    :goto_5
    mul-int/lit8 v5, v6, 0x3

    if-lt v1, v5, :cond_22

    mul-int/lit8 v1, v6, 0x3

    new-array v7, v1, [S

    const/4 v1, 0x0

    :goto_6
    array-length v2, v7

    if-lt v1, v2, :cond_25

    new-instance v1, Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;

    const/4 v2, 0x0

    const/4 v3, 0x1

    array-length v4, v11

    array-length v5, v7

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct/range {v1 .. v6}, Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;-><init>(Lcom/badlogic/gdx/Gdx;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-virtual {v1, v11}, Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;->setVertices([F)V

    invoke-virtual {v1, v7}, Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;->setIndices([S)V

    :goto_7
    return-object v1

    :cond_2
    aget-object v10, v13, v1

    const-string v11, "v "

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "[ ]+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    const/4 v11, 0x2

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    const/16 v21, 0x3

    aget-object v10, v10, v21

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    const/high16 v21, 0x3f80

    cmpl-float v21, p6, v21

    if-eqz v21, :cond_3

    mul-float v12, v12, p6

    :cond_3
    const/high16 v21, 0x3f80

    cmpl-float v21, p7, v21

    if-eqz v21, :cond_4

    mul-float v11, v11, p7

    :cond_4
    const/high16 v21, 0x3f80

    cmpl-float v21, p8, v21

    if-eqz v21, :cond_5

    mul-float v10, v10, p8

    :cond_5
    add-float v12, v12, p3

    aput v12, v14, v5

    add-int/lit8 v12, v5, 0x1

    add-float v11, v11, p4

    aput v11, v14, v12

    add-int/lit8 v11, v5, 0x2

    add-float v10, v10, p5

    aput v10, v14, v11

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v9, v9, 0x1

    :cond_6
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    const-string v11, "vn "

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "[ ]+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v15, v4

    add-int/lit8 v11, v4, 0x1

    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    aput v12, v15, v11

    add-int/lit8 v11, v4, 0x2

    const/4 v12, 0x3

    aget-object v10, v10, v12

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    aput v10, v15, v11

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_8
    const-string v11, "vt"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v11, "[ ]+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v16, v3

    add-int/lit8 v11, v3, 0x1

    if-eqz p1, :cond_9

    const/high16 v12, 0x3f80

    const/16 v21, 0x2

    aget-object v10, v10, v21

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    sub-float v10, v12, v10

    :goto_9
    aput v10, v16, v11

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_9
    const/4 v12, 0x2

    aget-object v10, v10, v12

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    goto :goto_9

    :cond_a
    const-string v11, "f "

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "[ ]+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x5

    if-ne v11, v12, :cond_17

    const/4 v11, 0x1

    aget-object v11, v10, v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12, v9}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v12

    aput v12, v17, v2

    array-length v12, v11

    const/16 v21, 0x2

    move/from16 v0, v21

    if-le v12, v0, :cond_b

    const/4 v12, 0x2

    aget-object v12, v11, v12

    invoke-static {v12, v8}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v12

    aput v12, v18, v2

    :cond_b
    array-length v12, v11

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v12, v0, :cond_c

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-static {v11, v7}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v11

    aput v11, v19, v2

    :cond_c
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x2

    aget-object v11, v10, v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12, v9}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v12

    aput v12, v17, v2

    array-length v12, v11

    const/16 v21, 0x2

    move/from16 v0, v21

    if-le v12, v0, :cond_d

    const/4 v12, 0x2

    aget-object v12, v11, v12

    invoke-static {v12, v8}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v12

    aput v12, v18, v2

    :cond_d
    array-length v12, v11

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v12, v0, :cond_e

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-static {v11, v7}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v11

    aput v11, v19, v2

    :cond_e
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x4

    aget-object v11, v10, v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12, v9}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v12

    aput v12, v17, v2

    array-length v12, v11

    const/16 v21, 0x2

    move/from16 v0, v21

    if-le v12, v0, :cond_f

    const/4 v12, 0x2

    aget-object v12, v11, v12

    invoke-static {v12, v8}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v12

    aput v12, v18, v2

    :cond_f
    array-length v12, v11

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v12, v0, :cond_10

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-static {v11, v7}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v11

    aput v11, v19, v2

    :cond_10
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x2

    aget-object v11, v10, v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12, v9}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v12

    aput v12, v17, v2

    array-length v12, v11

    const/16 v21, 0x2

    move/from16 v0, v21

    if-le v12, v0, :cond_11

    const/4 v12, 0x2

    aget-object v12, v11, v12

    invoke-static {v12, v8}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v12

    aput v12, v18, v2

    :cond_11
    array-length v12, v11

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v12, v0, :cond_12

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-static {v11, v7}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v11

    aput v11, v19, v2

    :cond_12
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x3

    aget-object v11, v10, v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12, v9}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v12

    aput v12, v17, v2

    array-length v12, v11

    const/16 v21, 0x2

    move/from16 v0, v21

    if-le v12, v0, :cond_13

    const/4 v12, 0x2

    aget-object v12, v11, v12

    invoke-static {v12, v8}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v12

    aput v12, v18, v2

    :cond_13
    array-length v12, v11

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v12, v0, :cond_14

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-static {v11, v7}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v11

    aput v11, v19, v2

    :cond_14
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x4

    aget-object v10, v10, v11

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-static {v11, v9}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v11

    aput v11, v17, v2

    array-length v11, v10

    const/4 v12, 0x2

    if-le v11, v12, :cond_15

    const/4 v11, 0x2

    aget-object v11, v10, v11

    invoke-static {v11, v8}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v11

    aput v11, v18, v2

    :cond_15
    array-length v11, v10

    const/4 v12, 0x1

    if-le v11, v12, :cond_16

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v10, v7}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v10

    aput v10, v19, v2

    :cond_16
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    :cond_17
    const/4 v11, 0x1

    aget-object v11, v10, v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12, v9}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v12

    aput v12, v17, v2

    array-length v12, v11

    const/16 v21, 0x2

    move/from16 v0, v21

    if-le v12, v0, :cond_18

    const/4 v12, 0x2

    aget-object v12, v11, v12

    invoke-static {v12, v8}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v12

    aput v12, v18, v2

    :cond_18
    array-length v12, v11

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v12, v0, :cond_19

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-static {v11, v7}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v11

    aput v11, v19, v2

    :cond_19
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x2

    aget-object v11, v10, v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12, v9}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v12

    aput v12, v17, v2

    array-length v12, v11

    const/16 v21, 0x2

    move/from16 v0, v21

    if-le v12, v0, :cond_1a

    const/4 v12, 0x2

    aget-object v12, v11, v12

    invoke-static {v12, v8}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v12

    aput v12, v18, v2

    :cond_1a
    array-length v12, v11

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v12, v0, :cond_1b

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-static {v11, v7}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v11

    aput v11, v19, v2

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x3

    aget-object v10, v10, v11

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-static {v11, v9}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v11

    aput v11, v17, v2

    array-length v11, v10

    const/4 v12, 0x2

    if-le v11, v12, :cond_1c

    const/4 v11, 0x2

    aget-object v11, v10, v11

    invoke-static {v11, v8}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v11

    aput v11, v18, v2

    :cond_1c
    array-length v11, v10

    const/4 v12, 0x1

    if-le v11, v12, :cond_1d

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v10, v7}, Lcom/iLoong/launcher/min3d/ObjLoader;->a(Ljava/lang/String;I)I

    move-result v10

    aput v10, v19, v2

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    :cond_1e
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_1f
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_20
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_21
    mul-int v5, v1, v2

    mul-int/lit8 v12, v1, 0x3

    aget v12, v14, v12

    aput v12, v11, v5

    mul-int v5, v1, v2

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v12, v1, 0x3

    add-int/lit8 v12, v12, 0x1

    aget v12, v14, v12

    aput v12, v11, v5

    mul-int v5, v1, v2

    add-int/lit8 v5, v5, 0x2

    mul-int/lit8 v12, v1, 0x3

    add-int/lit8 v12, v12, 0x2

    aget v12, v14, v12

    aput v12, v11, v5

    mul-int v5, v1, v2

    add-int/lit8 v5, v5, 0x3

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v12

    aput v12, v11, v5

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_22
    aget v5, v17, v1

    if-lez v8, :cond_23

    aget v9, v18, v1

    mul-int/lit8 v9, v9, 0x3

    mul-int v12, v5, v2

    add-int/2addr v12, v3

    aget v13, v15, v9

    aput v13, v11, v12

    mul-int v12, v5, v2

    add-int/2addr v12, v3

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v9, 0x1

    aget v13, v15, v13

    aput v13, v11, v12

    mul-int v12, v5, v2

    add-int/2addr v12, v3

    add-int/lit8 v12, v12, 0x2

    add-int/lit8 v9, v9, 0x2

    aget v9, v15, v9

    aput v9, v11, v12

    :cond_23
    if-lez v7, :cond_24

    aget v9, v19, v1

    mul-int/lit8 v9, v9, 0x2

    mul-int v12, v5, v2

    add-int/2addr v12, v4

    aget v13, v16, v9

    aput v13, v11, v12

    mul-int/2addr v5, v2

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v9, v9, 0x1

    aget v9, v16, v9

    aput v9, v11, v5

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_25
    aget v2, v17, v1

    int-to-short v2, v2

    aput-short v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_26
    mul-int/lit8 v2, v6, 0x3

    if-lez v8, :cond_27

    const/4 v1, 0x3

    :goto_a
    add-int/lit8 v3, v1, 0x4

    if-lez v7, :cond_28

    const/4 v1, 0x2

    :goto_b
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    new-array v9, v1, [F

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_c
    mul-int/lit8 v3, v6, 0x3

    if-lt v2, v3, :cond_29

    new-instance v1, Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;

    const/4 v2, 0x0

    const/4 v3, 0x1

    mul-int/lit8 v4, v6, 0x3

    const/4 v5, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct/range {v1 .. v6}, Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;-><init>(Lcom/badlogic/gdx/Gdx;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-virtual {v1, v9}, Lcom/iLoong/launcher/UI3DEngine/adapter/Mesh;->setVertices([F)V

    goto/16 :goto_7

    :cond_27
    const/4 v1, 0x0

    goto :goto_a

    :cond_28
    const/4 v1, 0x0

    goto :goto_b

    :cond_29
    aget v3, v17, v2

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v1, 0x1

    aget v5, v14, v3

    aput v5, v9, v1

    add-int/lit8 v1, v4, 0x1

    add-int/lit8 v5, v3, 0x1

    aget v5, v14, v5

    aput v5, v9, v4

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v3, v3, 0x2

    aget v3, v14, v3

    aput v3, v9, v1

    add-int/lit8 v1, v4, 0x1

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v3

    aput v3, v9, v4

    if-lez v8, :cond_2a

    aget v3, v18, v2

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v1, 0x1

    aget v5, v15, v3

    aput v5, v9, v1

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v1, v3, 0x1

    aget v1, v15, v1

    aput v1, v9, v4

    add-int/lit8 v1, v5, 0x1

    add-int/lit8 v3, v3, 0x2

    aget v3, v15, v3

    aput v3, v9, v5

    :cond_2a
    if-lez v7, :cond_2b

    aget v3, v19, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x1

    aget v5, v16, v3

    aput v5, v9, v1

    add-int/lit8 v1, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    aget v3, v16, v3

    aput v3, v9, v4

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method
