.class public Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIndex(Ljava/lang/String;I)I
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

.method public static loadObj(Ljava/io/InputStream;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->loadObj(Ljava/io/InputStream;Z)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public static loadObj(Ljava/io/InputStream;Z)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 3

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

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->loadObjFromString(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Mesh;

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

.method public static loadObj(Ljava/io/InputStream;ZZ)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 3

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

    invoke-static {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->loadObjFromString(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/Mesh;

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

.method public static loadObjFromString(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->loadObjFromString(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public static loadObjFromString(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->loadObjFromString(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public static loadObjFromString(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 22

    const-string v2, "\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v2, v12

    mul-int/lit8 v2, v2, 0x3

    new-array v13, v2, [F

    array-length v2, v12

    mul-int/lit8 v2, v2, 0x3

    new-array v14, v2, [F

    array-length v2, v12

    mul-int/lit8 v2, v2, 0x3

    new-array v15, v2, [F

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    array-length v2, v12

    mul-int/lit8 v2, v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v16, v0

    array-length v2, v12

    mul-int/lit8 v2, v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v17, v0

    array-length v2, v12

    mul-int/lit8 v2, v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v18, v0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v11, v12

    if-lt v2, v11, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const-string v6, "a_position"

    invoke-direct {v2, v3, v5, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v9, :cond_0

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v3, 0x2

    const/4 v5, 0x3

    const-string v6, "a_normal"

    invoke-direct {v2, v3, v5, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lez v8, :cond_1

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v3, 0x3

    const/4 v5, 0x2

    const-string v6, "a_texCoord0"

    invoke-direct {v2, v3, v5, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_16

    if-lez v9, :cond_e

    const/4 v2, 0x3

    :goto_1
    add-int/lit8 v3, v2, 0x3

    if-lez v8, :cond_f

    const/4 v2, 0x2

    :goto_2
    add-int/2addr v3, v2

    const/4 v5, 0x3

    if-lez v9, :cond_10

    const/4 v2, 0x3

    :goto_3
    add-int/lit8 v6, v2, 0x3

    mul-int v2, v10, v3

    new-array v11, v2, [F

    const/4 v2, 0x0

    :goto_4
    if-lt v2, v10, :cond_11

    const/4 v2, 0x0

    :goto_5
    mul-int/lit8 v10, v7, 0x3

    if-lt v2, v10, :cond_12

    mul-int/lit8 v2, v7, 0x3

    new-array v5, v2, [S

    const/4 v2, 0x0

    :goto_6
    array-length v3, v5

    if-lt v2, v3, :cond_15

    new-instance v3, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v6, 0x1

    array-length v7, v11

    array-length v8, v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v3, v6, v7, v8, v2}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)V

    move-object v2, v3

    :goto_7
    return-object v2

    :cond_2
    aget-object v11, v12, v2

    const-string v19, "v "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v19, "[ ]+"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/16 v19, 0x1

    aget-object v19, v11, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    aput v19, v13, v6

    add-int/lit8 v19, v6, 0x1

    const/16 v20, 0x2

    aget-object v20, v11, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    aput v20, v13, v19

    add-int/lit8 v19, v6, 0x2

    const/16 v20, 0x3

    aget-object v11, v11, v20

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v13, v19

    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v10, v10, 0x1

    :cond_3
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    const-string v19, "vn "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    const-string v19, "[ ]+"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/16 v19, 0x1

    aget-object v19, v11, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    aput v19, v14, v5

    add-int/lit8 v19, v5, 0x1

    const/16 v20, 0x2

    aget-object v20, v11, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    aput v20, v14, v19

    add-int/lit8 v19, v5, 0x2

    const/16 v20, 0x3

    aget-object v11, v11, v20

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v14, v19

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_5
    const-string v19, "vt"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    const-string v19, "[ ]+"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/16 v19, 0x1

    aget-object v19, v11, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    aput v19, v15, v4

    add-int/lit8 v19, v4, 0x1

    if-eqz p1, :cond_6

    const/high16 v20, 0x3f80

    const/16 v21, 0x2

    aget-object v11, v11, v21

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    sub-float v11, v20, v11

    :goto_9
    aput v11, v15, v19

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_6
    const/16 v20, 0x2

    aget-object v11, v11, v20

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    goto :goto_9

    :cond_7
    const-string v19, "f "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    const-string v19, "[ ]+"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/16 v19, 0x1

    aget-object v19, v11, v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v19, v20

    move-object/from16 v0, v20

    invoke-static {v0, v10}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v20

    aput v20, v16, v3

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    const/16 v20, 0x2

    aget-object v20, v19, v20

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v20

    aput v20, v17, v3

    :cond_8
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_9

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v19

    aput v19, v18, v3

    :cond_9
    add-int/lit8 v3, v3, 0x1

    const/16 v19, 0x2

    aget-object v19, v11, v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v19, v20

    move-object/from16 v0, v20

    invoke-static {v0, v10}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v20

    aput v20, v16, v3

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    const/16 v20, 0x2

    aget-object v20, v19, v20

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v20

    aput v20, v17, v3

    :cond_a
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v19

    aput v19, v18, v3

    :cond_b
    add-int/lit8 v3, v3, 0x1

    const/16 v19, 0x3

    aget-object v11, v11, v19

    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/16 v19, 0x0

    aget-object v19, v11, v19

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v19

    aput v19, v16, v3

    array-length v0, v11

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    const/16 v19, 0x2

    aget-object v19, v11, v19

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v19

    aput v19, v17, v3

    :cond_c
    array-length v0, v11

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_d

    const/16 v19, 0x1

    aget-object v11, v11, v19

    invoke-static {v11, v8}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v11

    aput v11, v18, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_11
    mul-int v12, v2, v3

    mul-int/lit8 v19, v2, 0x3

    aget v19, v13, v19

    aput v19, v11, v12

    mul-int v12, v2, v3

    add-int/lit8 v12, v12, 0x1

    mul-int/lit8 v19, v2, 0x3

    add-int/lit8 v19, v19, 0x1

    aget v19, v13, v19

    aput v19, v11, v12

    mul-int v12, v2, v3

    add-int/lit8 v12, v12, 0x2

    mul-int/lit8 v19, v2, 0x3

    add-int/lit8 v19, v19, 0x2

    aget v19, v13, v19

    aput v19, v11, v12

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_12
    aget v10, v16, v2

    if-lez v9, :cond_13

    aget v12, v17, v2

    mul-int/lit8 v12, v12, 0x3

    mul-int v13, v10, v3

    add-int/2addr v13, v5

    aget v19, v14, v12

    aput v19, v11, v13

    mul-int v13, v10, v3

    add-int/2addr v13, v5

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v19, v12, 0x1

    aget v19, v14, v19

    aput v19, v11, v13

    mul-int v13, v10, v3

    add-int/2addr v13, v5

    add-int/lit8 v13, v13, 0x2

    add-int/lit8 v12, v12, 0x2

    aget v12, v14, v12

    aput v12, v11, v13

    :cond_13
    if-lez v8, :cond_14

    aget v12, v18, v2

    mul-int/lit8 v12, v12, 0x2

    mul-int v13, v10, v3

    add-int/2addr v13, v6

    aget v19, v15, v12

    aput v19, v11, v13

    mul-int/2addr v10, v3

    add-int/2addr v10, v6

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v12, v12, 0x1

    aget v12, v15, v12

    aput v12, v11, v10

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_15
    aget v3, v16, v2

    int-to-short v3, v3

    aput-short v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_16
    mul-int/lit8 v3, v7, 0x3

    if-lez v9, :cond_17

    const/4 v2, 0x3

    :goto_a
    add-int/lit8 v5, v2, 0x3

    if-lez v8, :cond_18

    const/4 v2, 0x2

    :goto_b
    add-int/2addr v2, v5

    mul-int/2addr v2, v3

    new-array v5, v2, [F

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_c
    mul-int/lit8 v6, v7, 0x3

    if-lt v3, v6, :cond_19

    new-instance v3, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v6, 0x1

    mul-int/lit8 v7, v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v3, v6, v7, v8, v2}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    move-object v2, v3

    goto/16 :goto_7

    :cond_17
    const/4 v2, 0x0

    goto :goto_a

    :cond_18
    const/4 v2, 0x0

    goto :goto_b

    :cond_19
    aget v6, v16, v3

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v10, v2, 0x1

    aget v11, v13, v6

    aput v11, v5, v2

    add-int/lit8 v11, v10, 0x1

    add-int/lit8 v2, v6, 0x1

    aget v2, v13, v2

    aput v2, v5, v10

    add-int/lit8 v2, v11, 0x1

    add-int/lit8 v6, v6, 0x2

    aget v6, v13, v6

    aput v6, v5, v11

    if-lez v9, :cond_1a

    aget v6, v17, v3

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v10, v2, 0x1

    aget v11, v14, v6

    aput v11, v5, v2

    add-int/lit8 v11, v10, 0x1

    add-int/lit8 v2, v6, 0x1

    aget v2, v14, v2

    aput v2, v5, v10

    add-int/lit8 v2, v11, 0x1

    add-int/lit8 v6, v6, 0x2

    aget v6, v14, v6

    aput v6, v5, v11

    :cond_1a
    if-lez v8, :cond_1b

    aget v6, v18, v3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v10, v2, 0x1

    aget v11, v15, v6

    aput v11, v5, v2

    add-int/lit8 v2, v10, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v6, v15, v6

    aput v6, v5, v10

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c
.end method
