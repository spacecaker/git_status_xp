.class Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;
.super Lcom/badlogic/gdx/utils/XmlReader;


# instance fields
.field awaitingData:Z

.field col:I

.field compression:Ljava/lang/String;

.field currBranch:Ljava/util/Stack;

.field currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

.field currLayerHeight:I

.field currLayerWidth:I

.field currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

.field currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

.field currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

.field currTile:I

.field currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

.field data:[B

.field dataCounter:I

.field dataString:Ljava/lang/String;

.field encoding:Ljava/lang/String;

.field polygon:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

.field polyline:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

.field row:I

.field private final synthetic val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/XmlReader;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->awaitingData:Z

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    return-void
.end method

.method private arrangeData()V
    .locals 8

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    move v3, v1

    :goto_1
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    if-lt v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    aget-object v5, v4, v0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v4, v2

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v4, v4, v6

    invoke-static {v4}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    add-int/lit8 v6, v7, 0x1

    aget-byte v4, v4, v7

    invoke-static {v4}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, v7, v6

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v2, v6

    aput v2, v5, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1
.end method

.method private fromCSV()V
    .locals 6

    const/4 v1, 0x0

    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-direct {v3, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    move v2, v1

    :goto_1
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    if-lt v2, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    aget-object v4, v4, v0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private putPolyLine(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "polyline"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;->points:Ljava/lang/String;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->polyline:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "polygon"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;->points:Ljava/lang/String;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->polygon:Ljava/lang/String;

    goto :goto_0
.end method

.method private putProperty(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;)V
    .locals 4

    const-string v0, "tile"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTile:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->firstgid:I

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->setTileProperty(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "map"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->properties:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v0, "layer"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->properties:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v0, "objectgroup"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;->properties:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string v0, "object"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->properties:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private unGZip()V
    .locals 8

    const/4 v4, 0x4

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    array-length v2, v2

    invoke-direct {v3, v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-array v4, v4, [B

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-lt v0, v2, :cond_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error Reading TMX Layer Data - IOException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move v2, v1

    :goto_1
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    if-lt v2, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x4

    :try_start_1
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x0

    aget-byte v6, v4, v6

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v6

    const/4 v7, 0x1

    aget-byte v7, v4, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x2

    aget-byte v7, v4, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error Reading TMX Layer Data."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private unZlib()V
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x0

    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3}, Ljava/util/zip/Inflater;-><init>()V

    new-array v4, v0, [B

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    array-length v2, v2

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    move v2, v1

    :goto_1
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    if-lt v2, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x4

    :try_start_0
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Inflater;->inflate([BII)I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x0

    aget-byte v6, v4, v6

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v6

    const/4 v7, 0x1

    aget-byte v7, v4, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x2

    aget-byte v7, v4, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v2
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error Reading TMX Layer Data."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected attribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "layer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "width"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    :cond_1
    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->name:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v0, "height"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    goto :goto_0

    :cond_4
    const-string v1, "tileset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "firstgid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->firstgid:I

    goto :goto_1

    :cond_5
    const-string v0, "tilewidth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileWidth:I

    goto :goto_1

    :cond_6
    const-string v0, "tileheight"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileHeight:I

    goto :goto_1

    :cond_7
    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->name:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v0, "spacing"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->spacing:I

    goto :goto_1

    :cond_9
    const-string v0, "margin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->margin:I

    goto :goto_1

    :cond_a
    const-string v1, "image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "source"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->imageName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->encoding:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    const-string v0, "compression"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    const-string v1, "objectgroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;->name:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    const-string v0, "height"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;->height:I

    goto/16 :goto_1

    :cond_f
    const-string v0, "width"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;->width:I

    goto/16 :goto_1

    :cond_10
    const-string v1, "object"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->name:Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    const-string v0, "type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->type:Ljava/lang/String;

    goto/16 :goto_1

    :cond_12
    const-string v0, "x"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->x:I

    goto/16 :goto_1

    :cond_13
    const-string v0, "y"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->y:I

    goto/16 :goto_1

    :cond_14
    const-string v0, "width"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->width:I

    goto/16 :goto_1

    :cond_15
    const-string v0, "height"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->height:I

    goto/16 :goto_1

    :cond_16
    const-string v0, "gid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->gid:I

    goto/16 :goto_1

    :cond_17
    const-string v1, "map"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v0, "orientation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->orientation:Ljava/lang/String;

    goto/16 :goto_1

    :cond_18
    const-string v0, "width"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->width:I

    goto/16 :goto_1

    :cond_19
    const-string v0, "height"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->height:I

    goto/16 :goto_1

    :cond_1a
    const-string v0, "tilewidth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileWidth:I

    goto/16 :goto_1

    :cond_1b
    const-string v0, "tileheight"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileHeight:I

    goto/16 :goto_1

    :cond_1c
    const-string v1, "tile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->awaitingData:Z

    if-eqz v0, :cond_1e

    const-string v0, "gid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->col:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->row:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->row:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-ge v0, v1, :cond_1d

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->row:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->col:I

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    :goto_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    goto/16 :goto_1

    :cond_1d
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "TiledLoader"

    const-string v2, "Warning: extra XML gid values ignored! Your map is likely corrupt!"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1e
    const-string v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTile:I

    goto/16 :goto_1

    :cond_1f
    const-string v1, "property"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    goto/16 :goto_1

    :cond_20
    const-string v0, "value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_21
    const-string v1, "polyline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v0, "points"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->polyline:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;->points:Ljava/lang/String;

    goto/16 :goto_1

    :cond_22
    const-string v1, "polygon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "points"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->polygon:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;->points:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method protected close()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "layer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->layers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "tileset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileSets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    goto :goto_0

    :cond_2
    const-string v2, "object"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;->objects:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    goto :goto_0

    :cond_3
    const-string v2, "objectgroup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->objectGroups:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    goto :goto_0

    :cond_4
    const-string v2, "property"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->putProperty(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;)V

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    goto :goto_0

    :cond_5
    const-string v2, "polyline"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->polyline:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->putPolyLine(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;)V

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->polyline:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    goto :goto_0

    :cond_6
    const-string v2, "polygon"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->polygon:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->putPolyLine(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;)V

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->polygon:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    goto :goto_0

    :cond_7
    const-string v2, "data"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v0, "base64"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_1
    const-string v2, ""

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    const-string v0, "gzip"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->unGZip()V

    :cond_8
    :goto_2
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->awaitingData:Z

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_1

    :cond_a
    const-string v0, "zlib"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->unZlib()V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->arrangeData()V

    goto :goto_2

    :cond_c
    const-string v0, "csv"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->fromCSV()V

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->encoding:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    if-nez v0, :cond_e

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    goto :goto_2

    :cond_e
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Unsupported encoding and/or compression format"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const-string v1, "property"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->putProperty(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;)V

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    goto/16 :goto_0
.end method

.method protected open(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "layer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "tileset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    goto :goto_0

    :cond_2
    const-string v0, "data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->awaitingData:Z

    goto :goto_0

    :cond_3
    const-string v0, "objectgroup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    goto :goto_0

    :cond_4
    const-string v0, "object"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    goto :goto_0

    :cond_5
    const-string v0, "property"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;-><init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, "polyline"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    const-string v1, "polyline"

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;-><init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->polyline:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    goto :goto_0

    :cond_7
    const-string v0, "polygon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    const-string v1, "polygon"

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;-><init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->polygon:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Polyline;

    goto/16 :goto_0
.end method

.method protected text(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->awaitingData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    :cond_0
    return-void
.end method
