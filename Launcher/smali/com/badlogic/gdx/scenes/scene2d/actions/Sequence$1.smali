.class Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence$1;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence$1;->newObject()Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v0

    return-object v0
.end method
