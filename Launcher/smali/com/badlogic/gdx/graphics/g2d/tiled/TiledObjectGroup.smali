.class public Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;
.super Ljava/lang/Object;


# instance fields
.field public height:I

.field public name:Ljava/lang/String;

.field public objects:Ljava/util/ArrayList;

.field public properties:Ljava/util/HashMap;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;->properties:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;->objects:Ljava/util/ArrayList;

    return-void
.end method
