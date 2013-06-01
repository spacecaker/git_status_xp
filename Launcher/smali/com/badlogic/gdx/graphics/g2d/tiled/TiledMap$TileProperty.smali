.class Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap$TileProperty;
.super Ljava/lang/Object;


# instance fields
.field id:I

.field propertyMap:Ljava/util/HashMap;

.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;)V
    .locals 1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap$TileProperty;->this$0:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap$TileProperty;->propertyMap:Ljava/util/HashMap;

    return-void
.end method
