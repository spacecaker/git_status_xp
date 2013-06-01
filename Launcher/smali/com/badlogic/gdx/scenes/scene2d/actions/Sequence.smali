.class public Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;
.super Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;


# static fields
.field static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;


# instance fields
.field protected currAction:I

.field protected target:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public static varargs $([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;
    .locals 5

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->callActionCompletedListener()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->callActionCompletedListener()V

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 5

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    return-object v0

    :cond_0
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->copy()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;->finish()V

    return-void
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public isDone()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    return-void
.end method
