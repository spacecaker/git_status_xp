.class public Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;
.super Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;


# static fields
.field private static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;


# instance fields
.field protected deltaAlpha:F

.field protected startAlpha:F


# direct methods
.method public static $(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;

    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->duration:F

    const/high16 v1, 0x3f80

    div-float/2addr v1, p0

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->invDuration:F

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;-><init>()V

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->startAlpha:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->deltaAlpha:F

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->createInterpolatedAlpha(F)F

    move-result v0

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->done:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f80

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->startAlpha:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->deltaAlpha:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->duration:F

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/Interpolator;->copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    :cond_0
    return-object v0
.end method

.method public finish()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->listener:Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->listener:Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;->completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :cond_0
    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->startAlpha:F

    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->deltaAlpha:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->taken:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->done:Z

    return-void
.end method
