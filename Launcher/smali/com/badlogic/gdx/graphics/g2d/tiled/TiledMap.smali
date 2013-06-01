.class public Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;
.super Ljava/lang/Object;


# instance fields
.field public height:I

.field public layers:Ljava/util/ArrayList;

.field public objectGroups:Ljava/util/ArrayList;

.field public orientation:Ljava/lang/String;

.field public properties:Ljava/util/HashMap;

.field public tileHeight:I

.field private tileProperties:Ljava/util/ArrayList;

.field public tileSets:Ljava/util/ArrayList;

.field public tileWidth:I

.field public tmxFile:Lcom/badlogic/gdx/files/FileHandle;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->layers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->objectGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileSets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->properties:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileProperties:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getTileProperty(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap$TileProperty;

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap$TileProperty;->id:I

    if-ne v2, p1, :cond_0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap$TileProperty;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public setTileProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap$TileProperty;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap$TileProperty;-><init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;)V

    iput p1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap$TileProperty;->id:I

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap$TileProperty;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileProperties:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap$TileProperty;

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap$TileProperty;->id:I

    if-ne v2, p1, :cond_0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap$TileProperty;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
