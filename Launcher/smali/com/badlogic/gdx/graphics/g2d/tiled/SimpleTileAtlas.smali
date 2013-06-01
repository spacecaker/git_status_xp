.class public Lcom/badlogic/gdx/graphics/g2d/tiled/SimpleTileAtlas;
.super Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 12

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;-><init>()V

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    iget-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->imageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v11

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v6

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v7

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v2

    invoke-direct {v0, v6, v7, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    move-object v1, v0

    :cond_3
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/SimpleTileAtlas;->textures:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileWidth:I

    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileHeight:I

    iget v5, v8, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->spacing:I

    iget v6, v8, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->margin:I

    move v1, v10

    move v2, v11

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/tiled/SimpleTileAtlas;->split(Lcom/badlogic/gdx/graphics/Texture;IIIIII)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v7

    :goto_0
    const/4 v2, 0x0

    aget-object v2, v4, v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    array-length v3, v4

    if-lt v2, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/SimpleTileAtlas;->regionsMap:Lcom/badlogic/gdx/utils/IntMap;

    add-int/lit8 v3, v1, 0x1

    iget v6, v8, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->firstgid:I

    add-int/2addr v1, v6

    aget-object v6, v4, v2

    aget-object v6, v6, v0

    invoke-virtual {v5, v1, v6}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_1
.end method

.method private static split(Lcom/badlogic/gdx/graphics/Texture;IIIIII)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 12

    sub-int v0, p1, p6

    add-int v1, p3, p5

    div-int v9, v0, v1

    sub-int v0, p2, p6

    add-int v1, p4, p5

    div-int v10, v0, v1

    filled-new-array {v9, v10}, [I

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-lt v8, v9, :cond_0

    return-object v6

    :cond_0
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-lt v7, v10, :cond_1

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    aget-object v11, v6, v8

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v1, p3, p5

    mul-int/2addr v1, v8

    add-int v2, p6, v1

    add-int v1, p4, p5

    mul-int/2addr v1, v7

    add-int v3, p6, v1

    move-object v1, p0

    move v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    aput-object v0, v11, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1
.end method
