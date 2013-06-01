.class public abstract Laurelienribon/tweenengine/BaseTween;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private callback:Laurelienribon/tweenengine/TweenCallback;

.field private callbackTriggers:I

.field protected currentTime:F

.field protected delay:F

.field protected duration:F

.field isAutoRemoveEnabled:Z

.field isAutoStartEnabled:Z

.field protected isFinished:Z

.field protected isInitialized:Z

.field private isIterationStep:Z

.field protected isKilled:Z

.field protected isPaused:Z

.field protected isStarted:Z

.field private isYoyo:Z

.field private repeatCnt:I

.field protected repeatDelay:F

.field private step:I

.field private userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Laurelienribon/tweenengine/BaseTween;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compute(IF)V
    .locals 2

    sget-boolean v0, Laurelienribon/tweenengine/BaseTween;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Laurelienribon/tweenengine/BaseTween;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-boolean v0, Laurelienribon/tweenengine/BaseTween;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isInitialized:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    sget-boolean v0, Laurelienribon/tweenengine/BaseTween;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isFinished:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    sget-boolean v0, Laurelienribon/tweenengine/BaseTween;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    sget-boolean v0, Laurelienribon/tweenengine/BaseTween;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    invoke-direct {p0, v0}, Laurelienribon/tweenengine/BaseTween;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    invoke-virtual {p0, v0, p1, p2}, Laurelienribon/tweenengine/BaseTween;->computeOverride(IIF)V

    return-void
.end method

.method private initialize()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isInitialized:Z

    if-nez v0, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->initializeOverride()V

    iput-boolean v2, p0, Laurelienribon/tweenengine/BaseTween;->isInitialized:Z

    iput-boolean v2, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    sub-float/2addr v0, v1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    invoke-virtual {p0, v2}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    :cond_0
    return-void
.end method

.method private isValid(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private testCompletion()V
    .locals 2

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-ltz v0, :cond_1

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isFinished:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private testInnerTransition(I)V
    .locals 1

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    if-le v0, p1, :cond_2

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/BaseTween;->forceEndValues(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    if-ge v0, p1, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/BaseTween;->forceStartValues(I)V

    goto :goto_0
.end method

.method private testLimitTransition(I)V
    .locals 2

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-ltz v0, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    if-gez v0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    goto :goto_0
.end method

.method private testRelaunch()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-ltz v0, :cond_2

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_2

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    sget-boolean v0, Laurelienribon/tweenengine/BaseTween;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    add-float/2addr v0, v1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-ltz v0, :cond_1

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    if-gez v0, :cond_1

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    sget-boolean v0, Laurelienribon/tweenengine/BaseTween;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    iput-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    const/4 v0, 0x0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    goto :goto_0
.end method

.method private updateStep()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    invoke-direct {p0, v0}, Laurelienribon/tweenengine/BaseTween;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-nez v0, :cond_2

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iput-boolean v4, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    add-float/2addr v0, v2

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-nez v0, :cond_3

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    iput-boolean v4, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    sub-float/2addr v0, v2

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-eqz v0, :cond_5

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iput-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Laurelienribon/tweenengine/BaseTween;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    :goto_1
    add-float/2addr v0, v2

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-eqz v0, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iput-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    sub-float/2addr v0, v2

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method protected callCallback(I)V
    .locals 1

    iget-object v0, p0, Laurelienribon/tweenengine/BaseTween;->callback:Laurelienribon/tweenengine/TweenCallback;

    if-eqz v0, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->callbackTriggers:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Laurelienribon/tweenengine/BaseTween;->callback:Laurelienribon/tweenengine/TweenCallback;

    invoke-interface {v0, p1, p0}, Laurelienribon/tweenengine/TweenCallback;->onEvent(ILaurelienribon/tweenengine/BaseTween;)V

    :cond_0
    return-void
.end method

.method protected abstract computeOverride(IIF)V
.end method

.method protected abstract containsTarget(Ljava/lang/Object;)Z
.end method

.method protected abstract containsTarget(Ljava/lang/Object;I)Z
.end method

.method public delay(F)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    add-float/2addr v0, p1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    return-object p0
.end method

.method protected abstract forceEndValues()V
.end method

.method protected forceEndValues(I)V
    .locals 1

    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/BaseTween;->isYoyo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceStartValues()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceEndValues()V

    goto :goto_0
.end method

.method protected abstract forceStartValues()V
.end method

.method protected forceStartValues(I)V
    .locals 1

    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/BaseTween;->isYoyo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceEndValues()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceStartValues()V

    goto :goto_0
.end method

.method protected forceToEnd(F)V
    .locals 1

    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->getFullDuration()F

    move-result v0

    sub-float v0, p1, v0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/BaseTween;->forceEndValues(I)V

    return-void
.end method

.method protected forceToStart()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    neg-float v0, v0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    const/4 v0, -0x1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->forceStartValues(I)V

    return-void
.end method

.method public free()V
    .locals 0

    return-void
.end method

.method public getDelay()F
    .locals 1

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    return v0
.end method

.method public getDuration()F
    .locals 1

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    return v0
.end method

.method public getFullDuration()F
    .locals 3

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-gez v0, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    add-float/2addr v0, v1

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    add-float/2addr v1, v2

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public getRepeatCount()I
    .locals 1

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    return v0
.end method

.method public getRepeatDelay()F
    .locals 1

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    return v0
.end method

.method public getStep()I
    .locals 1

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    goto :goto_0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Laurelienribon/tweenengine/BaseTween;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract initializeOverride()V
.end method

.method public isFinished()Z
    .locals 1

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isKilled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isPaused:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    return v0
.end method

.method public isYoyo()Z
    .locals 1

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isYoyo:Z

    return v0
.end method

.method protected isYoyo(I)Z
    .locals 2

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isYoyo:Z

    if-eqz v0, :cond_0

    rem-int/lit8 v0, p1, 0x4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kill()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isKilled:Z

    return-void
.end method

.method protected abstract killTarget(Ljava/lang/Object;)V
.end method

.method protected abstract killTarget(Ljava/lang/Object;I)V
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isPaused:Z

    return-void
.end method

.method public repeat(IF)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t change the repetitions of a tween or timeline once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_1

    :goto_0
    iput p2, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isYoyo:Z

    return-object p0

    :cond_1
    move p2, v0

    goto :goto_0
.end method

.method public repeatYoyo(IF)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t change the repetitions of a tween or timeline once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_1

    :goto_0
    iput p2, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isYoyo:Z

    return-object p0

    :cond_1
    move p2, v0

    goto :goto_0
.end method

.method protected reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isYoyo:Z

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    const/4 v0, 0x0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isPaused:Z

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isKilled:Z

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isFinished:Z

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isInitialized:Z

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    iput-object v2, p0, Laurelienribon/tweenengine/BaseTween;->callback:Laurelienribon/tweenengine/TweenCallback;

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->callbackTriggers:I

    iput-object v2, p0, Laurelienribon/tweenengine/BaseTween;->userData:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isAutoStartEnabled:Z

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isAutoRemoveEnabled:Z

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isPaused:Z

    return-void
.end method

.method public setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Laurelienribon/tweenengine/BaseTween;->callback:Laurelienribon/tweenengine/TweenCallback;

    const/16 v0, 0x8

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->callbackTriggers:I

    return-object p0
.end method

.method public setCallbackTriggers(I)Ljava/lang/Object;
    .locals 0

    iput p1, p0, Laurelienribon/tweenengine/BaseTween;->callbackTriggers:I

    return-object p0
.end method

.method public setUserData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Laurelienribon/tweenengine/BaseTween;->userData:Ljava/lang/Object;

    return-object p0
.end method

.method public start()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->build()Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    return-object p0
.end method

.method public start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/TweenManager;->add(Laurelienribon/tweenengine/BaseTween;)Laurelienribon/tweenengine/TweenManager;

    return-object p0
.end method

.method public update(F)V
    .locals 2

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isKilled:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    add-float/2addr v1, p1

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    invoke-direct {p0}, Laurelienribon/tweenengine/BaseTween;->initialize()V

    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isInitialized:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Laurelienribon/tweenengine/BaseTween;->testRelaunch()V

    invoke-direct {p0}, Laurelienribon/tweenengine/BaseTween;->updateStep()V

    invoke-direct {p0, v0}, Laurelienribon/tweenengine/BaseTween;->testInnerTransition(I)V

    invoke-direct {p0, v0}, Laurelienribon/tweenengine/BaseTween;->testLimitTransition(I)V

    invoke-direct {p0}, Laurelienribon/tweenengine/BaseTween;->testCompletion()V

    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Laurelienribon/tweenengine/BaseTween;->compute(IF)V

    goto :goto_0
.end method
