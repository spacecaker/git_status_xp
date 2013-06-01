.class public Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
.super Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;


# static fields
.field private static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;


# instance fields
.field protected deltaScaleX:F

.field protected deltaScaleY:F

.field protected scaleX:F

.field protected scaleY:F

.field protected startScaleX:F

.field protected startScaleY:F


# direct methods
.method public static $(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->scaleX:F

    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->scaleY:F

    iput p2, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->duration:F

    const/high16 v1, 0x3f80

    div-float/2addr v1, p2

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->invDuration:F

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->createInterpolatedAlpha(F)F

    move-result v0

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->done:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->scaleX:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->scaleY:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->startScaleX:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->deltaScaleX:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->startScaleY:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->deltaScaleY:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    goto :goto_0
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->scaleX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->scaleY:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->duration:F

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/Interpolator;->copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    :cond_0
    return-object v0
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->finish()V

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->startScaleX:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->scaleX:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->deltaScaleX:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->startScaleY:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->scaleY:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->deltaScaleY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->taken:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->done:Z

    return-void
.end method
