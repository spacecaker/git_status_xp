.class public Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;
.super Ljava/lang/Object;


# instance fields
.field public firstgid:I

.field public imageName:Ljava/lang/String;

.field public margin:I

.field public name:Ljava/lang/String;

.field public spacing:I

.field public tileHeight:I

.field public tileWidth:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->margin:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->spacing:I

    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->margin:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->spacing:I

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->firstgid:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->firstgid:I

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileWidth:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileWidth:I

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileHeight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileHeight:I

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->margin:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->margin:I

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->spacing:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->spacing:I

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->imageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->imageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->name:Ljava/lang/String;

    return-void
.end method
