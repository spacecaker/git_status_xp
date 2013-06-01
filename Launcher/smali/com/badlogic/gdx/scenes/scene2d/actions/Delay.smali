.class public Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;


# static fields
.field static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;


# instance fields
.field protected action:Lcom/badlogic/gdx/scenes/scene2d/Action;

.field protected duration:F

.field protected taken:F

.field protected target:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public static $(F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->duration:F

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    return-object v0
.end method

.method public static $(Lcom/badlogic/gdx/scenes/scene2d/Action;F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->duration:F

    iput-object p0, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->taken:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->taken:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->taken:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->duration:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->callActionCompletedListener()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->callActionCompletedListener()V

    :cond_0
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->copy()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->duration:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->duration:F

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    move-result-object v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->finish()V

    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->finish()V

    return-void
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public isDone()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->taken:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->duration:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Action;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->taken:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->duration:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->taken:F

    return-void
.end method
