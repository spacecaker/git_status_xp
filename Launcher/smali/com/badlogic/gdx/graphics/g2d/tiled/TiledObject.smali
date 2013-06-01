.class public Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;
.super Ljava/lang/Object;


# instance fields
.field public gid:I

.field public height:I

.field public name:Ljava/lang/String;

.field public polygon:Ljava/lang/String;

.field public polyline:Ljava/lang/String;

.field public properties:Ljava/util/HashMap;

.field public type:Ljava/lang/String;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->width:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->height:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->gid:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->properties:Ljava/util/HashMap;

    return-void
.end method
