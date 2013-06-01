.class public Lcom/badlogic/gdx/input/GestureDetector;
.super Lcom/badlogic/gdx/InputAdapter;


# instance fields
.field private firstPointer:Lcom/badlogic/gdx/math/Vector2;

.field private gestureStartTime:J

.field private inTapSquare:Z

.field private initialFirstPointer:Lcom/badlogic/gdx/math/Vector2;

.field private initialSecondPointer:Lcom/badlogic/gdx/math/Vector2;

.field private lastTapTime:J

.field private final listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

.field private final longPressDuration:J

.field private longPressFired:Z

.field private maxFlingDelay:J

.field private panning:Z

.field private pinching:Z

.field private secondPointer:Lcom/badlogic/gdx/math/Vector2;

.field private tapCount:I

.field private final tapCountInterval:J

.field private tapSquareCenterX:I

.field private tapSquareCenterY:I

.field private final tapSquareSize:I

.field private final tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;


# direct methods
.method public constructor <init>(IFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V
    .locals 3

    const v2, 0x4e6e6b28

    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-direct {v0}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->firstPointer:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->secondPointer:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialFirstPointer:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialSecondPointer:Lcom/badlogic/gdx/math/Vector2;

    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareSize:I

    mul-float v0, p2, v2

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCountInterval:J

    mul-float v0, p3, v2

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressDuration:J

    mul-float v0, p4, v2

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->maxFlingDelay:J

    iput-object p5, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/input/GestureDetector$GestureListener;)V
    .locals 6

    const/16 v1, 0x14

    const v2, 0x3ecccccd

    const/high16 v3, 0x3fc0

    const v4, 0x3e19999a

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/input/GestureDetector;-><init>(IFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V

    return-void
.end method


# virtual methods
.method public isLongPressed()Z
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressDuration:J

    long-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/input/GestureDetector;->isLongPressed(F)Z

    move-result v0

    return v0
.end method

.method public isLongPressed(F)Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    sub-long/2addr v1, v3

    const v3, 0x4e6e6b28

    mul-float/2addr v3, p1

    float-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPanning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    return v0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    iput-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    iput-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    return-void
.end method

.method public touchDown(IIII)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-le p3, v4, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez p3, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->firstPointer:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-wide v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(IIJ)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/Input;->isTouched(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    iput-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialFirstPointer:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->firstPointer:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialSecondPointer:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->secondPointer:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->touchDown(III)Z

    move-result v0

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterX:I

    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterY:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->secondPointer:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    iput-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialFirstPointer:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->firstPointer:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialSecondPointer:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->secondPointer:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1
.end method

.method public touchDragged(III)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-le p3, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    if-eqz v2, :cond_4

    if-nez p3, :cond_3

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->firstPointer:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialFirstPointer:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialSecondPointer:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->firstPointer:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->secondPointer:Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialFirstPointer:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialSecondPointer:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->firstPointer:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->secondPointer:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->zoom(FF)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->secondPointer:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v3}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v3

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->update(IIJ)V

    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterX:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareSize:I

    if-ge v2, v3, :cond_5

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterY:I

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareSize:I

    if-lt v2, v3, :cond_6

    :cond_5
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    :cond_6
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    if-nez v2, :cond_7

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget v1, v1, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastX:I

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget v2, v2, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastY:I

    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget v3, v3, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaX:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget v4, v4, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaY:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->pan(IIII)Z

    move-result v0

    goto/16 :goto_0

    :cond_7
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressDuration:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->longPress(II)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public touchUp(IIII)Z
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-le p3, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    iget-boolean v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    iget-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    if-eqz v1, :cond_3

    move v1, v0

    :goto_1
    and-int/2addr v1, v3

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCountInterval:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapTime:J

    iput-wide v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterX:I

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterY:I

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->tap(III)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    if-eqz v1, :cond_6

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    iput-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    if-nez p3, :cond_5

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->secondPointer:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->secondPointer:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v3, v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v4}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(IIJ)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->firstPointer:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->firstPointer:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v3, v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v4}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(IIJ)V

    goto :goto_0

    :cond_6
    iput-wide v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-wide v3, v3, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    sub-long v3, v1, v3

    iget-wide v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->maxFlingDelay:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->update(IIJ)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v1}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getVelocityX()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v2}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getVelocityY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->fling(FF)Z

    move-result v0

    goto/16 :goto_0
.end method
