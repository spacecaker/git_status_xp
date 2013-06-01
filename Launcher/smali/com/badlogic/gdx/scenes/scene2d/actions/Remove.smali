.class public Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;


# static fields
.field private static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;


# instance fields
.field protected removed:Z

.field protected target:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public static $()Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->removed:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->removed:Z

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->removed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->markToRemove(Z)V

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->removed:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->callActionCompletedListener()V

    :cond_0
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->$()Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->removed:Z

    return v0
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method
