.class public abstract Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;


# instance fields
.field protected done:Z

.field protected duration:F

.field protected interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

.field protected invDuration:F

.field protected taken:F

.field protected target:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInterpolatedAlpha(F)F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->taken:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->taken:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->taken:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->duration:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->duration:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->taken:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->done:Z

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->taken:F

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->taken:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->invDuration:F

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->taken:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->duration:F

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Interpolator;->getInterpolation(F)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->duration:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->invDuration:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->finish()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Interpolator;->finished()V

    :cond_0
    return-void
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->done:Z

    return v0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    return-void
.end method

.method public setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    return-object p0
.end method
