.class public Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMap(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->createMap(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    move-result-object v0

    return-object v0
.end method

.method private static createMap(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;-><init>()V

    iput-object p0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tmxFile:Lcom/badlogic/gdx/files/FileHandle;

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;-><init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;)V

    if-eqz p0, :cond_0

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error Parsing TMX file"

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createMap(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->createMap(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    move-result-object v0

    return-object v0
.end method

.method static unsignedByteToInt(B)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    return v0
.end method
