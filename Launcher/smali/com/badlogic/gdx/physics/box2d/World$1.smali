.class Lcom/badlogic/gdx/physics/box2d/World$1;
.super Lcom/badlogic/gdx/utils/Pool;


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/physics/box2d/World;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;II)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World$1;->this$0:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World$1;->this$0:Lcom/badlogic/gdx/physics/box2d/World;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/Body;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/physics/box2d/World$1;->newObject()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method
