.class public Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;
.super Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;


# static fields
.field static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;


# instance fields
.field protected finished:[Z

.field protected target:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public static varargs $([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    array-length v2, v2

    array-length v3, p0

    if-ge v2, v3, :cond_1

    :cond_0
    array-length v2, p0

    new-array v2, v2, [Z

    iput-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_2

    array-length v2, p0

    :goto_1
    if-lt v1, v2, :cond_3

    return-object v0

    :cond_2
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    aput-boolean v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v1

    move v2, v4

    :goto_0
    if-lt v3, v5, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->callActionCompletedListener()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->isDone()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)V

    move v0, v1

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    aget-boolean v6, v6, v3

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->finish()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    aput-boolean v4, v0, v3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    aget-boolean v0, v0, v3

    and-int/2addr v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    array-length v2, v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_1
    if-lt v2, v3, :cond_3

    return-object v0

    :cond_2
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    aput-boolean v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->copy()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public finish()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->finish()V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public isDone()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
